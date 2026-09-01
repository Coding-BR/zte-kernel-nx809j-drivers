# `nubia_hw_version` — Ghidra candidate review

Esta evidência foi gerada em 2026-09-01 usando o módulo candidato produzido
no Docker `nubia-sm8850-kernel-builder:latest`, ciclo 2 do rebuild Stage 4S.
O SHA-256 do módulo candidato é
`7d978e520c3401716073b35d8dda561439c5d00473f9a8cd2d7062c69d2c8963`.

## Resultado

- Exportação Ghidra headless: PASS, linguagem `AARCH64:LE:64:v8A`, 19 funções.
- Comparação P-Code: 19/19 com forma de operações e contagem de corpo
  compatíveis.
- C normalizado diretamente igual após normalizações estreitas: 15/19.
- Quatro funções permanecem com diferença de decompilação:
  `nubia_get_hw_id`, `nubia_get_hw_pcb_version`, `nubia_hw_ver_probe` e
  `nubia_charge_version_show`.

As normalizações aceitas cobrem somente rótulos de controle relocados
(`code_r0x...`/`joined_r0x...`), a forma de endereço de
`hardware_ver_driver` e bindings de dados opt-in. Estes últimos só são
aceitos quando a seção (`.bss`, `.data` ou `.rodata`) tem o mesmo tamanho nos
dois exports e o deslocamento relativo coincide; layouts diferentes são
rejeitados para evitar colisões de objetos. As diferenças restantes incluem
aliases de símbolos em tabelas `.rodata` e uma fronteira de função emitida
pelo decompilador. A comparação AArch64/relocações independente
continua sendo obrigatória; este relatório não transforma uma diferença de C
em equivalência semântica e não autoriza validação de hardware.

Relatório completo: `ghidra_candidate_stage4s_semantic_comparison.json`.
O driver permanece `PASS` no manifesto até revisão semântica independente.
