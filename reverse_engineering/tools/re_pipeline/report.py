from __future__ import annotations

import json
import re
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path
from typing import Any, Iterable

from .acquisition import ModuleArtifact
from .dts_context import generate_module_dts_context
from .util import safe_name, write_json, write_text


CAST_OFFSET_PATTERN = re.compile(
    r"\*\s*\(\s*(?P<type>[A-Za-z_][A-Za-z0-9_\s]{0,40}?)\s*\*\s*\)"
    r"\s*\([^;\n]{0,180}?\+\s*(?P<offset>0x[0-9a-fA-F]+|[1-9][0-9]*)\s*\)"
)

TYPE_WIDTHS = {
    "bool": 1,
    "byte": 1,
    "char": 1,
    "s8": 1,
    "u8": 1,
    "undefined1": 1,
    "short": 2,
    "s16": 2,
    "u16": 2,
    "ushort": 2,
    "undefined2": 2,
    "int": 4,
    "s32": 4,
    "u32": 4,
    "uint": 4,
    "undefined4": 4,
    "long": 8,
    "long long": 8,
    "s64": 8,
    "size_t": 8,
    "u64": 8,
    "ulong": 8,
    "undefined8": 8,
}


@dataclass(frozen=True)
class OffsetEvidence:
    offset: int
    width: int
    recovered_type: str
    function_file: str
    line: int
    expression: str
    confidence: str = "medium"

    def as_dict(self) -> dict[str, Any]:
        return {
            "offset": self.offset,
            "offset_hex": f"0x{self.offset:x}",
            "width": self.width,
            "recovered_type": self.recovered_type,
            "function_file": self.function_file,
            "line": self.line,
            "expression": self.expression,
            "confidence": self.confidence,
        }


def read_jsonl(path: Path) -> list[dict[str, Any]]:
    if not path.is_file():
        return []
    records: list[dict[str, Any]] = []
    for line_number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        if not line.strip():
            continue
        try:
            records.append(json.loads(line))
        except json.JSONDecodeError as error:
            raise RuntimeError(f"Invalid JSONL in {path}:{line_number}: {error}") from error
    return records


def parse_undefined_symbols(path: Path) -> set[str]:
    symbols: set[str] = set()
    if not path.is_file():
        return symbols
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        fields = line.split()
        if len(fields) >= 2 and "U" in fields[1:]:
            symbols.add(fields[0])
    return symbols


def parse_module_symvers(path: Path) -> dict[str, dict[str, str]]:
    output: dict[str, dict[str, str]] = {}
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        fields = line.rstrip("\n").split("\t")
        if len(fields) < 4:
            continue
        output[fields[1]] = {
            "crc": fields[0],
            "provider": fields[2],
            "export": fields[3],
            "namespace": fields[4].strip() if len(fields) >= 5 else "",
        }
    return output


def build_vendor_export_index(normalized_modules: Path) -> dict[str, list[str]]:
    providers: dict[str, list[str]] = defaultdict(list)
    for symbols_file in sorted(normalized_modules.glob("*/defined_symbols.txt")):
        provider = symbols_file.parent.name
        for line in symbols_file.read_text(encoding="utf-8", errors="replace").splitlines():
            fields = line.split()
            if not fields or not fields[0].startswith("__ksymtab_"):
                continue
            symbol = fields[0][len("__ksymtab_") :]
            if provider not in providers[symbol]:
                providers[symbol].append(provider)
    return dict(providers)


def recover_offset_evidence(decompiled_directory: Path) -> list[OffsetEvidence]:
    evidence: list[OffsetEvidence] = []
    if not decompiled_directory.is_dir():
        return evidence
    for source in sorted(decompiled_directory.glob("*.c")):
        for line_number, line in enumerate(
            source.read_text(encoding="utf-8", errors="replace").splitlines(), 1
        ):
            for match in CAST_OFFSET_PATTERN.finditer(line):
                recovered_type = " ".join(match.group("type").split()).lower()
                width = TYPE_WIDTHS.get(recovered_type, 1)
                offset = int(match.group("offset"), 0)
                if offset > 0x10000:
                    continue
                evidence.append(
                    OffsetEvidence(
                        offset=offset,
                        width=width,
                        recovered_type=recovered_type,
                        function_file=source.name,
                        line=line_number,
                        expression=line.strip()[:300],
                        confidence="medium" if recovered_type in TYPE_WIDTHS else "low",
                    )
                )
    unique: dict[tuple[int, int, str, str, int], OffsetEvidence] = {}
    for item in evidence:
        key = (item.offset, item.width, item.recovered_type, item.function_file, item.line)
        unique[key] = item
    return sorted(unique.values(), key=lambda item: (item.offset, item.function_file, item.line))


