# `syna_hw_interface_init` — offline-exact revalidation

Esta atestação registra a promoção da microtarefa `198_syna_hw_interface_init`, função stock `syna_hw_interface_init`, entrada `0x00118418`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`; o módulo candidato reproduzível tem 6.307.336 bytes.
- Comparação AArch64: PASS; 49 instruções, símbolo de 196 bytes e 28 relocations de dados equivalentes entre stock e candidato.
- KCFI: PASS; stock e candidato apresentam o type ID `0x6fbb3035`, seção `.text` e tamanho de símbolo iguais.
- Joern: PASS em modo estrito para `syna_hw_interface_init@0x00118418`, sem métodos ausentes, chamadas não resolvidas ou problemas de parsing.
- Teste direto: PASS; 4 casos em 2 ciclos Docker com ASan/UBSan, cobrindo falha de platform registration, falha de SPI registration e dois retornos de sucesso.

## Limitações

Esta é uma validação offline/estática. O harness host usa stubs determinísticos para platform/SPI registration e `printk`; não substitui teste em Android/NX809J físico, barramento real, concorrência, firmware ou inserção do módulo.
