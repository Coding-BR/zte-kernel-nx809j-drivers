# Residual S — protocolo difícil da `zte_tpd` — 2026-09-04

Esta é uma atestação versionada da execução não-promotora do job
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
| Ghidra/P-Code fresco do candidato | `NOT_EXECUTED` |
| Decisão de promoção | `NOT_AUTHORIZED` |
| Hardware | `DEFERRED` |

O candidato Docker foi o módulo curado `zte_tpd.ko`, SHA-256
`55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`, com
`6307336` bytes. A extração stock exigiu os offsets ELF `0x16864` para a
primeira ocorrência de `syna_tcm_testing_check_frame_data` e `0x16d0c` para a
primeira ocorrência de `syna_tcm_buf_alloc`; esses offsets permanecem no job.

Os relatórios desta pasta são cópias dos resultados finais da execução. Os
logs e artefatos temporários originais não são a única procedência: a fonte,
o módulo stock, o candidato curado, o Docker e o job são identificados pelos
hashes/manifests do repositório. A ausência da exportação Ghidra candidata
fresca impede fechar o núcleo e impede qualquer promoção.

`hard_protocol_report.json` é a autoridade da execução; `promotion_decision.json`
preserva a decisão negativa do runner. Esta atestação não prova equivalência
semântica, funcionamento em Android ou segurança para carregamento no NX809J.
