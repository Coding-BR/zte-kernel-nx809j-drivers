#!/usr/bin/env python3
"""Generate bounded, hashable task packets for lower-capability LLMs.

The packet is a transport format for evidence and constraints. It is not an
equivalence attestation and it never changes microtask status.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import shutil
from pathlib import Path
from typing import Any, Iterable


SCHEMA_VERSION = "1"
BOUNDED_ROUTE = "BOUNDED_LLM_WITH_INDEPENDENT_REVIEW"
MICROPROOFS = [
    "MP0_IDENTITY",
    "MP1_CALL_SIGNATURE",
    "MP2_STATE_EFFECT_LEDGER",
    "MP3_CONTROL_ERROR_MATRIX",
    "MP4_TEST_ORACLE_DRAFT",
    "MP7_CANDIDATE_PATCH",
    "MP8_INDEPENDENT_REVIEW",
]


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha256_file(path: Path) -> str:
    return sha256_bytes(path.read_bytes())


def read_json(path: Path) -> Any:
    return json.loads(path.read_text(encoding="utf-8"))


def safe_repo_path(repo_root: Path, relative: str) -> Path:
    candidate = (repo_root / relative).resolve()
    root = repo_root.resolve()
    if candidate != root and root not in candidate.parents:
        raise ValueError(f"path escapes repository: {relative}")
    if not candidate.is_file():
        raise FileNotFoundError(candidate)
    return candidate


def relative_posix(path: Path, repo_root: Path) -> str:
    return path.resolve().relative_to(repo_root.resolve()).as_posix()


def selected_tasks(plan: dict[str, Any], task_ids: Iterable[str] | None) -> list[dict[str, Any]]:
    wanted = set(task_ids or [])
    tasks = []
    for task in plan["tasks"]:
        if task["routing"]["route"] != BOUNDED_ROUTE:
            continue
        if wanted and task["task_id"] not in wanted:
            continue
        tasks.append(task)
    if wanted:
        found = {task["task_id"] for task in tasks}
        missing = sorted(wanted - found)
        if missing:
            raise ValueError(
                "requested task is not a bounded candidate: " + ", ".join(missing)
            )
    return tasks


def prompt_for(task: dict[str, Any], evidence: list[dict[str, Any]]) -> str:
    name = task["stock_function"]
    task_id = task["task_id"]
    allowed = task["source"]["file"]
    evidence_lines = "\n".join(
        f"- `{item['packet_path']}` ({item['role']}, SHA-256 `{item['sha256']}`)"
        for item in evidence
    )
    return f"""# Tarefa L2: {task_id}

Voce e o implementador de uma microtarefa de reconstrucao do kernel Android
GKI. Trabalhe somente na funcao `{name}`. O pacote representa evidencia local
do NX809J; nao use internet, outro aparelho, outro driver ou intuicao para
preencher lacunas.

## Entrada autorizada

{evidence_lines}

O arquivo candidato atual esta em `candidate/{allowed}`. Ele pode conter uma
tentativa anterior nao atestada. Preserve qualquer comportamento ja provado e
proponha somente a menor alteracao necessaria.

## Limites obrigatorios

- Edite somente `candidate/{allowed}`.
- Nao altere headers, Makefile, ABI, nomes exportados, outras funcoes,
  configuracao, testes ou arquivos de atestacao.
- Nao invente structs, offsets, tipos, erros, locks ou chamadas que nao estejam
  sustentados pelo P-Code, Assembly ou pseudocodigo.
- Nao declare equivalencia, PASS ou funcionamento no smartphone.
- Se houver qualquer contradicao, pare e devolva `BLOCKED` com a evidencia e o
  endereco/localizador correspondente.
- Mantenha cleanup, tratamento de ponteiros nulos e limites exatamente conforme
  a evidencia observada. Nao introduza alocacao, loop ou log novo sem prova.

## Entrega

Produza apenas:

1. um patch unificado para `candidate/{allowed}`;
2. uma copia preenchida de `SUBMISSION_TEMPLATE.json`, salva como
   `submission.json`, com `task_id`, hashes dos tres artefatos de evidencia,
   hash do arquivo candidato final, lista de alteracoes e status
   `PATCH_PROPOSED`, `MP_ONLY` ou `BLOCKED`;
3. uma tabela curta ligando cada decisao a um arquivo e localizador de
   evidencia.

O patch ainda precisara de revisão independente L3 e dos gates de build, KCFI,
Joern, harness, Assembly e atestacao. Sua resposta nao pode promover a tarefa.
"""


def contract_for(task: dict[str, Any]) -> str:
    metrics = task["observed_metrics"]
    risk = task["risk"]
    routing = task["routing"]
    return f"""# Contrato de trabalho: {task['task_id']}

- Funcao stock: `{task['stock_function']}@{task['stock_entry']}`
- Arquivo candidato permitido: `{task['source']['file']}`
- Corpo stock: `{task['stock_body_bytes']}` bytes
- Risco de roteamento: `{risk['band']}` / score `{risk['score']}`
- Rota: `{routing['route']}`
- Implementador minimo: `{routing['minimum_implementer_level']}`
- Revisor minimo: `{routing['minimum_reviewer_level']}`

## Superficie observada

- Chamadas diretas: `{metrics['direct_call_count']}`
- Chamadas indiretas: `{metrics['pcode']['indirect_calls']}`
- Branches condicionais: `{metrics['pcode']['conditional_branches']}`
- Loads: `{metrics['pcode']['loads']}`
- Stores: `{metrics['pcode']['stores']}`
- Retornos no pseudocodigo: `{metrics['decompiled']['return_count']}`
- Offsets candidatos: `{', '.join(str(x) for x in metrics['decompiled']['offset_candidates']) or 'none'}`

