# Status de reconstrucao do `zte_sensor_sensitivity`

O driver concluiu os gates estaticos 0 a 7: stock rastreado, 21 funcoes reconstruidas e mapeadas, imports/aliases exatos, build reproduzivel, KCFI 18/18, comparacao Ghidra 21/21, harness comportamental reproduzivel e 21 microtarefas atestadas.

O `.ko` de SHA-256 `5eb72ceeb4093627b3f3a720f90e1f71e2d3357c08e4daca8641576ae8efbffa` (245288 bytes) passou a ser o candidato estatico versionado apos rebuild limpo e reproducivel, com identidade do kernel, KMI e vermagic validados.

Nao e permitido declarar 100% concluido. Faltam revisao independente, validacao supervisionada no hardware e promocao final (gates 8 a 10).

- Stock: `1f1340bea19dddf3aa5d5b48028c47611f8a222f025b43dde883950573c64032`.
- Restricao: nao carregar ao lado do modulo stock nem executar `insmod`, unbind ou unload automaticamente.
- Rollback: testar apenas em kernel RAM descartavel, com logs continuos e reinicializacao de recuperacao disponivel.

Auditoria global 2026-11-02: `attestation/full_driver_audit_20261102_promoted/driver_audit.json` (`static_verified`); duas compilacoes iguais, paridade de assembly/relocations em 21/21 funcoes e KCFI em 20/20 funcoes instrumentadas.

Estado autoritativo: `engenharia/validation/zte_sensor_sensitivity/CYCLE_VALIDATION.md`.