def _best_offsets(evidence: Iterable[OffsetEvidence]) -> dict[int, OffsetEvidence]:
    ranked: dict[int, OffsetEvidence] = {}
    for item in evidence:
        current = ranked.get(item.offset)
        if current is None or (item.confidence, item.width) > (current.confidence, current.width):
            ranked[item.offset] = item
    return ranked


def render_layout_header(module_name: str, evidence: list[OffsetEvidence]) -> str:
    stem = safe_name(Path(module_name).stem).lower()
    macro = re.sub(r"[^A-Z0-9]+", "_", stem.upper()).strip("_")
    guard = f"_{macro}_RECOVERED_LAYOUT_H"
    struct_name = f"{stem}_recovered_layout"
    offsets = _best_offsets(evidence)

    lines = [
        "/* SPDX-License-Identifier: GPL-2.0-only */",
        "/* Auto-generated evidence map. Validate every field against Ghidra and DTS before use. */",
        f"#ifndef {guard}",
        f"#define {guard}",
        "",
        "#include <linux/build_bug.h>",
        "#include <linux/stddef.h>",
        "#include <linux/types.h>",
        "",
    ]
    for offset in sorted(offsets):
        lines.append(f"#define {macro}_OFFSET_{offset:04X} 0x{offset:x}u")

    if not offsets:
        lines.extend(
            [
                "",
                "/* No dereference-safe member offsets were recovered automatically. */",
                f"struct {struct_name};",
                "",
                f"#endif /* {guard} */",
                "",
            ]
        )
        return "\n".join(lines)

    lines.extend(["", f"struct {struct_name} {{"])
    cursor = 0
    emitted: list[tuple[int, int]] = []
    for offset, item in sorted(offsets.items()):
        if offset < cursor:
            continue
        if offset > cursor:
            lines.append(f"\tu8 reserved_{cursor:04x}[0x{offset - cursor:x}];")
        lines.append(
            f"\tu8 field_{offset:04x}[0x{item.width:x}]; "
            f"/* Ghidra: {item.recovered_type}, confidence={item.confidence} */"
        )
        emitted.append((offset, item.width))
        cursor = offset + item.width

    aligned_size = (cursor + 7) & ~7
    if aligned_size > cursor:
        lines.append(f"\tu8 reserved_{cursor:04x}[0x{aligned_size - cursor:x}];")
    lines.append("} __aligned(8);")
    lines.append("")
    for offset, _ in emitted:
        lines.append(
            f"static_assert(offsetof(struct {struct_name}, field_{offset:04x}) == 0x{offset:x});"
        )
    lines.append(f"static_assert(sizeof(struct {struct_name}) == 0x{aligned_size:x});")
    lines.extend(["", f"#endif /* {guard} */", ""])
    return "\n".join(lines)


def _vendor_hooks(symbols: Iterable[str]) -> list[str]:
    prefixes = (
        "android_vh_",
        "android_rvh_",
        "trace_android_vh_",
        "trace_android_rvh_",
        "register_trace_android_",
        "unregister_trace_android_",
    )
    return sorted(symbol for symbol in symbols if symbol.startswith(prefixes))


def _json_relative(target: Path, base: Path) -> str:
    return target.relative_to(base).as_posix()


