# Status: `ftmmod`

Estado: **IN_PROGRESS — identidade de kernel e rebuild corrigidos; revisão independente dos nove mapeamentos pendente**.

| Gate | Estado | Evidência |
|---|---|---|
| Módulo OEM | PASS | SHA-256 `fe598a656ef1dbbcc48c78b0f9eb94ee1e6fe05c07f4e073f3e1c6470abbc4eb`; `reference_modules/full_vendor_boot/ftmmod.ko` |
| Ghidra stock | PASS | 9 funções com pseudocódigo C, P-Code e assembly; `reverse_engineering/validation/reconstructed/ftmmod/offline_static/ghidra_stock/ftmmod.ko/` |
| Contratos MP4–MP6 | PASS | revisão independente anterior aprovou MP4 L3, MP5 L4 e MP6 L3+L4; isso não aprova a tradução C |
| Identidade da fonte Docker | PASS | commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`, remoto esperado, kernelrelease alvo, SHA de `.config` e `Module.symvers`, imagem Docker e `localversion` verificados |
| Ferramentas Kbuild | PASS | Clang r536225 SHA-256 `69e6d00e8596eba85cbcf2cd87639fe3f8dbed397cba6d98a8c2def68a7a4044`; Rust 1.82.0 SHA-256 `ca6db735044d275ae381c743b72a757b7072a3c0c71bbfe47829b8c5948fb24c`; bindgen 0.69.5 fixado |
| Build independente | PASS | dois builds em árvores `O=` isoladas; SHA idêntico `dbfd12aa737e5ae4a3719e359b400cc555bf80bc9cb579fd3312a0a5ae21ca38` (208008 bytes) |
| Paridade do módulo | PASS | AArch64/REL, aliases, namespace, imports indefinidos e vermagic alvo conferem com as evidências |
| Binário curado | PASS | atualizado pelo gate `--promote-fresh`; SHA curado igual ao SHA reproduzido acima |
| Mapa stock → fonte | RASTREÁVEL; REVISÃO PENDENTE | 9/9 funções mapeadas, mas 0/9 marcadas com revisão independente |
| Harness de host | PASS, escopo limitado | dois builds determinísticos; 241 casos por execução, quatro execuções sem falha, 11 mutantes rejeitados, ASan/UBSan; harness x86_64 com stubs, sem validar AArch64/KCFI/hardware |
| Hardware NX809J | DEFERRED | nenhum teste no dispositivo; comportamento em runtime não provado |
| Auditoria atual | INCOMPLETE | `reverse_engineering/validation/reconstructed/ftmmod/attestation/static_audit_20261030_r8.json` |

## Causa corrigida

O volume Docker configurado anteriormente apontava para o commit `e1ea0289c329`, usava `.config` diferente e não produzia o `kernelrelease` alvo. A release pública do repositório [android_kernel_nubia_sm8850_qwjujube](https://github.com/Coding-BR/android_kernel_nubia_sm8850_qwjujube/releases/tag/local-build-20260711-003418-3356b35306d3) forneceu o commit, a configuração e a `Image` correspondentes ao NX809J.

A preparação também falhava porque o bindgen da imagem era 0.66.1, enquanto a configuração da release fixa 0.69.5. A versão 0.66.1 reescreveu `CONFIG_BINDGEN_VERSION_TEXT` e panicou com `InteriorNul`. O binário 0.69.5 foi instalado em volume auxiliar pinado e a configuração voltou a corresponder byte a byte ao hash alvo.

Por fim, o `modpost` precisa criar `.vmlinux.protected-exports.c`. O auditor montava a árvore-fonte read-only sem objeto externo. O fluxo corrigido conserva a fonte read-only e usa volumes `O=` separados, preparados com os mesmos headers, configuração e símbolos em cada ciclo.

## Evidências do ambiente

- Manifesto: `kernel_development/config/target_kernel.json`
- Verificação do `UTS_RELEASE` e SHA da `Image`: `reverse_engineering/validation/kernel_source/target_kernel_image_20261030.json`
- Preparação Docker: `reverse_engineering/validation/kernel_source/target_kernel_source_20261030.json`
- Auditoria mais recente: `reverse_engineering/validation/reconstructed/ftmmod/attestation/static_audit_20261030_r8.json`

Os nove mapeamentos ainda precisam de revisão independente antes de declarar o driver estaticamente concluído. Nenhum status de função foi promovido; o que foi atualizado é somente o binário curado, após os gates de build e paridade. Não declarar equivalência funcional completa sem a revisão e a validação de hardware.
