# `syna_sysfs_create_dir` — offline-exact revalidation

Esta atestação registra a promoção da microtarefa `209_syna_sysfs_create_dir`, função stock `syna_sysfs_create_dir`, entrada `0x0011a440`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`; o módulo candidato reproduzível tem 6.307.336 bytes.
- Comparação AArch64: PASS; 53 instruções, símbolo de 212 bytes e 18 relocations de dados equivalentes entre stock e candidato.
- KCFI: PASS; stock e candidato apresentam o type ID `0x720adbbe`, seção `.text` e tamanho de símbolo iguais.
- Joern: PASS em modo estrito para `syna_sysfs_create_dir@0x0011a440`, sem métodos ausentes, chamadas não resolvidas ou problemas de parsing.
- Teste direto: PASS; 5 casos em 2 ciclos Docker com ASan/UBSan, cobrindo criação bem-sucedida e os três caminhos de erro com cleanup.

## Limitações

Esta é uma validação offline/estática. O harness host usa stubs determinísticos de kobject, sysfs, testing directory e `printk`; não substitui teste em Android/NX809J físico, VFS/sysfs real, concorrência, energia ou inserção do módulo.
