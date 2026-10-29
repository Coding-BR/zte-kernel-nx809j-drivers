# `cali_show` — reconstrução candidata

A função permanece em `candidate_under_static_validation`. Os gates estáticos
passaram; a promoção aguarda revisão independente e evidências de runtime.

## Comportamento confirmado

A função bloqueia o mutex em `driver_data + 0x248`, chama o callback da tabela
em `driver_data + 0x520`, slot `+0x118`, com modo 1 e o contexto
`driver_data - 0xa8`; depois chama o callback do slot zero da mesma tabela com
esse contexto. Mantém o mutex durante as duas chamadas, libera-o e formata os
campos em `driver_data - 0x48` e `driver_data - 0x38` como
`lra_f0 = %d cont_f0 = %d\n`.

## Gates estáticos

- Docker: duas compilações limpas reproduzíveis; SHA-256 do módulo candidato:
  `241275e5c54a7a1f2ce5ba7d0e266300a292f2af07b0eadda775857634561e34`.
- Assembly e relocações: `PASS`, 46 instruções e 184 bytes, equivalentes ao
  stock.
- KCFI: `PASS`; preâmbulo da função `0xae84bcd4`; os dois callsites protegidos
  correspondem em quantidade e tipos (`0xd37b6e95`, `0x512cf1f0`).
- Ghidra: C normalizado, P-Code ordenado e tamanho do corpo: `PASS`.
- Joern scoped e slice: `PASS`.
- Identidade do módulo e mapa: `PASS`.
- Protocolo: `CORE_GATES_PASS`; `promotion_authorized=false`.

O relatório e os artefatos de Ghidra estão nesta pasta. A compilação usou a
árvore reconstruída e o workspace Docker em
`kernel-docker-workspace\engenharia`.
