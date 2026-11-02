# Atestação: `aw8693x_get_lra_resistance`

Alvo: `aw8693x_get_lra_resistance@001044fc`; fonte [haptic_86938_fn_119_aw8693x_get_lra_resistance.c](../../../../../../kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_119_aw8693x_get_lra_resistance.c).

## Diagnóstico e correção

O primeiro candidato tinha o corpo de 404 bytes correto, mas divergia em 10 instruções. O compilador colocou os buffers locais em offsets invertidos e coalesceu a leitura do resultado em um acesso de 16 bits. A fonte agora declara os buffers na ordem que reproduz o stack do stock e mantém o resultado como dois bytes, permitindo a sequência de duas leituras `ldrb` e `bfi` observada no binário.

A extração Ghidra também excedia o limite de caminho do Windows por um caractere (261). A atestação usa uma raiz mais curta, acessível tanto pelo PowerShell quanto pelo scoper Python.

## Validação estática

`core_v1/hard_protocol_report.json` registra `CORE_GATES_PASS`; os oito gates automatizados passaram. Stock e candidato coincidem em **101 instruções / 404 bytes**, incluindo relocations. O KCFI é `0x847a0830`. Dois builds Docker limpos produziram o mesmo módulo, SHA-256 `58617aff161cc9e247be4db9c033af80a8f35846d9e9b91b5489b23b4e0a8575` (5558464 bytes). A comparação Ghidra normalizada de C e P-Code passou sem fallback; a função candidata está em `00106db4`.

## Limites

A função continua marcada `candidate_under_static_validation`; a promoção não foi autorizada. O audit do driver inteiro ainda aponta ausência do `.ko` reconstruído e falhas de vermagic, aliases, símbolos indefinidos e paridade com o build fresco. Revisão independente, análise de estado/barramento, sanitizers, testes de host e validação em runtime permanecem pendentes. Consulte `supplemental_gate_status.json`.
