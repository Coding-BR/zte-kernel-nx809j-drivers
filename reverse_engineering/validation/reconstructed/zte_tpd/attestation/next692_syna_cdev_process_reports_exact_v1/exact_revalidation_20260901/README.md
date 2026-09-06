# `syna_cdev_process_reports` — offline exact revalidation

Esta pasta registra a revalidação de 2026-09-01 da microtarefa `195_syna_cdev_process_reports`, contra a entrada stock `00117c90` e o corpo stock de 1616 bytes.

## Resultado

- Protocolo principal: `CORE_GATES_PASS`.
- Docker canônico: PASS em dois ciclos limpos com `nubia-sm8850-kernel-builder:latest`, volume `nubia_sm8850_kernel_toolchains` e `clang-r536225`.
- Assembly AArch64 com relocações: PASS; 404 instruções e corpo de 1616 bytes.
- KCFI: PASS; type ID stock/candidato `0x9f93c40a`, seção `.text` e tamanho iguais.
- Joern: grafo escopado e slice PASS.
- Ghidra: tamanho do corpo e forma das operações P-Code PASS. A exportação stock foi reparada para a fronteira ELF exata de 1616 bytes.
- C normalizado do Ghidra: a igualdade textual direta falha e permanece registrada como diagnóstico. A diferença é uma reestruturação de CFG entre caminhos `goto` de limpeza compartilhada e retornos antecipados duplicados; o fallback explícito exige igualdade de bytes, P-Code e gate independente de assembly.
- Harness host ASan/UBSan existente: PASS em cinco casos e duas repetições. Ele cobre contratos isolados com recursos simulados; não comprova integração Android, VFS ou hardware Synaptics.

`promotion_decision.json` é a autoridade de escopo: o protocolo offline não autoriza promoção de hardware nem revisão independente. `PROMOTED_OFFLINE_EXACT` significa evidência exata no nível da função.

## Evidências

- `compile.json` / `canonical_build_report.json`: build Docker limpo e identidade do módulo.
- `assembly.json` / `aarch64_comparison.json`: comparação de opcodes e relocações.
- `kcfi.json` / `kcfi_comparison.json`: type ID, seção e tamanho KCFI.
- `test.json` / `host_harness_report.json`: harness direto com sanitizers.
- `joern.json`, `joern_gate_report.json`, `joern_gate_summary.json`, `joern_slices.json`: grafo e slice escopados.
- `ghidra_semantic_comparison.json`: C, P-Code, hashes e fallback explícito de reestruturação de CFG.
- `hard_protocol_report.json`, `hard_protocol_plan.json`, `input_manifest.json` e `promotion_decision.json`: protocolo reproduzível e limite de promoção.
