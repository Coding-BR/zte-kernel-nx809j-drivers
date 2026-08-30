# `syna_dev_enter_normal_sensing` — offline-exact revalidation

Esta atestação registra a promoção da microtarefa `172_syna_dev_enter_normal_sensing`, função stock `syna_dev_enter_normal_sensing`, entrada `0x00114294`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`; o módulo candidato reproduzível tem 6.307.336 bytes.
- Comparação AArch64: PASS; 45 instruções, símbolo de 180 bytes e 6 relocations de dados equivalentes entre stock e candidato.
- KCFI: PASS por paridade negativa; stock e candidato reportam `NO_VALID_KCFI_PREAMBLE`, sem type ID, com seção `.text` e tamanho de símbolo iguais.
- Joern: PASS em modo estrito para `syna_dev_enter_normal_sensing@0x00114294`, sem métodos ausentes, chamadas não resolvidas ou problemas de parsing.
- Teste direto: PASS; 8 cenários em 2 ciclos Docker com ASan/UBSan, incluindo os caminhos de sono profundo, gesto de baixa potência, erros e atraso.

## Limitações

Esta é uma validação offline/estática. O harness host usa stubs controlados para transporte e temporização; não substitui teste em Android/NX809J físico, concorrência real, transporte Synaptics, firmware, inserção do módulo ou validação de energia. A ausência de preâmbulo KCFI é evidência de paridade com o stock, não uma afirmação de que a função não participa de chamadas indiretas em outros contextos.
