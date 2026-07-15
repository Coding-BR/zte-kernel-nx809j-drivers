#!/usr/bin/env python3
"""Generate strict per-function microtask plans from verified Ghidra exports."""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import re
from pathlib import Path, PurePosixPath
from typing import Any


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def find_run(engineering_root: Path) -> Path:
    candidates = sorted(
        (path for path in (engineering_root / "runs").glob("*") if path.is_dir()),
        key=lambda path: path.stat().st_mtime,
        reverse=True,
    )
    for candidate in candidates:
        if (candidate / "00_manifest" / "validation.json").is_file():
            return candidate
    raise ValueError("no completed engineering run was found")


def find_run_for_driver(engineering_root: Path, driver: str) -> Path:
    candidates = sorted(
        (path for path in (engineering_root / "runs").glob("*") if path.is_dir()),
        key=lambda path: path.stat().st_mtime,
        reverse=True,
    )
    for candidate in candidates:
        if not (candidate / "00_manifest" / "validation.json").is_file():
            continue
        stock = candidate / "01_acquisition" / "modules" / (driver + ".ko")
        functions = (
            candidate
            / "03_ghidra"
            / "exports"
            / (driver + ".ko")
            / "functions.jsonl"
        )
        if stock.is_file() and functions.is_file():
            return candidate
    raise ValueError(f"no completed engineering run contains stock + Ghidra for {driver}")


def read_json(path: Path) -> dict[str, Any]:
    value = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(value, dict):
        raise ValueError("expected a JSON object: " + str(path))
    return value


def read_functions(path: Path) -> list[dict[str, Any]]:
    functions = []
    for line_number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        if not line.strip():
            continue
        value = json.loads(line)
        if not isinstance(value, dict) or not isinstance(value.get("name"), str):
            raise ValueError("invalid function record at " + str(path) + ":" + str(line_number))
        functions.append(value)
    return functions


def classify(name: str) -> str:
    lowered = name.lower()
    if name in {"init_module", "cleanup_module"} or "init" in lowered or "exit" in lowered:
        return "lifecycle"
    if any(part in lowered for part in ("probe", "remove", "suspend", "resume")):
        return "binding"
    if any(part in lowered for part in ("open", "release", "read", "write", "ioctl", "show", "store")):
        return "user_abi"
    if any(part in lowered for part in ("irq", "work", "timer", "notifier")):
        return "async_or_irq"
    return "core_logic"


def task_id(index: int, name: str) -> str:
    normalized = re.sub(r"[^a-zA-Z0-9_]+", "_", name).strip("_").lower()
    return f"{index:03d}_{normalized}"


def function_id(name: str, entry: Any) -> str:
    return f"{name}@{entry}" if isinstance(entry, str) and entry else name


def load_mapping(path: Path) -> dict[str, dict[str, Any]]:
    if not path.is_file():
        return {}
    try:
        payload = read_json(path)
    except (OSError, ValueError, json.JSONDecodeError):
        return {}
    mappings = payload.get("mappings")
    if not isinstance(mappings, list):
        return {}
    by_identity: dict[str, dict[str, Any]] = {}
    name_counts: dict[str, int] = {}
    valid = [
        item
        for item in mappings
        if isinstance(item, dict) and isinstance(item.get("stock_function"), str)
    ]
    for item in valid:
        name = item["stock_function"]
        name_counts[name] = name_counts.get(name, 0) + 1
        by_identity[function_id(name, item.get("stock_entry"))] = item
    for item in valid:
        name = item["stock_function"]
        if name_counts[name] == 1:
            by_identity[name] = item
    return by_identity