## Ordem de prova

1. MP0: identidade e hashes.
2. MP1: chamadas, assinatura e retorno.
3. MP2: loads/stores, limites e efeitos.
4. MP3: branches, erros e cleanup.
5. MP4: oracle de testes host-only.
6. MP7: patch mínimo, somente após MP0-MP4 aprovadas.
7. MP8: revisão por agente diferente; qualquer divergência bloqueia.

Este contrato orienta a tarefa; nao substitui a evidencia nem concede PASS.
"""


def submission_template_for(task: dict[str, Any], evidence: list[dict[str, Any]]) -> str:
    template = {
        "schema_version": SCHEMA_VERSION,
        "task_id": task["task_id"],
        "status": "BLOCKED|MP_ONLY|PATCH_PROPOSED",
        "implementer": {"agent": "", "model": "", "run_id": ""},
        "evidence_sha256": {item["role"]: item["sha256"] for item in evidence},
        "microproofs": {
            proof: {
                "status": "PENDING",
                "claims": [],
                "evidence_locators": [],
                "contradictions": [],
            }
            for proof in MICROPROOFS
        },
        "changed_files": [],
        "patch_sha256": None,
        "blocked_reason": None,
    }
    return json.dumps(template, indent=2, ensure_ascii=False) + "\n"


def build_packet(
    repo_root: Path,
    plan_path: Path,
    task: dict[str, Any],
    output_root: Path,
    driver: str = "zte_tpd",
) -> dict[str, Any]:
    packet_root = output_root / task["task_id"]
    evidence_root = packet_root / "evidence"
    candidate_root = packet_root / "candidate"
    evidence_root.mkdir(parents=True, exist_ok=True)
    candidate_root.mkdir(parents=True, exist_ok=True)

    source_rel = f"kernel_development/drivers/reconstructed/{driver}/{task['source']['file']}"
    source_path = safe_repo_path(repo_root, source_rel)
    candidate_rel = Path(source_rel).as_posix()
    candidate_path = candidate_root / source_path.name
    shutil.copyfile(source_path, candidate_path)

    evidence_items: list[dict[str, Any]] = []
    roles = (
        ("decompiled_c", "decompiled.c"),
        ("pcode", "pcode.jsonl"),
        ("assembly", "assembly.asm"),
    )
    for role, output_name in roles:
        source = safe_repo_path(repo_root, task["evidence_capsule"][role]["path"])
        target = evidence_root / output_name
        shutil.copyfile(source, target)
        evidence_items.append(
            {
                "role": role,
                "source_path": relative_posix(source, repo_root),
                "packet_path": f"evidence/{output_name}",
                "sha256": sha256_file(target),
                "size": target.stat().st_size,
            }
        )

    plan_hash = sha256_file(plan_path)
    manifest = {
        "schema_version": SCHEMA_VERSION,
        "kind": "llm_small_task_packet",
        "task_id": task["task_id"],
        "driver": "zte_tpd",
        "plan_sha256": plan_hash,
        "stock_function": task["stock_function"],
        "stock_entry": task["stock_entry"],
        "stock_body_bytes": task["stock_body_bytes"],
        "status": task["status"],
        "route": task["routing"]["route"],
        "minimum_implementer_level": task["routing"]["minimum_implementer_level"],
        "minimum_reviewer_level": task["routing"]["minimum_reviewer_level"],
        "allowed_edit_paths": [f"candidate/{source_path.name}"],
        "prohibited_edit_paths": [
            "evidence/**",
            "TASK.json",
            "CONTRACT.md",
            "PROMPT.md",
            "submission.json",
            "../../**",
        ],
        "microproof_order": MICROPROOFS,
        "candidate": {
            "packet_path": f"candidate/{source_path.name}",
            "source_path": candidate_rel,
            "sha256": sha256_file(candidate_path),
            "size": candidate_path.stat().st_size,
        },
        "evidence": evidence_items,
    }
    (packet_root / "TASK.json").write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False) + "\n", encoding="utf-8"
    )
    (packet_root / "CONTRACT.md").write_text(contract_for(task), encoding="utf-8")
    (packet_root / "PROMPT.md").write_text(prompt_for(task, evidence_items), encoding="utf-8")
    (packet_root / "SUBMISSION_TEMPLATE.json").write_text(
        submission_template_for(task, evidence_items), encoding="utf-8"
    )
    return manifest


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo-root", type=Path, default=Path("."))
    parser.add_argument("--plan", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--task-id", action="append", dest="task_ids")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    repo_root = args.repo_root.resolve()
    plan_path = safe_repo_path(repo_root, args.plan.as_posix())
    output_root = (repo_root / args.output).resolve()
    if repo_root not in output_root.parents:
        raise SystemExit("output must stay inside repo-root")
    plan = read_json(plan_path)
    tasks = selected_tasks(plan, args.task_ids)
    if not tasks:
        raise SystemExit("no bounded tasks selected")
    manifests = [
        build_packet(repo_root, plan_path, task, output_root, driver=plan["driver"])
        for task in tasks
    ]
    index = {
        "schema_version": SCHEMA_VERSION,
        "kind": "llm_small_task_packet_index",
        "plan_sha256": sha256_file(plan_path),
        "task_count": len(manifests),
        "tasks": [
            {
                "task_id": item["task_id"],
                "path": item["task_id"],
                "task_sha256": sha256_file(output_root / item["task_id"] / "TASK.json"),
            }
            for item in manifests
        ],
    }
    (output_root / "INDEX.json").write_text(
        json.dumps(index, indent=2, ensure_ascii=False) + "\n", encoding="utf-8"
    )
    print(json.dumps(index, indent=2, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
