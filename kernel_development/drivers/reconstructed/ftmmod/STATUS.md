# Status: `ftmmod`

Estado: **IN_PROGRESS — build e harness aprovados; revisão do candidato e gates de runtime pendentes**.

| Gate | Estado | Evidência |
|---|---|---|
| Módulo OEM | PASS | SHA-256 `fe598a656ef1dbbcc48c78b0f9eb94ee1e6fe05c07f4e073f3e1c6470abbc4eb`; `reference_modules/full_vendor_boot/ftmmod.ko` |
| Ghidra stock | PASS | 9 funções com pseudocódigo C, P-Code e assembly; `reverse_engineering/validation/reconstructed/ftmmod/offline_static/ghidra_stock/ftmmod.ko/` |
| Contratos MP4–MP6 | PASS | revisão independente Hubble R4 aprovou MP4 L3, MP5 L4 e MP6 L3+L4; não é aprovação semântica do candidato |
| Protocolo central R1 | PASS | 8/8 gates automatizados para 9 funções; SHA-256 do candidato `6e5eb9147bf3061779d0f3059cd8efad291b3a859e7f7689a8e52134df0079de` |
| Host harness R2 | PASS | dois builds determinísticos; 241 casos por execução, quatro execuções sem falha, 11 mutantes rejeitados, ASan/UBSan. São stubs x86_64, não exercitam instruções AArch64, KCFI ou hardware |
| Integração ELF/modinfo | PASS | dois builds Docker byte-idênticos; metadados, dependências, imports e ABI coincidem; vermagic aceito pelo kernel alvo |
| Artefato candidato | PASS | `kernel_development/drivers/reconstructed/ftmmod/ftmmod.ko`, SHA-256 `6e5eb9147bf3061779d0f3059cd8efad291b3a859e7f7689a8e52134df0079de`, 208552 bytes |
| Mapa stock → fonte | INCOMPLETO | 9/9 identidades rastreadas; revisão independente do candidato ainda pendente |
| Auditoria de integração | INCOMPLETO | sem erro de build/ABI; 9 entradas aguardam revisão independente. Relatório `reverse_engineering/validation/reconstructed/ftmmod/attestation/static_integration_20261028_r2/driver_audit.json` |
| Hardware NX809J | DEFERRED | nenhum teste no dispositivo; segurança e comportamento em runtime não provados |

Os dois runners mantêm `promotion_authorized: false`; nenhum status de microtarefa foi promovido. Os gates restantes incluem análise semântica independente do candidato, prova de estado/lifetime, tipos KMI, fuzz/mutation adicionais e validação controlada de hardware. Não declarar equivalência funcional completa.