def implementation_prompt(
    *,
    driver: str,
    name: str,
    entry: Any,
    body_bytes: Any,
    category: str,
    source_file: str,
    source_function: str,
    pseudocode: str,
    pcode: str,
) -> str:
    source_target = (
        source_file + ":" + source_function
        if source_file and source_function
        else "PENDENTE: crie e revise o mapeamento stock -> fonte antes de editar C"
    )
    return chr(10).join(
        [
            "Atue somente na microtarefa atomica abaixo; nao altere outras funcoes.",
            "Driver: " + driver,
            "Funcao stock: " + name,
            "Entrada Ghidra: " + str(entry),
            "Tamanho stock: " + str(body_bytes) + " bytes",
            "Categoria: " + category,
            "Alvo no fonte: " + source_target,
            "Pseudocodigo Ghidra: " + str(pseudocode),
            "P-Code Ghidra: " + str(pcode),
            "",
            "Regras obrigatorias:",
            "1. Leia o pseudocodigo e o P-Code completos e preserve assinatura, retornos, ordem de efeitos, offsets, constantes e chamadas comprovadas.",
            "2. O modulo e out-of-tree para Android 16 GKI 6.12.23/vendor_dlkm; nao acesse estruturas internas sem API exportada, namespace ou Vendor Hook documentado.",
            "3. Preserve KCFI/CFI: nao use casts de ponteiro de funcao para esconder incompatibilidades. Compare o type ID stock com o reconstruido.",
            "4. Trate erros estritamente com IS_ERR/PTR_ERR quando aplicavel e labels goto para cleanup em ordem inversa. Nao adicione alocacoes, locks ou helpers sem evidencia.",
            "5. Aplique KISS e DRY sem refatorar comportamento stock. Use pr_debug/dev_dbg apenas em ramos criticos para diagnostico KASAN, sem alterar a ABI observavel.",
            "6. Implemente testes de sucesso, cada falha observada, limites e teardown aplicaveis. Nao reutilize um PASS de outra funcao sem provar cobertura direta.",
            "",
            "Entregaveis obrigatorios para esta unica funcao:",
            "- patch restrito a funcao e aos stubs/testes indispensaveis;",
            "- relatorio de compilacao limpa e reproduzivel;",
            "- comparacao KCFI stock x candidato;",
            "- relatorio de teste com comando, saida, resultado e SHA-256;",
            "- bloqueadores remanescentes. Nao marque PASS por inspecao visual.",
        ]
    )


def render_markdown(payload: dict[str, Any]) -> str:
    lines = [
        "# Microtarefas Obrigatórias: " + payload["driver"],
        "",
        "Cada linha representa uma única função stock. Nenhuma função pode ser promovida sem mapeamento, compilação, KCFI e teste com hash verificável.",
        "",
        "| ID | Função stock | Entrada | Categoria | Fonte mapeada | Estado |",
        "|---|---|---|---|---|---|",
    ]
    for task in payload.get("tasks", []):
        source = task.get("source_file", "") + (":" + task.get("source_function", "") if task.get("source_function") else "")
        lines.append(
            "| "
            + task["id"]
            + " | "
            + task["stock_function"]
            + " | "
            + str(task.get("stock_entry", ""))
            + " | "
            + task["category"]
            + " | "
            + (source or "PENDENTE")
            + " | "
            + task["status"]
            + " |"
        )
    if payload.get("blocked"):
        lines.extend(["", "## Bloqueado", ""])
        lines.extend("- " + value for value in payload["blocked"])
    lines.extend(
        [
            "",
            "Para cada microtarefa, implemente ou valide somente a função indicada. Use o pseudocódigo e P-Code stock, preserve a ABI/KCFI e anexe evidência hashada de compile, KCFI e teste. Não marque PASS por inspeção visual.",
            "",
        ]
    )
    return chr(10).join(lines)


def render_prompts(payload: dict[str, Any]) -> str:
    lines = [
        "# Prompts Atomicos: " + payload["driver"],
        "",
        "Copie somente um prompt por vez. A microtarefa nao pode receber PASS sem evidencia hashada de compile, KCFI e teste.",
        "",
    ]
    for task in payload.get("tasks", []):
        lines.extend(
            [
                "## " + task["id"] + " - " + task["stock_function"],
                "",
                "```text",
                task["implementation_prompt"],
                "```",
                "",
            ]
        )
    if payload.get("blocked"):
        lines.extend(["## Bloqueado", ""])
        lines.extend("- " + value for value in payload["blocked"])
        lines.append("")
    return chr(10).join(lines)


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + chr(10), encoding="utf-8")


def make_blocked(driver: str, reason: str) -> dict[str, Any]:
    return {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": driver,
        "status": "BLOCKED",
        "blocked": [reason],
        "tasks": [],
    }


