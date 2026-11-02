# `cont_show` — correção da assinatura do callback

O candidato permanece em `candidate_under_static_validation`. O protocolo
estático passou; a promoção continua desautorizada até revisão independente e
as evidências de runtime definidas para este alvo.

## Causa e correção

A primeira versão declarou o callback do slot `driver_data + 0x520 + 0x10`
como `void (*)(struct aw_haptic *)`. O stock exige KCFI `0x512cf1f0`; essa
assinatura produziu `0x847a0830`, fazendo divergir o guard, as instruções e o C
normalizado do Ghidra. O callback foi corrigido para retornar `int`, conforme
o tipo KCFI observado no stock. O slot, o argumento `driver_data - 0xa8`, a
leitura em `driver_data - 0x38` e a string `cont_f0 = %d\n` ficaram iguais.

## Gates estáticos

- Docker: duas compilações reproduzíveis passaram; SHA-256 do módulo candidato:
  `138264ee0b1b1f1198ac360232fbd32c3ce667619beaf10a10cbd48aa11111a8`.
- Assembly e relocações: `PASS`, 27 instruções e 108 bytes, equivalentes ao
  stock.
- KCFI: `PASS`; preâmbulo da função `0xae84bcd4`; chamada indireta protegida,
  slot `+0x10`, tipo `0x512cf1f0`.
- Ghidra: C normalizado, P-Code ordenado e tamanho do corpo: `PASS`.
- Joern scoped e slice: `PASS`.
- Identidade do módulo, mapa e entradas: `PASS`.
- Protocolo: `CORE_GATES_PASS`; `promotion_authorized=false`.

O relatório e os artefatos reproduzíveis estão nesta pasta. O módulo candidato
foi compilado a partir da árvore reconstruída usando o workspace Docker em
`kernel-docker-workspace\engenharia`.
