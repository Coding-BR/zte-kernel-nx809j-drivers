# `index_show` — reconstrução candidata

A função permanece em `candidate_under_static_validation`. Os gates estáticos
passaram; a promoção aguarda revisão independente e evidências de runtime.

## Comportamento confirmado

O callback lê `driver_data` em `dev + 0x98`, busca `get_wav_seq` na tabela em
`driver_data + 0x520`, slot `+0x120`, e chama-o com o contexto
`driver_data - 0xa8` e comprimento 1. Em seguida lê o primeiro byte de sequência em
`driver_data - 0x8a`, grava o índice de 32 bits em `driver_data - 0x64` e o
formata como `index = %d\n`.

## Gates estáticos

- Docker: duas compilações limpas reproduzíveis; SHA-256 do módulo candidato
  registrado no relatório.
- Assembly e relocações: `PASS`, 29 instruções e 116 bytes, equivalentes ao
  stock.
- KCFI: `PASS`; preâmbulo da função `0xae84bcd4`; chamada protegida no slot
  `+0x120`, tipo `0xd37b6e95`.
- Ghidra: C normalizado, P-Code ordenado e tamanho do corpo: `PASS`.
- Joern scoped e slice: `PASS`.
- Identidade do módulo e mapa: `PASS`.
- Protocolo: `CORE_GATES_PASS`; `promotion_authorized=false`.

O relatório e os artefatos de Ghidra estão nesta pasta. A compilação usou a
árvore reconstruída e o workspace Docker em
`kernel-docker-workspace\engenharia`.
