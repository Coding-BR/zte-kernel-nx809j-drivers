# Transição — rdbg

## Estado

A reconstrução permanece **INCOMPLETE**. O mapa contém oito funções stock associadas às fontes C; `init_module@00101638` também passou os oito gates automatizados do protocolo, incluindo comparação de assembly/relocações, Ghidra C/P-Code, KCFI, Joern, identidade das entradas e builds reproduzíveis.

## Fonte e rebuild NX809J

A fonte Docker agora está fixada ao repositório `android_kernel_nubia_sm8850_qwjujube`, commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`. A identidade passou para o `.config`, `Module.symvers`, `localversion`, kernelrelease alvo, imagem Docker, Clang r536225, Rust 1.82.0 e bindgen 0.69.5.

Dois builds limpos em árvores `O=` isoladas produziram o mesmo módulo: SHA-256 `7b8ec475c9e72c1c016ee66cf9058b3db2425828e158f27738173e563abbae70`, 781720 bytes. A arquitetura AArch64/REL, a vermagic do kernel alvo, aliases, namespaces e símbolos indefinidos passaram a paridade. A vermagic gravada no stock é `6.12.23-maybe-dirty-4k`; o auditor validou o candidato pela identidade verificada do kernel alvo, cuja vermagic é `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`.

O candidato reproduzido foi promovido para `kernel_development/drivers/reconstructed/rdbg/rdbg.ko`. Auditoria: `reverse_engineering/validation/reconstructed/rdbg/attestation/kernel_identity_reaudit_20261030_r2/static_audit_20261030_r2.json`.

O snapshot `engenharia/curated/rdbg` foi sincronizado com a árvore versionada por hash: 16 arquivos de origem, duas atualizações documentais e nenhuma remoção. Dois builds Docker independentes desse snapshot também produziram o SHA `7b8ec475c9e72c1c016ee66cf9058b3db2425828e158f27738173e563abbae70`; o binário verificado foi copiado para `engenharia/curated/rdbg/rdbg.ko`. A sincronização final e o rebuild do snapshot são registrados em `curated_source_sync_final_20261030.json` e `curated_snapshot_rebuild_20261030_final.json`.

## Pendências

A auditoria permanece incompleta porque os oito mapeamentos ainda precisam de revisão independente. Também faltam evidência final do harness de host e lifetime, revisão semântica completa e validação em hardware. Não declarar equivalência funcional total nem carregar este candidato no aparelho.
