# Validacao KCFI Synaptics Device Config - 2026-07-18

## Escopo

Este checkpoint corrige a ABI de oito rotinas de configuracao Synaptics do
`zte_tpd`. A fonte de verdade e o modulo stock NX809J com SHA-256
`a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
Nenhum dado de driver publicado na Internet e nenhum teste em smartphone foram
usados.

## Recuperacao da Assinatura

- P-Code, pseudocodigo e assembly mostram tres argumentos: contexto, valor de
  configuracao de 32 bits e atraso de 32 bits.
- O type ID stock comum e `0x1eb3b73d`.
- O oraculo `syna_dev_config_kcfi_candidates.json` compilou `768` assinaturas.
- O resultado normalizado e
  `int (struct syna_tcm *, int, unsigned int)`.
- As grafias `s32`/`u32` equivalentes possuem o mesmo type ID e nao mudam a ABI.

As funcoes corrigidas sao:

- `syna_dev_get_frame_data`;
- `syna_dev_set_charger_mode`;
- `syna_dev_set_display_rotation`;
- `syna_dev_set_follow_hand_level`;
- `syna_dev_set_play_game`;
- `syna_dev_set_sensibility_level`;
- `syna_dev_set_stability_level`;
- `syna_dev_set_tp_report_rate`.

`zte_tpd_syna_device_api.h` centraliza os prototipos. Todas as chamadas locais
foram tipadas; os corpos preservam as operacoes decompiladas. O literal Ghidra
`4294967274LL` foi normalizado para `-22`, o mesmo valor de retorno em `int`.

## Build e ELF

- Primeiro build limpo: SHA-256
  `d0c263c5a8340801818433e2499592a56945903fdcb1c1926980532445f4e1a9`.
- Segundo build limpo: mesmo SHA-256 e `18287672` bytes.
- Resultado: `static_verified` e `reproducible_build=true`.
- Imports indefinidos: `152/152` iguais ao stock.
- Arquitetura, aliases, namespaces e vermagic alvo: PASS.
- O hash stock permaneceu inalterado.

## KCFI e Regressao

- Antes: `199/322` matches na superficie integral recuperavel.
- Depois: `207/322` matches.
- Mudancas: exatamente as oito funcoes planejadas.
- Todas mudaram para `0x1eb3b73d`, igual ao stock.
- Regressoes: zero.
- Superficie selecionada: `151/151 PASS`.
- Familias anteriores: `143/143 PASS`.
- Restam `115` divergencias e `46` preambulos stock excluidos para revisao
  separada.

## Gates Reexecutados

- Layout ABI e cinco descritores `testing_item`: PASS.
- Sete harnesses ASAN/UBSAN: PASS, 60 casos nominais.
- Microtarefas: `123 PASS / 244 READY`, zero PASS obsoleto.
- Decomposicao: `367/367` em pseudocodigo, P-Code e assembly.
- Testes focais dos validadores: `28/28 PASS`.
- Auditoria offline: `INCOMPLETE`, conforme esperado.

A suite global executou 106 testes. Um teste externo ao lote falhou porque o
hash do config userdebug atual difere de `environment.lock.json`; a divergencia
nao foi alterada nem ocultada neste checkpoint.

## Limites

Este checkpoint comprova reproducibilidade, contrato KCFI, integridade ELF,
layout e cobertura estrutural. Nao comprova equivalencia semantica completa,
temporizacao SPI/IRQ, comportamento eletrico, revisao independente ou hardware.
Nenhum comando ADB, fastboot, `insmod`, `rmmod` ou escrita de particao foi
executado.
