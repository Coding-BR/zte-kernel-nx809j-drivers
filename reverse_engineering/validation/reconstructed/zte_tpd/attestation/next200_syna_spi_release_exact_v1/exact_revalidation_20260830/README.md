# `syna_spi_release` — offline-exact revalidation

Esta atestação registra a promoção da microtarefa `200_syna_spi_release`, função stock `syna_spi_release`, entrada `0x00118514`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`; o módulo candidato reproduzível tem 6.307.336 bytes.
- Comparação AArch64: PASS; 11 instruções, símbolo de 44 bytes e 4 relocations de dados equivalentes entre stock e candidato.
- KCFI: PASS; stock e candidato apresentam o type ID `0x6c81b8c8`, seção `.text` e tamanho de símbolo iguais.
- Joern: PASS em modo estrito para `syna_spi_release@0x00118514`, sem métodos ausentes, chamadas não resolvidas ou problemas de parsing.
- Teste direto: PASS; 2 casos em 2 ciclos Docker com ASan/UBSan, cobrindo dispositivo válido e nulo e o contrato exato de log.

## Limitações

Esta é uma validação offline/estática. O harness host usa stub determinístico de `printk` e não substitui teste em Android/NX809J físico, ciclo de vida real do SPI, concorrência ou inserção do módulo.
