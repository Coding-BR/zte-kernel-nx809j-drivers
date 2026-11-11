# Status de reconstrucao do `zte_sensor_sensitivity`

## Snapshot reconciliado e revalidação Docker — 2026-11-11

O snapshot curado foi sincronizado com a árvore versionada: 15 arquivos copiados (12 includes assembly e três documentos), zero removidos; a verificação posterior encontrou zero diferenças. A auditoria canônica passou para 21/21 funções Ghidra, rastreabilidade e revisão do mapa, imports/aliases, identidade do kernel e dois builds limpos reproduzíveis. Ambos produziram o candidato já declarado no mapa: SHA-256 `0a026041dc5dbff0d0ef21881398cdb2bd943b51b683d797a7c8b6eb80566d45` (245368 bytes). Runtime, layout de seções e modinfo coincidem; o status é `static_verified`. Não foi feita promoção adicional nem teste em hardware. Revisão independente e gates finais continuam pendentes; isso não declara equivalência comportamental total ou prontidão do dispositivo. Evidência: `reverse_engineering/validation/reconstructed/zte_sensor_sensitivity/attestation/source_snapshot_reconcile_20261111/`.

O driver concluiu os gates estaticos 0 a 7: stock rastreado, 21 funcoes reconstruidas e mapeadas, imports/aliases exatos, build reproduzivel, KCFI 18/18, comparacao Ghidra 21/21, harness comportamental reproduzivel e 21 microtarefas atestadas.

O candidato atual é `0a026041dc5dbff0d0ef21881398cdb2bd943b51b683d797a7c8b6eb80566d45` (245368 bytes), reproduzido por dois builds Docker limpos em 2026-11-11. O candidato anterior `5eb72ceeb4093627b3f3a720f90e1f71e2d3357c08e4daca8641576ae8efbffa` (245288 bytes) foi supersedido.

Nao e permitido declarar 100% concluido. Faltam revisao independente, validacao supervisionada no hardware e promocao final (gates 8 a 10).

- Stock: `1f1340bea19dddf3aa5d5b48028c47611f8a222f025b43dde883950573c64032`.
- Restricao: nao carregar ao lado do modulo stock nem executar `insmod`, unbind ou unload automaticamente.
- Rollback: testar apenas em kernel RAM descartavel, com logs continuos e reinicializacao de recuperacao disponivel.

Auditoria global 2026-11-02: `attestation/full_driver_audit_20261102_promoted/driver_audit.json` (`static_verified`); duas compilacoes iguais, paridade de assembly/relocations em 21/21 funcoes e KCFI em 20/20 funcoes instrumentadas.

Estado autoritativo: `engenharia/validation/zte_sensor_sensitivity/CYCLE_VALIDATION.md`.
