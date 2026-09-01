# `gpio_keys_nubia` — Ghidra candidate review

Esta evidência foi gerada em 2026-09-01 usando o candidato Stage 5 compilado
no Docker `nubia-sm8850-kernel-builder:latest`, ciclo 2. O SHA-256 do módulo
é `95e2b7d8352c3039e154f56f32da8f45e3a513b3706d3ebcb2269886424f14cc`.

## Resultado

- Exportação Ghidra headless: PASS, linguagem `AARCH64:LE:64:v8A`, 24 funções.
- C normalizado diretamente igual após as normalizações estreitas: 21/24.
- Três funções permanecem com diferença de decompilação; `gpio_keys_store_disabled_keys`
  também tem divergência de tamanho/forma P-Code e permanece rejeitada.
- A comparação independente de assembly/KCFI/Docker/Joern/harness continua
  sendo obrigatória; este relatório não autoriza equivalência semântica ou
  validação de hardware.

Funções que exigem investigação adicional: `gpio_keys_probe`,
`gpio_keys_store_disabled_keys` e `gpio_keys_resume`.

Relatório completo: `ghidra_candidate_stage5_semantic_comparison.json`.
O driver permanece `PASS` no manifesto até revisão semântica independente.

## Vista opcional P-Code-authoritative

Com `--allow-pcode-authoritative-decompiler-fallback`, a comparação fica em
22/24: `gpio_keys_store_disabled_switches` é classificada como
`ghidra_unresolved_external_call_name_artifact`, enquanto
`gpio_keys_store_disabled_keys` continua rejeitada por divergência real de
bytes/forma P-Code. `gpio_keys_probe` e `gpio_keys_resume` continuam sem
fallback aceito. Esta vista não altera o resultado estrito nem autoriza
promoção ou validação de hardware.

Relatório do fallback: `ghidra_candidate_stage5_semantic_comparison_pcode_fallback.json`.
