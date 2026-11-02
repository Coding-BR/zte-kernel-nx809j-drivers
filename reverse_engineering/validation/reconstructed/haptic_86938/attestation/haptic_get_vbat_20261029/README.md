# Atestação: `aw8693x_get_vbat`

Alvo: `aw8693x_get_vbat@00103f14`; fonte [haptic_86938_fn_120_aw8693x_get_vbat.c](../../../../../../kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_120_aw8693x_get_vbat.c).

## Diagnóstico e correção

A implementação inicial já gerava os 428 bytes e todos os opcodes corretos, mas duas relocações de strings diferiam porque os logs de limite usavam `KERN_ERR`; o stock usa severidade `KERN_INFO`. Corrigi ambos os níveis e a comparação de relocações passou. O contador medido permanece como dois bytes para conservar as leituras `ldrb` e a montagem do código de tensão do stock.

## Validação estática

`core_v1/hard_protocol_report.json` registra `CORE_GATES_PASS`; os oito gates automatizados passaram. Stock e candidato coincidem em **107 instruções / 428 bytes**, com relocations. O KCFI é `0x847a0830`. Dois builds Docker limpos produziram o mesmo módulo, SHA-256 `2a7922940a1d6e7c5fba2eb514298089ad4f2347e0fbfa6bba404eede9c7ec9c` (5562208 bytes). Joern e a comparação Ghidra normalizada de C/P-Code passaram sem fallback; a função candidata está em `00106f94`.

## Limites

A função continua marcada `candidate_under_static_validation`; a promoção não foi autorizada. O audit do driver inteiro ainda aponta ausência do `.ko` reconstruído e falhas de vermagic, aliases, símbolos indefinidos e paridade com o build fresco. Revisão independente, análise de estado/barramento, sanitizers, testes de host e validação em runtime permanecem pendentes. Consulte `supplemental_gate_status.json`.