def generate_driver(driver: str, curated_root: Path, run_root: Path, evidence_root: Path) -> dict[str, Any]:
    driver_root = curated_root / driver
    stock = run_root / "01_acquisition" / "modules" / (driver + ".ko")
    export = run_root / "03_ghidra" / "exports" / (driver + ".ko")
    function_path = export / "functions.jsonl"
    output_json = driver_root / "MICROTASKS.json"
    output_md = driver_root / "MICROTASKS.md"
    output_prompts = driver_root / "MICROTASK_PROMPTS.md"

    if not stock.is_file() or not function_path.is_file():
        missing = []
        if not stock.is_file():
            missing.append("acquired stock module")
        if not function_path.is_file():
            missing.append("Ghidra functions export")
        payload = make_blocked(driver, "missing " + " and ".join(missing))
        write_json(output_json, payload)
        output_md.write_text(render_markdown(payload), encoding="utf-8")
        output_prompts.write_text(render_prompts(payload), encoding="utf-8")
        validation = {
            "schema_version": "1.0",
            "status": "INCOMPLETO",
            "driver": driver,
            "tests": [],
            "kcfi": [],
            "reports": [str(output_json)],
            "blockers": payload["blocked"],
        }
        write_json(evidence_root / driver / "microtask_validation.json", validation)
        return {"driver": driver, "status": "BLOCKED", "tasks": 0, "path": str(output_json)}

    stock_sha256 = sha256_file(stock)
    published_export = (
        PurePosixPath("reverse_engineering")
        / "validation"
        / "reconstructed"
        / driver
        / "offline_static"
        / "ghidra_stock"
    )
    previous_tasks: dict[str, dict[str, Any]] = {}
    if output_json.is_file():
        try:
            previous = read_json(output_json)
            if previous.get("stock", {}).get("sha256") == stock_sha256:
                previous_tasks = {
                    function_id(item.get("stock_function"), item.get("stock_entry")): item
                    for item in previous.get("tasks", [])
                    if isinstance(item, dict) and isinstance(item.get("stock_function"), str)
                }
        except (OSError, ValueError, json.JSONDecodeError):
            previous_tasks = {}

    mappings = load_mapping(driver_root / "reconstruction_map.json")
    tasks = []
    for index, function in enumerate(read_functions(function_path), 1):
        name = function["name"]
        identity = function_id(name, function.get("entry"))
        mapping = mappings.get(identity, mappings.get(name, {}))
        source_file = mapping.get("source_file", "") if mapping.get("status") == "reviewed" else ""
        source_function = mapping.get("source_function", "") if source_file else ""
        status = "READY_FOR_IMPLEMENTATION" if source_file else "WAITING_FOR_SOURCE_MAP"
        pseudocode_source = export / function.get("decompiled_file", "")
        pcode_source = export / function.get("pcode_file", "")
        if not pseudocode_source.is_file() or not pcode_source.is_file():
            raise ValueError(f"missing Ghidra function evidence for {identity}")
        pseudocode = (published_export / function.get("decompiled_file", "")).as_posix()
        pcode = (published_export / function.get("pcode_file", "")).as_posix()
        category = classify(name)
        task = {
                "id": task_id(index, name),
                "stock_function": name,
                "stock_entry": function.get("entry"),
                "stock_body_bytes": function.get("body_bytes"),
                "category": category,
                "source_file": source_file,
                "source_function": source_function,
                "ghidra_pseudocode": str(pseudocode),
                "ghidra_pcode": str(pcode),
                "required_evidence": ["compile", "kcfi", "test"],
                "implementation_prompt": implementation_prompt(
                    driver=driver,
                    name=name,
                    entry=function.get("entry"),
                    body_bytes=function.get("body_bytes"),
                    category=category,
                    source_file=source_file,
                    source_function=source_function,
                    pseudocode=pseudocode,
                    pcode=pcode,
                ),
                "status": status,
                "evidence": [],
            }
        previous_task = previous_tasks.get(identity, {})
        immutable_fields = (
            "stock_entry",
            "stock_body_bytes",
            "source_file",
            "source_function",
        )
        if (
            previous_task.get("status") == "PASS"
            and all(previous_task.get(field) == task.get(field) for field in immutable_fields)
        ):
            task["status"] = "PASS"
            task["evidence"] = previous_task.get("evidence", [])
            if previous_task.get("attestation"):
                task["attestation"] = previous_task["attestation"]
        tasks.append(task)
    payload = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "driver": driver,
        "status": "PASS" if tasks and all(task["status"] == "PASS" for task in tasks) else "INCOMPLETO",
        "stock": {
            "path": f"private_acquisition/{driver}.ko",
            "sha256": stock_sha256,
            "published": False,
        },
        "ghidra_export": published_export.as_posix(),
        "tasks": tasks,
    }
    write_json(output_json, payload)
    output_md.write_text(render_markdown(payload), encoding="utf-8")
    output_prompts.write_text(render_prompts(payload), encoding="utf-8")
    validation_path = evidence_root / driver / "microtask_validation.json"
    if not validation_path.exists():
        write_json(
            validation_path,
            {
                "schema_version": "1.0",
                "status": "INCOMPLETO",
                "driver": driver,
                "tests": [],
                "kcfi": [],
                "reports": [str(output_json)],
                "planned_tasks": len(tasks),
                "blockers": ["per-function evidence has not been verified"],
            },
        )
    return {
        "driver": driver,
        "status": payload["status"],
        "tasks": len(tasks),
        "mapped": sum(1 for task in tasks if task["source_file"]),
        "path": str(output_json),
    }


