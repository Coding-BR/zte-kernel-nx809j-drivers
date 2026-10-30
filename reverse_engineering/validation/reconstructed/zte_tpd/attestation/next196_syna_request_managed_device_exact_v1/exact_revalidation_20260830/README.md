# `syna_request_managed_device` — offline-exact revalidation

Esta atestação registra a promoção da microtarefa `196_syna_request_managed_device`, função stock `syna_request_managed_device`, entrada `0x00118364`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`; o módulo candidato reproduzível tem 6.307.336 bytes.
- Comparação AArch64: PASS; 7 instruções, símbolo de 28 bytes e 2 relocations de dados equivalentes entre stock e candidato.
- KCFI: PASS; stock e candidato apresentam o type ID `0x01ff8a78`, seção `.text` e tamanho de símbolo iguais.
- Joern: PASS em modo estrito para `syna_request_managed_device@0x00118364`, sem métodos ausentes, chamadas não resolvidas ou problemas de parsing.
- Teste direto: PASS; 3 casos em 2 ciclos Docker com ASan/UBSan, cobrindo dispositivo ausente, dispositivo presente e leitura no offset stock.

## Limitações

Esta é uma validação offline/estática. O harness host usa um objeto `p_device` controlado e não substitui teste em Android/NX809J físico, device-managed real, concorrência, firmware ou inserção do módulo.
