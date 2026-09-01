# `gpio_keys_nubia` — Ghidra candidate review

Esta evidência foi gerada em 2026-09-01 usando o candidato Stage 5 compilado
no Docker `nubia-sm8850-kernel-builder:latest`, ciclo 2. O SHA-256 do módulo
é `95e2b7d8352c3039e154f56f32da8f45e3a513b3706d3ebcb2269886424f14cc`.

## Resultado

- Exportação Ghidra headless: PASS, linguagem `AARCH64:LE:64:v8A`, 24 funções.
- C normalizado diretamente igual após as normalizações estreitas: 17/24.
- Sete funções têm somente diferença de decompilação com forma P-Code
  preservada; `gpio_keys_store_disabled_keys` também tem divergência de
  tamanho/forma P-Code e permanece rejeitada.
- A comparação independente de assembly/KCFI/Docker/Joern/harness continua
  sendo obrigatória; este relatório não autoriza equivalência semântica ou
  validação de hardware.

Funções que exigem investigação adicional: `gpio_keys_probe`,
`gpio_keys_attr_show_helper`, `gpio_keys_attr_store_helper`,
`gpio_keys_store_disabled_switches`, `gpio_keys_show_GamekeyStatus`,
`gpio_keys_store_GamekeyStatus` e `gpio_keys_resume`.

Relatório completo: `ghidra_candidate_stage5_semantic_comparison.json`.
O driver permanece `PASS` no manifesto até revisão semântica independente.