def parse_args() -> argparse.Namespace:
    engineering_root = Path(__file__).resolve().parents[1]
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--driver", action="append")
    parser.add_argument("--all", action="store_true")
    parser.add_argument("--include-zte-ir", action="store_true")
    parser.add_argument("--curated-root", type=Path, default=engineering_root / "curated")
    parser.add_argument("--run-root", type=Path)
    parser.add_argument("--evidence-root", type=Path, default=engineering_root / "validation")
    parser.add_argument("--summary", type=Path, default=engineering_root / "validation" / "ALL_DRIVERS_MICROTASKS.json")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    curated_root = args.curated_root.resolve()
    explicit_run = args.run_root.resolve() if args.run_root else None
    if args.all:
        drivers = sorted(
            path.name
            for path in curated_root.iterdir()
            if path.is_dir()
            and path.name.startswith(("zte_", "zlog_"))
            and (path / "STATUS.md").is_file()
        )
        if not args.include_zte_ir:
            drivers = [driver for driver in drivers if driver != "zte_ir"]
    elif args.driver:
        drivers = args.driver
    else:
        raise ValueError("choose --all or one or more --driver")
    run_roots: dict[str, str] = {}
    results = []
    for driver in drivers:
        run_root = explicit_run or find_run_for_driver(curated_root.parent, driver)
        run_roots[driver] = str(run_root)
        results.append(
            generate_driver(
                driver,
                curated_root,
                run_root,
                args.evidence_root.resolve(),
            )
        )
    if not args.all:
        print(
            json.dumps(
                {
                    "drivers_updated": [result["driver"] for result in results],
                    "tasks": sum(result["tasks"] for result in results),
                    "global_summary": "unchanged; use --all to regenerate it",
                },
                ensure_ascii=False,
            )
        )
        return 0
    if args.all and not args.include_zte_ir:
        baseline = curated_root / "zte_ir" / "MICROTASKS.json"
        if baseline.is_file():
            baseline_payload = read_json(baseline)
            baseline_tasks = baseline_payload.get("tasks", [])
            results.append(
                {
                    "driver": "zte_ir",
                    "status": "EXISTING_" + str(baseline_payload.get("status", "INCOMPLETO")),
                    "tasks": len(baseline_tasks),
                    "mapped": sum(1 for task in baseline_tasks if task.get("source_file")),
                    "path": str(baseline),
                }
            )
            results.sort(key=lambda result: result["driver"])
    summary = {
        "schema_version": "1.0",
        "generated_utc": dt.datetime.now(dt.timezone.utc).isoformat(),
        "run_root": str(explicit_run) if explicit_run else "per-driver-latest-evidence",
        "run_roots": run_roots,
        "drivers": results,
        "total_tasks": sum(result["tasks"] for result in results),
    }
    write_json(args.summary.resolve(), summary)
    lines = ["# Plano Global de Microtarefas", ""]
    lines.append("| Driver | Estado | Funções/microtarefas | Mapeadas |")
    lines.append("|---|---|---:|---:|")
    for result in results:
        lines.append(
            "| "
            + result["driver"]
            + " | "
            + result["status"]
            + " | "
            + str(result["tasks"])
            + " | "
            + str(result.get("mapped", 0))
            + " |"
        )
    lines.extend(["", "Total de microtarefas: " + str(summary["total_tasks"]), ""])
    args.summary.with_suffix(".md").write_text(chr(10).join(lines), encoding="utf-8")
    print(json.dumps({"summary": str(args.summary), "drivers": len(results), "tasks": summary["total_tasks"]}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
