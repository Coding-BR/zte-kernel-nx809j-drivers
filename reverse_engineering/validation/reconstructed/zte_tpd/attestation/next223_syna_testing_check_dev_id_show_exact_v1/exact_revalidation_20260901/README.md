# `syna_testing_check_dev_id_show` — offline exact revalidation

Esta pasta registra a revalidação de 2026-09-01 da microtarefa
`223_syna_testing_check_dev_id_show`, contra a entrada stock `0011bf08` e o
corpo stock de 744 bytes.

## Resultado

- Protocolo principal: `CORE_GATES_PASS`.
- Docker canônico: PASS em dois ciclos limpos com
  `nubia-sm8850-kernel-builder:latest`, `nubia_sm8850_kernel_toolchains` e
  `clang-r536225`; os dois módulos produziram SHA-256
  `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- Assembly AArch64 com relocações: PASS; 186 instruções e 744 bytes.
- KCFI: PASS; type ID stock/candidato `0x4e31a072`, seção `.text` e tamanho
  iguais.
- Joern: grafo escopado e slice PASS.
- Ghidra: corpo de 744 bytes e forma de operações P-Code PASS, com 619
  registros. A comparação C normalizada direta falha porque um import do
  Ghidra sintetiza retornos antecipados nos ramos de limpeza compartilhada;
  o fallback explícito exige sequência de chamadas idêntica, corpo e forma
  P-Code exatos, além da comparação independente de assembly.
- Harness host ASan/UBSan existente: PASS em sete casos e duas repetições.
  Ele é um contrato host com recursos simulados e não comprova integração
  Android ou hardware.

`promotion_decision.json` é a autoridade de escopo: o protocolo offline não
autoriza promoção de hardware nem revisão independente. `PROMOTED_OFFLINE_EXACT`
significa evidência exata no nível da função.

## Evidências

- `compile.json` / `canonical_build_report.json`: build Docker limpo e
  identidade do módulo.
- `assembly.json` / `aarch64_comparison.json`: comparação de opcodes e
  relocações.
- `kcfi.json` / `kcfi_comparison.json`: type ID, seção e tamanho KCFI.
- `test.json` / `host_harness_report.json`: harness direto com sanitizers.
- `joern.json`, `joern_gate_report.json`, `joern_gate_summary.json`,
  `joern_slices.json`: grafo e slice escopados.
- `ghidra_semantic_comparison.json`: C, P-Code, hashes e fallback explícito
  de reestruturação CFG.
- `hard_protocol_report.json`, `hard_protocol_plan.json`, `input_manifest.json`
  e `promotion_decision.json`: protocolo reproduzível e limite de promoção.