def generate_transition_document(
    run_root: Path,
    module: ModuleArtifact,
    symvers_path: Path,
    vendor_exports: dict[str, list[str]] | None = None,
) -> Path:
    export = run_root / "03_ghidra" / "exports" / module.name
    functions = read_jsonl(export / "functions.jsonl")
    calls = read_jsonl(export / "calls.jsonl")
    ghidra_externals = {
        item["name"] for item in read_jsonl(export / "externals.jsonl") if item.get("name")
    }
    static_root = run_root / "02_normalized" / "modules" / module.name
    undefined = parse_undefined_symbols(static_root / "undefined_symbols.txt") or ghidra_externals
    kmi = parse_module_symvers(symvers_path)
    evidence = recover_offset_evidence(export / "decompiled")
    dts_candidates = generate_module_dts_context(run_root, module)

    document_root = run_root / "04_documents" / module.name
    header_name = f"{safe_name(Path(module.name).stem).lower()}_recovered_layout.h"
    header_path = document_root / "include" / header_name
    header = render_layout_header(module.name, evidence)
    write_text(header_path, header)
    write_json(document_root / "offset_evidence.json", [item.as_dict() for item in evidence])

    kmi_rows: list[dict[str, str]] = []
    vendor_rows: list[dict[str, Any]] = []
    unresolved: list[str] = []
    vendor_exports = vendor_exports or {}
    required_namespaces = set(module.modinfo.get("import_ns", []))
    for symbol in sorted(undefined):
        record = kmi.get(symbol)
        if not record and symbol in vendor_exports:
            vendor_rows.append({"symbol": symbol, "providers": vendor_exports[symbol]})
            continue
        if not record:
            unresolved.append(symbol)
            continue
        if record["namespace"]:
            required_namespaces.add(record["namespace"])
        kmi_rows.append({"symbol": symbol, **record})
    write_json(
        document_root / "gki_symbol_audit.json",
        {
            "undefined_symbols": sorted(undefined),
            "matched_exports": kmi_rows,
            "matched_vendor_exports": vendor_rows,
            "not_found_in_local_module_symvers": unresolved,
            "required_namespaces": sorted(required_namespaces),
            "vendor_hooks": _vendor_hooks(undefined),
        },
    )

    calls_by_function: dict[str, list[str]] = defaultdict(list)
    for call in calls:
        caller = call.get("caller") or ""
        target = call.get("target") or ""
        if caller and target and target not in calls_by_function[caller]:
            calls_by_function[caller].append(target)

    offsets_by_function: dict[str, list[OffsetEvidence]] = defaultdict(list)
    for item in evidence:
        offsets_by_function[item.function_file].append(item)

    lines = [
        f"Módulo analisado: `{module.name}`  ",
        f"SHA-256: `{module.sha256}`  ",
        f"Origem: `{module.remote_path}`  ",
        "Status: documento gerado automaticamente a partir de ELF, Ghidra e referência local "
        "`Module.symvers`; inferências permanecem explicitamente marcadas.",
        "",
        "## 1. Mapeamento de Assinaturas (Conformidade GKI 6.12.23)",
        "",
        "**Assinaturas locais recuperadas pelo Ghidra**",
        "",
    ]
    if functions:
        for function in functions:
            status = "ok" if function.get("decompiled") else "falhou"
            lines.append(
                f"- `{function.get('entry')}` `{function.get('prototype')}` "
                f"(decompilação: {status})"
            )
    else:
        lines.append("- Nenhuma função local foi exportada; revisar o log do Ghidra.")

    lines.extend(["", "**Auditoria de símbolos GKI**", ""])
    lines.append(
        f"- Símbolos indefinidos no módulo: `{len(undefined)}`; encontrados no "
        f"`Module.symvers` local: `{len(kmi_rows)}`; fornecidos por módulos vendor com "
        f"`__ksymtab_*`: `{len(vendor_rows)}`; não resolvidos: `{len(unresolved)}`."
    )
    for row in kmi_rows:
        namespace = row["namespace"] or "global"
        lines.append(
            f"- `{row['symbol']}` -> `{row['export']}`, provedor `{row['provider']}`, "
            f"namespace `{namespace}`, CRC `{row['crc']}`."
        )
    for row in vendor_rows:
        providers = ", ".join(f"`{provider}`" for provider in row["providers"])
        lines.append(
            f"- `{row['symbol']}` -> export vendor comprovado em {providers}; declarar a "
            "dependência de módulo correspondente, sem tratar como símbolo GKI do `vmlinux`."
        )
    if unresolved:
        lines.append(
            "- Exigem revisão manual porque não aparecem na referência local: "
            + ", ".join(f"`{symbol}`" for symbol in unresolved)
            + "."
        )

    lines.extend(["", "**Vendor Hooks observados**", ""])
    hooks = _vendor_hooks(undefined)
    if hooks:
        lines.extend(f"- `{hook}`" for hook in hooks)
    else:
        lines.append(
            "- Nenhum Vendor Hook Android foi referenciado diretamente. Não adicionar hook por "
            "suposição; qualquer acesso reconstruído a membro privado do núcleo deve ser redesenhado "
            "sobre API exportada ou mapeado para um hook existente antes da implementação."
        )

    lines.extend(["", "**Imports de namespace necessários**", ""])
    if required_namespaces:
        lines.extend(f"- `MODULE_IMPORT_NS({namespace});`" for namespace in sorted(required_namespaces))
    else:
        lines.append("- Nenhum `MODULE_IMPORT_NS()` foi comprovado pelas evidências atuais.")

    lines.extend(
        [
            "",
            "**Regras de ABI e CFI**",
            "",
            "- Compilar como módulo out-of-tree para `vendor_dlkm`; não usar símbolos apenas presentes "
            "em `kallsyms` sem entrada exportada e compatível no `Module.symvers`/KMI.",
            "- Callbacks devem manter protótipos idênticos aos tipos do Kernel 6.12.23. É proibido "
            "silenciar incompatibilidade com cast de ponteiro de função, pois isso viola CFI.",
            "- O endereço e o protótipo do Ghidra são evidência de reconstrução, não substituem a "
            "declaração canônica dos headers do kernel.",
            "",
            "## 2. Estrutura de Dados Estrita e Offsets (Arquivos .h)",
            "",
            f"Cabeçalho gerado: `{_json_relative(header_path, run_root)}`.",
            "",
            "Os membros abaixo são mapas byte-a-byte para impedir padding implícito em AArch64. "
            "Campos de largura incerta permanecem `u8[]`; somente após confirmação no P-Code/DTS "
            "devem virar tipos funcionais. Sobreposições são preservadas como macros de offset e "
            "precisam ser modeladas como `union` manualmente.",
            "",
            "```c",
            header.rstrip(),
            "```",
            "",
        ]
    )
    if evidence:
        lines.append("Evidências de offset recuperadas:")
        lines.append("")
        for item in evidence:
            lines.append(
                f"- `0x{item.offset:x}` largura candidata `{item.width}` em "
                f"`{item.function_file}:{item.line}`; tipo Ghidra `{item.recovered_type}`, "
                f"confiança `{item.confidence}`."
            )
    else:
        lines.append(
            "Nenhum acesso com offset e largura simultaneamente recuperáveis foi detectado. O "
            "pipeline deixou a estrutura opaca para evitar fabricar layout."
        )

    lines.extend(["", "Contexto do Device Tree ativo:", ""])
    if dts_candidates:
        for candidate in dts_candidates[:25]:
            compatible = ", ".join(
                f"`{value}`" for value in candidate["compatible"]
            ) or "sem `compatible` direto"
            lines.append(
                f"- `{candidate['path']}` (linhas {candidate['start_line']}-"
                f"{candidate['end_line']}, score `{candidate['score']}`, compatible {compatible})."
            )
        lines.append(
            f"- Recortes completos: `04_documents/{module.name}/dts_context.dts`; "
            f"evidência estruturada: `04_documents/{module.name}/dts_context.json`."
        )
    else:
        lines.append(
            "- Nenhum nó específico foi associado automaticamente. Isso é esperado para módulos "
            "sem binding OF; não criar nó DTS por inferência."
        )

    lines.extend(
        [
            "",
            "Regras de concorrência: aplicar `__rcu` somente quando chamadas RCU e a vida útil do "
            "ponteiro forem comprovadas; derivar `mutex`, `spinlock_t` ou `raw_spinlock_t` das "
            "primitivas observadas e do contexto de execução. Validar todo callback indireto sob CFI "
            "e executar KASAN/KCSAN após cada bloco reconstruído.",
            "",
            "## 3. Prompts de Execução Isolada (Micro-Tarefas)",
            "",
        ]
    )

    if not functions:
        lines.append("Nenhuma micro-tarefa foi emitida porque não há funções recuperadas.")
    for index, function in enumerate(functions, 1):
        function_file = Path(function.get("decompiled_file", "")).name
        callees = calls_by_function.get(function.get("full_name", ""), [])
        function_offsets = offsets_by_function.get(function_file, [])
        callees_text = ", ".join(f"`{value}`" for value in callees[:30]) or "nenhuma comprovada"
        offsets_text = (
            ", ".join(f"`0x{item.offset:x}/{item.width}B`" for item in function_offsets)
            or "nenhum comprovado"
        )
        lines.extend(
            [
                f"{index}. Função `{function.get('full_name')}`",
                "",
                "> Implemente somente a função "
                f"`{function.get('prototype')}` para um módulo Android 16 GKI 6.12.23 "
                f"out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo "
                f"`03_ghidra/exports/{module.name}/{function.get('decompiled_file')}` e o P-Code "
                f"`03_ghidra/exports/{module.name}/{function.get('pcode_file')}`. Chamadas observadas: "
                f"{callees_text}. Offsets observados nesta função: {offsets_text}. Não implemente "
                "nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks "
                "ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca "
                "use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e "
                "retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça "
                "alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha "
                "locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas "
                "ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma "
                "lista curta das hipóteses ainda não comprovadas.",
                "",
            ]
        )

    document = document_root / "DOCUMENTO_TRANSICAO.md"
    write_text(document, "\n".join(lines).rstrip() + "\n")
    return document


