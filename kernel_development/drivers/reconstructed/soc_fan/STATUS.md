# Status: `soc_fan`

Estado: **IN_PROGRESS — build e paridade estática aprovados; revisão semântica e runtime pendentes**.

| Gate | Estado | Evidência |
|---|---|---|
| Módulo OEM | PASS | SHA-256 `4da6fb10051f99abf84552f6f0dd7ef2dc21f331871ec9988ce2e922e0012793`; `reference_modules/full_vendor_boot/soc_fan.ko` |
| Ghidra stock | PASS | 15 funções com pseudocódigo, P-Code e assembly; `reverse_engineering/validation/reconstructed/soc_fan/offline_static/ghidra_stock/soc_fan.ko/` |
| Protocolo central R41 | PASS | 8/8 gates automáticos para 15 funções; `reverse_engineering/validation/reconstructed/soc_fan/attestation/soc_fan_data_tables_20261028_r41/hard_protocol_report.json` |
| Dados ELF R42 | PASS | seção `.data` de 448 bytes idêntica; 8 objetos e 19 relocations com offsets/alvos coincidentes; `reverse_engineering/validation/reconstructed/soc_fan/attestation/soc_fan_metadata_parity_20261028_r42/data_tables_comparison.json` |
| Build Docker R42 | PASS | dois builds limpos, ambos SHA-256 `828b4e6e2307fb28edfb6cbf4de451998fe85bf159eeaa2a2f4fdd5b0e34fd3a`; imagem `nubia-sm8850-kernel-builder:latest`, Clang `clang-r536225` |
| Metadados/ABI do módulo | PASS | aliases, namespace PWM, licença, tipo ELF e imports coincidem; vermagic corresponde ao kernel alvo. O candidato conserva os campos stock `built_with`, descrição e softdep |
| Artefato canônico | PASS | `soc_fan.ko`, SHA-256 `828b4e6e2307fb28edfb6cbf4de451998fe85bf159eeaa2a2f4fdd5b0e34fd3a`, 284296 bytes |
| Seções executáveis contra R41 | PASS | `.text`, `.data` e `.rodata` do candidato R42 são byte a byte iguais ao candidato R41 que passou os gates centrais |
| Mapa stock → fonte | INCOMPLETO | 15/15 nomes rastreados; revisão independente ainda não realizada. O mapa mantém `CORE_GATES_PASS_UNREVIEWED` e `semantic_equivalence: UNPROVEN` |
| Comparação semântica estrita | INCOMPLETO | comparação estrita de P-Code/C não passou; para `nb_fan_probe` foi necessário fallback assembly por limitação de largura de ponteiro do decompilador |
| Hardware NX809J | DEFERRED | nenhum teste em dispositivo foi executado; comportamento runtime permanece sem prova |

Auditoria geral R42: `incomplete_or_failed`, sem erros de build ou ABI; a única gate funcional pendente é a revisão independente das 15 entradas do mapa. Relatório: `reverse_engineering/validation/reconstructed/soc_fan/attestation/soc_fan_metadata_parity_20261028_r42/driver_audit.json`.

Este status não declara equivalência funcional completa nem validação de hardware. O próximo passo é revisão semântica independente do mapa e a resolução dos deltas que ela encontrar.
