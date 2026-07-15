#!/usr/bin/env python3
"""Audit which reverse-engineering observability methods the pinned kernel enables.

This is a static configuration audit. It never connects to a device and never
claims that a configured feature is reachable through Android policy at runtime.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import sys
from pathlib import Path
from typing import Any


SCHEMA_VERSION = "1.0"
DEFAULT_CONFIG = Path("reproducible_environment/inputs/nx809j_kernel.config")
DEFAULT_LOCK = Path("reproducible_environment/environment.lock.json")
DEFAULT_REPORT = Path(
    "reverse_engineering/validation/USERDEBUG_OBSERVABILITY_CAPABILITIES.json"
)
DEFAULT_MARKDOWN = Path(
    "reverse_engineering/validation/USERDEBUG_OBSERVABILITY_CAPABILITIES.md"
)

CAPABILITIES: tuple[dict[str, Any], ...] = (
    {
        "id": "runtime_config_identity",
        "name": "Identidade da configuracao em /proc/config.gz",
        "requirements": (("CONFIG_IKCONFIG", "y"), ("CONFIG_IKCONFIG_PROC", "y")),
        "use": "Comparar a configuracao em execucao com o snapshot fixado.",
        "runtime_gate": "O arquivo /proc/config.gz precisa existir e ser legivel.",
        "intrusiveness": "read_only",
    },
    {
        "id": "debugfs",
        "name": "debugfs",
        "requirements": (("CONFIG_DEBUG_FS", "y"),),
        "optional": ("CONFIG_DEBUG_FS_ALLOW_ALL",),
        "use": "Acessar interfaces de diagnostico disponibilizadas pelo kernel.",
        "runtime_gate": "debugfs precisa estar montado e permitido por SELinux.",
        "intrusiveness": "read_only_until_controls_are_written",
    },
    {
        "id": "trace_events",
        "name": "tracefs e tracepoints",
        "requirements": (("CONFIG_TRACING", "y"), ("CONFIG_TRACEPOINTS", "y")),
        "use": "Capturar eventos estaticos, latencia e sequencias de subsistemas.",
        "runtime_gate": "tracefs precisa estar montado e os eventos relevantes precisam existir.",
        "intrusiveness": "low",
    },
    {
        "id": "function_tracing",
        "name": "ftrace de funcoes/function graph",
        "requirements": (
            ("CONFIG_FTRACE", "y"),
            ("CONFIG_FUNCTION_TRACER", "y"),
            ("CONFIG_DYNAMIC_FTRACE", "y"),
        ),
        "use": "Comparar grafos temporais de chamadas entre stock e candidato.",
        "runtime_gate": "As funcoes precisam aparecer em available_filter_functions.",
        "intrusiveness": "medium",
    },
    {
        "id": "kprobe_events",
        "name": "Kprobes e kretprobes",
        "requirements": (
            ("CONFIG_KPROBES", "y"),
            ("CONFIG_KRETPROBES", "y"),
            ("CONFIG_KPROBE_EVENTS", "y"),
        ),
        "use": "Observar argumentos, retornos e ordem de chamadas em pontos selecionados.",
        "runtime_gate": "O simbolo nao pode estar em blacklist e deve ser resolvivel no kernel em execucao.",
        "intrusiveness": "medium",
    },
    {
        "id": "bpf_btf_tracing",
        "name": "BPF com BTF para tracing tipado",
        "requirements": (
            ("CONFIG_BPF", "y"),
            ("CONFIG_BPF_SYSCALL", "y"),
            ("CONFIG_BPF_JIT", "y"),
            ("CONFIG_BPF_EVENTS", "y"),
            ("CONFIG_DEBUG_INFO_BTF", "y"),
        ),
        "optional": ("CONFIG_DEBUG_INFO_BTF_MODULES", "CONFIG_BPF_JIT_ALWAYS_ON"),
        "use": "Construir probes tipados e comparar contratos observaveis com menor acoplamento a offsets.",
        "runtime_gate": "BPF LSM, SELinux, lockdown, token/capabilities e tipos BTF expostos ainda podem bloquear a carga.",
        "intrusiveness": "medium",
    },
    {
        "id": "module_btf",
        "name": "BTF de modulos",
        "requirements": (
            ("CONFIG_DEBUG_INFO_BTF", "y"),
            ("CONFIG_DEBUG_INFO_BTF_MODULES", "y"),
        ),
        "use": "Recuperar tipos preservados nos modulos que efetivamente contenham .BTF.",
        "runtime_gate": "Cada .ko deve ser inspecionado; a configuracao nao garante que o artefato stock reteve a secao.",
        "intrusiveness": "read_only",
    },
    {
        "id": "dynamic_debug",
        "name": "dynamic debug para pr_debug/dev_dbg",
        "requirements": (("CONFIG_DYNAMIC_DEBUG", "y"),),
        "optional": ("CONFIG_DYNAMIC_DEBUG_CORE",),
        "use": "Ativar callsites de debug ja compilados sem reconstruir o modulo.",
        "runtime_gate": "/proc/dynamic_debug/control precisa existir e conter os callsites desejados.",
        "intrusiveness": "low",
    },
    {
        "id": "perf_tracepoints",
        "name": "perf sobre tracepoints",
        "requirements": (("CONFIG_PERF_EVENTS", "y"), ("CONFIG_TRACEPOINTS", "y")),
        "use": "Medir frequencia, latencia e correlacao de eventos sem alterar o driver.",
        "runtime_gate": "perf_event_paranoid e SELinux precisam permitir a coleta.",
        "intrusiveness": "low",
    },
    {
        "id": "kallsyms",
        "name": "kallsyms completo",
        "requirements": (("CONFIG_KALLSYMS", "y"), ("CONFIG_KALLSYMS_ALL", "y")),
        "use": "Resolver enderecos e nomes para correlacao de traces e panics.",
        "runtime_gate": "kptr_restrict e as credenciais do processo controlam a visibilidade de enderecos.",
        "intrusiveness": "read_only",
    },
    {
        "id": "pstore_ramoops",
        "name": "pstore/ramoops",
        "requirements": (("CONFIG_PSTORE", "y"), ("CONFIG_PSTORE_RAM", "y")),
        "optional": ("CONFIG_PSTORE_CONSOLE", "CONFIG_PSTORE_PMSG"),
        "use": "Preservar Oops, panic e console atraves de reinicializacao.",
        "runtime_gate": "O Device Tree precisa reservar uma regiao ramoops e pstore precisa estar montado.",
        "intrusiveness": "read_only_for_collection",
    },
    {
        "id": "persistent_ftrace",
        "name": "ftrace persistente em ramoops",
        "requirements": (
            ("CONFIG_PSTORE", "y"),
            ("CONFIG_PSTORE_RAM", "y"),
            ("CONFIG_PSTORE_FTRACE", "y"),
            ("CONFIG_FUNCTION_TRACER", "y"),
        ),
        "use": "Preservar uma trilha de chamadas anterior a um hang ou reset.",
        "runtime_gate": "Requer regiao ramoops e configuracao de tracing persistente.",
        "intrusiveness": "medium",
    },
    {
        "id": "kasan_hw_tags",
        "name": "KASAN HW_TAGS",
        "requirements": (("CONFIG_KASAN", "y"), ("CONFIG_KASAN_HW_TAGS", "y")),
        "optional": ("CONFIG_KASAN_VMALLOC",),
        "use": "Detectar acessos fora de limites e use-after-free no AArch64 com MTE.",
        "runtime_gate": "O modo de boot, o hardware MTE e os parametros kasan precisam ativa-lo de fato.",
        "intrusiveness": "high",
    },
    {
        "id": "ubsan",
        "name": "UBSAN",
        "requirements": (("CONFIG_UBSAN", "y"),),
        "optional": ("CONFIG_UBSAN_BOUNDS", "CONFIG_UBSAN_TRAP"),
        "use": "Detectar comportamento indefinido instrumentado pelo compilador.",
        "runtime_gate": "Somente codigo compilado com a instrumentacao aplicavel e coberto pelo estimulo sera observado.",
        "intrusiveness": "medium",
    },
    {
        "id": "kunit",
        "name": "KUnit",
        "requirements": (("CONFIG_KUNIT", ("y", "m")),),
        "optional": ("CONFIG_KUNIT_DEBUGFS",),
        "use": "Executar testes atomicos de logica e contratos dentro do kernel.",
        "runtime_gate": "A suite reconstruida precisa compilar e o modulo KUnit precisa poder ser carregado.",
        "intrusiveness": "medium",
    },
    {
        "id": "kcov",
        "name": "KCOV para fuzzing guiado por cobertura",
        "requirements": (("CONFIG_KCOV", "y"),),
        "use": "Medir cobertura de interfaces durante fuzzing direcionado.",
        "runtime_gate": "debugfs e a interface alvo precisam estar disponiveis no ambiente isolado.",
        "intrusiveness": "high",
    },
    {
        "id": "lockdep",
        "name": "Lockdep/PROVE_LOCKING",
        "requirements": (("CONFIG_PROVE_LOCKING", "y"),),
        "use": "Detectar inversoes de lock e dependencias de travamento.",
        "runtime_gate": "O candidato e suas dependencias precisam executar os caminhos concorrentes relevantes.",
        "intrusiveness": "high",
    },
    {
        "id": "fault_injection",
        "name": "Infraestrutura de fault injection",
        "requirements": (("CONFIG_FAULT_INJECTION", "y"),),
        "use": "Forcar falhas de alocacao e retornos de erro para validar rollback.",
        "runtime_gate": "O ponto deve suportar a classe de falha e o teste deve rodar fora do aparelho de uso diario.",
        "intrusiveness": "high",
    },
    {
        "id": "kgdb",
        "name": "KGDB/KDB",
        "requirements": (("CONFIG_KGDB", "y"),),
        "use": "Depurar o kernel em nivel de registradores com transporte apropriado.",
        "runtime_gate": "Requer transporte, console e configuracao de boot compativeis.",
        "intrusiveness": "high",
    },
    {
        "id": "kcfi",
        "name": "KCFI estrito",
        "requirements": (("CONFIG_CFI_CLANG", "y"), ("CONFIG_CFI_PERMISSIVE", "n")),
        "use": "Forcar compatibilidade exata das assinaturas de callbacks indiretos.",
        "runtime_gate": "O candidato deve ser compilado com o mesmo contrato KCFI e type IDs compativeis.",
        "intrusiveness": "enforcement",
    },
    {
        "id": "module_signature_policy",
        "name": "Assinatura e politica vendor de modulos",
        "requirements": (("CONFIG_MODULE_SIG", "y"),),
        "optional": ("CONFIG_MODULE_SIG_FORCE", "CONFIG_MODULE_SIG_PROTECT"),
        "use": "Explicar rejeicoes de carga que root, isoladamente, nao remove.",
        "runtime_gate": "Verificar chaves aceitas, lista protegida, assinatura do .ko e logs do loader.",
        "intrusiveness": "enforcement",
    },
    {
        "id": "mmiotrace",
        "name": "mmiotrace generico",
        "requirements": (("CONFIG_MMIOTRACE", "y"),),
        "supported_arches": ("x86", "x86_64"),
        "use": "Rastrear acessos MMIO em arquiteturas suportadas.",
        "runtime_gate": "O mecanismo oficial nao oferece suporte a AArch64.",
        "intrusiveness": "unsupported_on_target",
    },
)


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def read_json(path: Path) -> dict[str, Any]:
    value = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(value, dict):
        raise ValueError(f"expected a JSON object: {path}")
    return value


def parse_kernel_config(path: Path) -> dict[str, str]:
    settings: dict[str, str] = {}
    assignment = re.compile(r"^(CONFIG_[A-Za-z0-9_]+)=(.*)$")
    disabled = re.compile(r"^# (CONFIG_[A-Za-z0-9_]+) is not set$")
    for line_number, raw_line in enumerate(
        path.read_text(encoding="utf-8").splitlines(), start=1
    ):
        match = assignment.match(raw_line)
        if match:
            settings[match.group(1)] = match.group(2)
            continue
        match = disabled.match(raw_line)
        if match:
            settings[match.group(1)] = "n"
            continue
        if raw_line.startswith("CONFIG_"):
            raise ValueError(f"unparsed config line {path}:{line_number}")
    return settings


def detect_architecture(settings: dict[str, str]) -> str:
    if settings.get("CONFIG_ARM64") == "y":
        return "arm64"
    if settings.get("CONFIG_X86_64") == "y":
        return "x86_64"
    if settings.get("CONFIG_X86") == "y":
        return "x86"
    return "unknown"


def accepted_values(value: str | tuple[str, ...]) -> tuple[str, ...]:
    return (value,) if isinstance(value, str) else value


def evaluate_capability(
    capability: dict[str, Any], settings: dict[str, str], architecture: str
) -> dict[str, Any]:
    configured: list[str] = []
    missing: list[str] = []
    observed: dict[str, str] = {}
    for name, expected in capability["requirements"]:
        actual = settings.get(name, "absent")
        observed[name] = actual
        if actual in accepted_values(expected):
            configured.append(name)
        else:
            missing.append(name)
    optional = {
        name: settings.get(name, "absent") for name in capability.get("optional", ())
    }
    supported_arches = capability.get("supported_arches")
    if supported_arches and architecture not in supported_arches:
        status = "UNSUPPORTED_ARCHITECTURE"
    elif not missing:
        status = (
            "CONFIGURED_AS_MODULE"
            if any(value == "m" for value in observed.values())
            else "CONFIGURED"
        )
    elif configured or any(value in ("y", "m") for value in optional.values()):
        status = "PARTIAL"
    else:
        status = "NOT_CONFIGURED"
    return {
        "configured_requirements": configured,
        "id": capability["id"],
        "intrusiveness": capability["intrusiveness"],
        "missing_requirements": missing,
        "name": capability["name"],
        "observed": observed,
        "optional": optional,
        "runtime_gate": capability["runtime_gate"],
        "status": status,
        "use": capability["use"],
    }


def build_report(repo: Path, config_path: Path, lock_path: Path) -> dict[str, Any]:
    settings = parse_kernel_config(config_path)
    lock = read_json(lock_path)
    architecture = detect_architecture(settings)
    config_sha256 = sha256_file(config_path)
    locked_config = lock.get("inputs", {}).get("kernel_config", {})
    locked_sha256 = locked_config.get("sha256")
    if config_sha256 != locked_sha256:
        raise ValueError("kernel config SHA-256 differs from environment.lock.json")
    capabilities = [
        evaluate_capability(item, settings, architecture) for item in CAPABILITIES
    ]
    counts = {
        status: sum(item["status"] == status for item in capabilities)
        for status in (
            "CONFIGURED",
            "CONFIGURED_AS_MODULE",
            "PARTIAL",
            "NOT_CONFIGURED",
            "UNSUPPORTED_ARCHITECTURE",
        )
    }
    return {
        "architecture": architecture,
        "capabilities": capabilities,
        "claims": {
            "device_accessed": False,
            "runtime_availability": "NOT_PROVEN",
            "static_config_support_only": True,
            "userdebug_policy_bypass": "NOT_ASSUMED",
        },
        "kernel_release": lock.get("device", {}).get("kernel_release"),
        "schema_version": SCHEMA_VERSION,
        "source": {
            "config_path": config_path.relative_to(repo).as_posix(),
            "config_sha256": config_sha256,
            "environment_lock_path": lock_path.relative_to(repo).as_posix(),
            "environment_lock_sha256": sha256_file(lock_path),
            "locked_config_sha256": locked_sha256,
        },
        "status": "PASS",
        "summary": counts,
    }


def json_bytes(value: Any) -> bytes:
    return (
        json.dumps(value, indent=2, ensure_ascii=True, sort_keys=True) + "\n"
    ).encode("utf-8")


def markdown_text(report: dict[str, Any]) -> str:
    source = report["source"]
    lines = [
        "# Capacidades de Observabilidade da ROM Userdebug",
        "",
        f"Estado da auditoria estatica: `{report['status']}`",
        "",
        f"Kernel: `{report['kernel_release']}`  ",
        f"Arquitetura: `{report['architecture']}`  ",
        f"Configuracao: `{source['config_path']}`  ",
        f"SHA-256: `{source['config_sha256']}`",
        "",
        "> Este relatorio prova apenas suporte na configuracao fixada. Ele nao acessa o",
        "> smartphone e nao prova que Android, SELinux, o boot atual ou a politica vendor",
        "> permitam usar o recurso em runtime.",
        "",
        "| Capacidade | Estado | Requisitos ausentes | Intrusividade |",
        "|---|---|---|---|",
    ]
    for item in report["capabilities"]:
        missing = ", ".join(f"`{name}`" for name in item["missing_requirements"]) or "-"
        lines.append(
            f"| {item['name']} | `{item['status']}` | {missing} | "
            f"`{item['intrusiveness']}` |"
        )
    lines.extend(("", "## Uso e gates de runtime", ""))
    for item in report["capabilities"]:
        lines.extend(
            (
                f"### {item['name']}",
                "",
                f"- Estado estatico: `{item['status']}`.",
                f"- Uso: {item['use']}",
                f"- Gate de runtime: {item['runtime_gate']}",
                "",
            )
        )
    lines.extend(
        (
            "## Leitura correta",
            "",
            "- `CONFIGURED` significa que os simbolos de configuracao exigidos estao ativos.",
            "- `CONFIGURED_AS_MODULE` significa que pelo menos um requisito esta em `m`.",
            "- `PARTIAL` significa que existe infraestrutura relacionada, mas falta requisito.",
            "- `NOT_CONFIGURED` impede essa tecnica no kernel fixado sem uma nova compilacao.",
            "- `UNSUPPORTED_ARCHITECTURE` impede o metodo no AArch64 mesmo que ele exista em Linux.",
            "",
            "Nenhum desses estados equivale a `HARDWARE_VALIDATED`.",
            "",
        )
    )
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--repo-root", type=Path, default=Path(__file__).resolve().parents[2]
    )
    parser.add_argument("--config", type=Path)
    parser.add_argument("--lock", type=Path)
    parser.add_argument("--output", type=Path)
    parser.add_argument("--markdown", type=Path)
    mode = parser.add_mutually_exclusive_group()
    mode.add_argument("--write", action="store_true")
    mode.add_argument("--check", action="store_true")
    return parser.parse_args()


def resolve_under_repo(repo: Path, value: Path | None, default: Path) -> Path:
    path = value or default
    if not path.is_absolute():
        path = repo / path
    return path.resolve()


def main() -> int:
    args = parse_args()
    repo = args.repo_root.resolve()
    try:
        config_path = resolve_under_repo(repo, args.config, DEFAULT_CONFIG)
        lock_path = resolve_under_repo(repo, args.lock, DEFAULT_LOCK)
        output_path = resolve_under_repo(repo, args.output, DEFAULT_REPORT)
        markdown_path = resolve_under_repo(repo, args.markdown, DEFAULT_MARKDOWN)
        report = build_report(repo, config_path, lock_path)
        expected_json = json_bytes(report)
        expected_markdown = markdown_text(report).encode("utf-8")
        if args.write:
            output_path.parent.mkdir(parents=True, exist_ok=True)
            markdown_path.parent.mkdir(parents=True, exist_ok=True)
            output_path.write_bytes(expected_json)
            markdown_path.write_bytes(expected_markdown)
        else:
            for path, expected in (
                (output_path, expected_json),
                (markdown_path, expected_markdown),
            ):
                if not path.is_file():
                    raise ValueError(f"missing generated report: {path}")
                if path.read_bytes() != expected:
                    raise ValueError(f"generated report is stale: {path}")
        print(
            json.dumps(
                {
                    "architecture": report["architecture"],
                    "status": report["status"],
                    "summary": report["summary"],
                },
                sort_keys=True,
            )
        )
        return 0
    except (OSError, UnicodeError, json.JSONDecodeError, ValueError) as error:
        print(f"observability audit failed: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
