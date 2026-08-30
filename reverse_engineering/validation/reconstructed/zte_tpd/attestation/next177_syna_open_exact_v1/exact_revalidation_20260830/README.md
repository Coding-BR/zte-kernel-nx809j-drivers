# `syna_open` — offline-exact revalidation

Esta atestação registra a promoção da microtarefa `177_syna_open`, função stock `syna_open`, entrada `0x001148a0`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`; o módulo candidato reproduzível tem 6.307.336 bytes.
- Comparação AArch64: PASS; 15 instruções, símbolo de 60 bytes e 4 relocations de dados equivalentes entre stock e candidato.
- KCFI: PASS; stock e candidato apresentam o type ID `0x9829071d`, seção `.text` e tamanho de símbolo iguais.
- Joern: PASS em modo estrito para `syna_open@0x001148a0`, sem métodos ausentes, chamadas não resolvidas ou problemas de parsing.
- Teste direto: PASS; 2 casos em 2 ciclos Docker com ASan/UBSan, cobrindo inode nulo/não nulo, ajuste de `private_data`, retorno e contrato de `printk`.

## Limitações

Esta é uma validação offline/estática. O harness host usa um stub determinístico de `printk` e não substitui teste em Android/NX809J físico, VFS/concurrência real, inserção do módulo ou validação de integração.
