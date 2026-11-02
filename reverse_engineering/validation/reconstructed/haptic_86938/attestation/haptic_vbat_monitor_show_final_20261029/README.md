# `vbat_monitor_show` — reconstrução candidata

A função permanece em `candidate_under_static_validation`. Os gates estáticos
passaram; a promoção aguarda revisão independente e evidências de runtime.

## Comportamento confirmado

A função obtém `driver_data` em `dev + 0x98`, bloqueia o mutex em
`driver_data + 0x248`, chama o callback do slot `+0x40` da tabela em
`driver_data + 0x520` com o contexto `driver_data - 0xa8`, lê o valor de
`driver_data - 0x40`, formata `vbat_monitor = %d\n` e então libera o mutex.

## Gates estáticos

- Docker: duas compilações limpas reproduzíveis; SHA-256 do módulo candidato:
  `88e0362376cbdf1b247247be6c5bac0036280d4db814a3271b2e4f289f311015`.
- Assembly e relocações: `PASS`, 35 instruções e 140 bytes, equivalentes ao
  stock.
- KCFI: `PASS`; preâmbulo da função `0xae84bcd4`; chamada protegida no slot
  `+0x40`, tipo `0x847a0830`.
- Ghidra: C normalizado, P-Code ordenado e tamanho do corpo: `PASS`.
- Joern scoped e slice: `PASS`.
- Identidade do módulo e mapa: `PASS`.
- Protocolo: `CORE_GATES_PASS`; `promotion_authorized=false`.

O relatório e os artefatos de Ghidra estão nesta pasta. A compilação usou a
árvore reconstruída e o workspace Docker em
`kernel-docker-workspace\engenharia`.
