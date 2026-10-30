# `syna_spi_hw_reset` — offline-exact revalidation

Esta atestação registra a promoção da microtarefa `197_syna_spi_hw_reset`, função stock `syna_spi_hw_reset`, entrada `0x00118384`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`; o módulo candidato reproduzível tem 6.307.336 bytes.
- Comparação AArch64: PASS; 36 instruções, símbolo de 144 bytes e 4 relocations de dados equivalentes entre stock e candidato.
- KCFI: PASS; stock e candidato apresentam o type ID `0x2b3cba1b`, seção `.text` e tamanho de símbolo iguais.
- Joern: PASS em modo estrito para `syna_spi_hw_reset@0x00118384`, sem métodos ausentes, chamadas não resolvidas ou problemas de parsing.
- Teste direto: PASS; 4 casos em 2 ciclos Docker com ASan/UBSan, cobrindo GPIO ausente, polaridade alta/baixa, atraso ativo e máscara do estado.

## Limitações

Esta é uma validação offline/estática. O harness host usa stubs determinísticos para GPIO, sleep e `printk`; não substitui teste em Android/NX809J físico, controlador GPIO real, concorrência, energia ou inserção do módulo.
