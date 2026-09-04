# Residual S — protocolo difícil da `zte_tpd` — 2026-09-04

Esta é uma atestação versionada da execução não-promotora v7 do job
`workspace_tools/reconstruction_pipeline/hard_driver_job.zte_tpd_residual_S.json`.
O alvo foi mantido em cinco identidades `stock_function@stock_entry`:

- `syna_cdev_process_reports@00117c90`;
- `syna_spi_alloc_mem@0011a0e4`;
- `syna_testing_check_dev_id_show@0011bf08`;
- `syna_tcm_testing_check_frame_data@0011d0ec`;
- `syna_tcm_buf_alloc@0011d594`.

## Resultado

| Gate | Resultado |
|---|---|
| Identidade de entrada | `PASS` |
| Mapa de funções | `PASS` |
| Joern estrito | `PASS` |
| Joern slice `usages` | `PASS` |
| KCFI | `PASS` — 5/5 |
| Assembly/relocações | `PASS` — 5/5 |
| Docker reproduzível | `PASS` — 2/2 |
| Ghidra/P-Code fresco do candidato | `PASS` — 5/5, com fronteira ELF reparada |
| Decisão de promoção | `NOT_AUTHORIZED` |
| Hardware | `DEFERRED` |

O candidato Docker foi o módulo curado `zte_tpd.ko`, SHA-256
`55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`, com
`6307336` bytes. A extração stock exigiu os offsets ELF `0x16864` para a
primeira ocorrência de `syna_tcm_testing_check_frame_data` e `0x16d0c` para a
primeira ocorrência de `syna_tcm_buf_alloc`; esses offsets permanecem no job.

O Ghidra stock e candidato foram reimportados com
`ExtendGhidraFunctionBodies.java`, que estende apenas os cinco corpos até os
tamanhos ELF já confirmados pelo Assembly e remove funções internas que
estavam sobrepostas. Os corpos e o P-Code operation shape ficaram iguais em
5/5. O texto C normalizado permaneceu diferente por reestruturação CFG do
decompilador; o job aceita isso somente porque as cinco funções estão
declaradas `assembly_only`, o fallback é explícito e Assembly/relocations é
um gate independente obrigatório.

Os relatórios desta pasta são cópias dos resultados finais da execução v7. A
fonte, o módulo stock, o candidato curado, o Docker, Joern, Java, Ghidra e o
job são identificados pelos hashes/manifests e comandos registrados.

`hard_protocol_report.json` é a autoridade da execução; `promotion_decision.json`
preserva a decisão negativa do runner. O core automatizado passou integralmente,
mas esta atestação não prova funcionamento em Android, comportamento físico do
hardware ou segurança para carregamento no NX809J.
