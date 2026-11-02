# `lra_resistance_show` — reconstrução candidata

A função permanece em `candidate_under_static_validation`. Os gates estáticos
passaram; a promoção continua desautorizada enquanto faltarem revisão
independente e evidências de runtime.

## Comportamento confirmado

O callback lê `driver_data` em `dev + 0x98`, busca a função no slot `+0x78` da
tabela em `driver_data + 0x520`, chama-a com o contexto `driver_data - 0xa8`,
depois lê o valor de `driver_data - 0x44` e imprime `lra_resistance = %d\n`.
O tipo KCFI do callback corresponde a `0x847a0830`.

## Gates estáticos

- Docker: duas compilações limpas reproduzíveis; SHA-256 do módulo candidato:
  `588f446adfae8c9a2de6cbf74370a8d936930ff09cae51daebe799f31187eaba`.
- Assembly e relocações: `PASS`, 27 instruções e 108 bytes, equivalentes ao
  stock.
- KCFI: `PASS`; preâmbulo da função `0xae84bcd4`; chamada protegida no slot
  `+0x78`, tipo `0x847a0830`.
- Ghidra: C normalizado, P-Code ordenado e tamanho do corpo: `PASS`.
- Joern scoped e slice: `PASS`.
- Identidade do módulo e mapa: `PASS`.
- Protocolo: `CORE_GATES_PASS`; `promotion_authorized=false`.

O relatório e os artefatos de Ghidra estão nesta pasta. A compilação utilizou a
árvore reconstruída e o workspace Docker em
`kernel-docker-workspace\engenharia`.
