# `syna_ts_panel_notifier_callback` — offline-exact revalidation

Esta atestação registra a promoção da microtarefa `179_syna_ts_panel_notifier_callback`, função stock `syna_ts_panel_notifier_callback`, entrada `0x00114914`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`; o módulo candidato reproduzível tem 6.307.336 bytes.
- Comparação AArch64: PASS; 75 instruções, símbolo de 300 bytes e 18 relocations de dados equivalentes entre stock e candidato.
- KCFI: PASS; stock e candidato apresentam o type ID `0x40116f97`, seção `.text` e tamanho de símbolo iguais.
- Joern: PASS em modo estrito para `syna_ts_panel_notifier_callback@0x00114914`, sem métodos ausentes, chamadas não resolvidas ou problemas de parsing.
- Teste direto: PASS; 6 caminhos em 2 ciclos Docker com ASan/UBSan, cobrindo notificação nula, blank, unblank, low-power, FPS e evento desconhecido.

## Limitações

Esta é uma validação offline/estática. O harness host usa stubs determinísticos de notifier, LCD, estado de touch e `printk`; não substitui teste em Android/NX809J físico, DRM notifier real, concorrência, energia, firmware ou inserção do módulo.
