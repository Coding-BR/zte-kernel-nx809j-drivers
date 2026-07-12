# Status de reconstrucao do `zte_sensor_sensitivity`

O driver concluiu os gates estaticos 0 a 7: stock rastreado, 21 funcoes reconstruidas e mapeadas, imports/aliases exatos, build reproduzivel, KCFI 18/18, comparacao Ghidra 21/21, harness comportamental reproduzivel e 21 microtarefas atestadas.

O `.ko` de SHA-256 `f3dddeecac42f78adaa2dffa58f4030c1e53ba161f0649bb14c01afaa0a6871e` foi promovido somente como candidato estatico validado em `curated`.

Nao e permitido declarar 100% concluido. Faltam revisao independente, validacao supervisionada no hardware e promocao final (gates 8 a 10).

- Stock: `1f1340bea19dddf3aa5d5b48028c47611f8a222f025b43dde883950573c64032`.
- Restricao: nao carregar ao lado do modulo stock nem executar `insmod`, unbind ou unload automaticamente.
- Rollback: testar apenas em kernel RAM descartavel, com logs continuos e reinicializacao de recuperacao disponivel.

Estado autoritativo: `engenharia/validation/zte_sensor_sensitivity/CYCLE_VALIDATION.md`.
