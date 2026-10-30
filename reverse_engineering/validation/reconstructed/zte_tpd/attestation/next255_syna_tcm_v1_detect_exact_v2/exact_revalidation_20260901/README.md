# `syna_tcm_v1_detect` — offline exact revalidation

Esta pasta registra a revalidação de 2026-09-01 da microtarefa `255_syna_tcm_v1_detect`, contra a entrada stock `0011e914` e o corpo stock de 1236 bytes.

## Resultado

- Protocolo principal: `CORE_GATES_PASS`.
- Docker canônico: PASS em dois ciclos limpos com `nubia-sm8850-kernel-builder:latest`, `nubia_sm8850_kernel_toolchains` e `clang-r536225`.
- Assembly AArch64 com relocações: PASS; 309 instruções e 1236 bytes.
- KCFI: PASS; type ID stock/candidato `0x24cba334`, seção `.text` e tamanho iguais.
- Joern: grafo escopado e slice PASS.
- Ghidra: tamanho do corpo e forma das operações P-Code PASS, com 1026 registros. O export stock foi reparado para a fronteira ELF exata de 1236 bytes.
- C normalizado do Ghidra: a igualdade textual direta falha por dois rótulos/expressões de mensagem renderizados como chamadas na saída stock. O fallback explícito preserva os dois CALLs e exige igualdade de bytes, P-Code e gate independente de assembly.
- Harness host ASan/UBSan existente: PASS em nove casos e duas repetições. Ele é um contrato host com recursos simulados e não comprova integração Android ou hardware.

`promotion_decision.json` é a autoridade de escopo: o protocolo offline não autoriza promoção de hardware nem revisão independente. `PROMOTED_OFFLINE_EXACT` significa evidência exata no nível da função.

## Evidências

- `compile.json` / `canonical_build_report.json`: build Docker limpo e identidade do módulo.
- `assembly.json` / `aarch64_comparison.json`: comparação de opcodes e relocações.
- `kcfi.json` / `kcfi_comparison.json`: type ID, seção e tamanho KCFI.
- `test.json` / `host_harness_report.json`: harness direto com sanitizers.
- `joern.json`, `joern_gate_report.json`, `joern_gate_summary.json`, `joern_slices.json`: grafo e slice escopados.
- `ghidra_semantic_comparison.json`: C, P-Code, hashes e fallback explícito de rótulos externos.
- `hard_protocol_report.json`, `hard_protocol_plan.json`, `input_manifest.json` e `promotion_decision.json`: protocolo reproduzível e limite de promoção.
