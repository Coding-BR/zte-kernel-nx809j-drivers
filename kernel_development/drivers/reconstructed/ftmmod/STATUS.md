# Status: `ftmmod`

Estado: **IN_PROGRESS — fonte Docker incompatível com o kernel alvo; revisão independente do candidato pendente**.

| Gate | Estado | Evidência |
|---|---|---|
| Módulo OEM | PASS | SHA-256 `fe598a656ef1dbbcc48c78b0f9eb94ee1e6fe05c07f4e073f3e1c6470abbc4eb`; `reference_modules/full_vendor_boot/ftmmod.ko` |
| Ghidra stock | PASS | 9 funções com pseudocódigo C, P-Code e assembly; `reverse_engineering/validation/reconstructed/ftmmod/offline_static/ghidra_stock/ftmmod.ko/` |
| Contratos MP4–MP6 | PASS | revisão independente Hubble R4 aprovou MP4 L3, MP5 L4 e MP6 L3+L4; não é aprovação semântica do candidato |
| Protocolo central R1 (28/10) | HISTÓRICO | 8/8 gates automatizados para 9 funções; o relatório não preservou hash da configuração Docker usada e não basta para provar a base atual |
| Host harness R2 | PASS | dois builds determinísticos; 241 casos por execução, quatro execuções sem falha, 11 mutantes rejeitados, ASan/UBSan. São stubs x86_64, não exercitam instruções AArch64, KCFI ou hardware |
| Docker atual | BLOCKED | commit `e1ea0289c329`; `make kernelrelease` = `6.12.23-4k`; `.config` SHA-256 não corresponde ao manifesto do NX809J |
| Build independente atual | PASS / PARIDADE FAIL | dois builds limpos são idênticos entre si (`1c59c7dbc07a4166eea55117f6660961c14c307db36c0f655e3c8fa6be4081e8`), mas diferem do candidato guardado (`6e5eb9147bf3061779d0f3059cd8efad291b3a859e7f7689a8e52134df0079de`) e geram `vermagic` `6.12.23-4k`, incompatível com o alvo |
| Mapa stock → fonte | RASTREÁVEL; REVISÃO PENDENTE | 9/9 funções têm identidade e fonte; nenhuma das nove entradas tem aprovação independente do mapeamento |
| Auditoria atual | INCOMPLETE | `reverse_engineering/validation/reconstructed/ftmmod/attestation/static_audit_20261030_r3/driver_audit.json`; `SOURCE_INPUT_MISMATCH` em `docker_source_diagnosis_20261030.json` |
| Hardware NX809J | DEFERRED | nenhum teste no dispositivo; segurança e comportamento em runtime não provados |

O volume Docker configurado atualmente não representa a identidade de kernel do manifesto: o `.config` montado tem SHA-256 `2ac6f9259bf4d82a2c8944ea0e0f7c562c7be563cec070174109182f59fd2825`, enquanto o manifesto registra `b3ca00186d0849f409e760297023cd3b198202656f216f5726704c05fa944288`. O `Module.symvers` coincide, mas isso não prova a configuração nem o `vermagic` do alvo. Não force `LOCALVERSION` para contornar a divergência.

Os dois runners mantêm `promotion_authorized: false`; nenhum status de microtarefa foi promovido. A promoção exige recuperar a fonte e configuração corretas do kernel alvo, reproduzir a integração no Docker, concluir a revisão independente do candidato e os gates de estado/lifetime, tipos KMI e testes adicionais. Hardware NX809J segue pendente. Não declarar equivalência funcional completa.
