# Atestação: `aw8693x_stop`

Alvo: `aw8693x_stop@00103d4c`; fonte [haptic_86938_fn_118_aw8693x_stop.c](../../../../../../kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_118_aw8693x_stop.c).

## Diagnóstico e correção

O código inicial expressava a espera com um contador de tentativas. O Clang reconhecia o limite fixo e o reescrevia como contagem regressiva; o comportamento permanecia equivalente, mas três instruções deixavam de coincidir com o stock (`mov`, incremento e ramo). O contador do stock começa em `-100` e usa `adds` seguido de `b.lo`. Um asm vazio com restrição read/write mantém o contador opaco à canonicalização do laço sem emitir instruções. O assembly final volta a coincidir integralmente.

O job também apontava a exportação Ghidra para um diretório inexistente e configurava o slice Joern para `aw8693x_get_reg`. O job agora usa a exportação do módulo candidato correto e analisa `aw8693x_stop`.

## Validação estática

`core_v2/hard_protocol_report.json` registra `CORE_GATES_PASS`; os oito gates automatizados passaram. Stock e candidato coincidem em **113 instruções / 452 bytes**, com relocations, KCFI e comparação semântica Ghidra/P-Code aprovados sem fallback. O KCFI é `0x847a0830`. Dois builds Docker limpos produziram o mesmo módulo, SHA-256 `251c7b9a5611e476ea1b795db6ecc630416fb9e20930f673d874133063bccbb0` (5555320 bytes). A exportação Ghidra do candidato identifica a função em `00106b9c` com corpo de 452 bytes.

## Limites

A função continua marcada `candidate_under_static_validation`; a promoção não foi autorizada. O audit do driver inteiro ainda não passa: falta o `.ko` reconstruído atual, e falham as verificações de vermagic, aliases, símbolos indefinidos e paridade com o build fresco. Revisão independente, análise de estado/barramento, sanitizers, testes de host e validação em runtime também não foram executados. Consulte `supplemental_gate_status.json`.