def generate_document_index(run_root: Path, modules: list[ModuleArtifact]) -> Path:
    rows: list[str] = []
    function_total = 0
    for module in modules:
        export_manifest = json.loads(
            (run_root / "03_ghidra" / "exports" / module.name / "manifest.json")
            .read_text(encoding="utf-8")
        )
        audit = json.loads(
            (run_root / "04_documents" / module.name / "gki_symbol_audit.json")
            .read_text(encoding="utf-8")
        )
        offsets = json.loads(
            (run_root / "04_documents" / module.name / "offset_evidence.json")
            .read_text(encoding="utf-8")
        )
        dts_nodes = json.loads(
            (run_root / "04_documents" / module.name / "dts_context.json")
            .read_text(encoding="utf-8")
        )
        functions = int(export_manifest["function_count"])
        function_total += functions
        distinct_offsets = len({item["offset"] for item in offsets})
        rows.append(
            "| "
            f"[{module.name}]({module.name}/DOCUMENTO_TRANSICAO.md) | "
            f"{functions} | {len(audit['matched_exports'])} | "
            f"{len(audit.get('matched_vendor_exports', []))} | "
            f"{len(audit['not_found_in_local_module_symvers'])} | "
            f"{distinct_offsets} | {len(dts_nodes)} |"
        )

    content = [
        "# Índice de Engenharia Reversa NX809J",
        "",
        f"Módulos analisados: **{len(modules)}**. Funções locais exportadas pelo Ghidra: "
        f"**{function_total}**.",
        "",
        "| Módulo | Funções | GKI | Vendor | Não resolvidos | Offsets | Nós DTS |",
        "|---|---:|---:|---:|---:|---:|---:|",
        *rows,
        "",
        "`GKI` conta símbolos encontrados no `Module.symvers` do kernel local. `Vendor` conta "
        "símbolos comprovados por `__ksymtab_*` em módulos dependentes. Offsets são candidatos "
        "extraídos do pseudocódigo e exigem validação no P-Code antes do uso.",
        "",
    ]
    destination = run_root / "04_documents" / "INDEX.md"
    write_text(destination, "\n".join(content))
    return destination
