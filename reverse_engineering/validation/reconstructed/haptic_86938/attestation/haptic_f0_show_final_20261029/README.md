# `f0_show` — reconstrução candidata

A função permanece em `candidate_under_static_validation`. Os gates estáticos
passaram; a promoção aguarda revisão independente e evidências de runtime.

## Comportamento confirmado

A função bloqueia o mutex em `driver_data + 0x248`; chama o callback da tabela
em `driver_data + 0x520`, slot `+0x118`, com modo 0; chama o callback do slot
zero da tabela para atualizar `f0`; chama novamente o slot `+0x118` com modo
1; e então libera o mutex. Por fim, formata os campos em `driver_data - 0x48`
e `driver_data - 0x38` como `lra_f0 = %d cont_f0 = %d\n`.

## Gates estáticos

- Docker: duas compilações limpas reproduzíveis; SHA-256 do módulo candidato:
  `22707c4bd54a4476217bff374a2180f490f0d7b2f930b910d227d6b7050813d3`.
- Assembly e relocações: `PASS`, 57 instruções e 228 bytes, equivalentes ao
  stock.
- KCFI: `PASS`; preâmbulo da função `0xae84bcd4`; três callsites protegidos,
  com tipos na ordem `0xd37b6e95`, `0x512cf1f0`, `0xd37b6e95`.
- Ghidra: C normalizado, P-Code ordenado e tamanho do corpo: `PASS`.
- Joern scoped e slice: `PASS`.
- Identidade do módulo e mapa: `PASS`.
- Protocolo: `CORE_GATES_PASS`; `promotion_authorized=false`.

O relatório e os artefatos de Ghidra estão nesta pasta. A compilação usou a
árvore reconstruída e o workspace Docker em
`kernel-docker-workspace\engenharia`.
