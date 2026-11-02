# `syna_hw_interface_exit` — offline-exact revalidation

Esta atestação registra a promoção da microtarefa `199_syna_hw_interface_exit`, função stock `syna_hw_interface_exit`, entrada `0x001184e0`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`; o módulo candidato reproduzível tem 6.307.336 bytes.
- Comparação AArch64: PASS; 12 instruções, símbolo de 48 bytes e 4 relocations de dados equivalentes entre stock e candidato.
- KCFI: PASS; stock e candidato apresentam o type ID `0xe5c47d60`, seção `.text` e tamanho de símbolo iguais.
- Joern: PASS em modo estrito para `syna_hw_interface_exit@0x001184e0`, sem métodos ausentes, chamadas não resolvidas ou problemas de parsing.
- Teste direto: PASS; 1 caso em 2 ciclos Docker com ASan/UBSan, confirmando a ordem de unregister de SPI e plataforma e os objetos utilizados.

## Limitações

Esta é uma validação offline/estática. O harness host usa stubs determinísticos de unregister e não substitui teste em Android/NX809J físico, barramento real, concorrência ou inserção do módulo.
