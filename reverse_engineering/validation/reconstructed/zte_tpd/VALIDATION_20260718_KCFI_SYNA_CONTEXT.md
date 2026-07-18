# Validacao KCFI Synaptics Context - 2026-07-18

## Escopo

Este checkpoint corrige a ABI de oito rotinas que recebem apenas o contexto
Synaptics. A fonte de verdade e o modulo stock NX809J com SHA-256
`a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
Nenhum driver publicado na Internet e nenhum teste em smartphone foram usados.

## Recuperacao da Assinatura

- O type ID stock comum e `0xae20471c`.
- `syna_context_kcfi_candidates.json` cobre 140 combinacoes de retorno e
  ponteiro de contexto.
- O oraculo Clang encontrou uma unica correspondencia:
  `int (struct syna_tcm *)`.
- P-Code e assembly mostram uso de `x0` como contexto.
- Chamadas de `connect`/`disconnect` com dois zeros extras eram artefatos dos
  prototipos decompilados de tres argumentos.

As funcoes corrigidas sao:

- `syna_dev_connect`;
- `syna_dev_disconnect`;
- `syna_dev_set_up_app_fw`;
- `syna_recovery_game_mode_after_reset`;
- `syna_testing_create_dir`;
- `syna_testing_pt01_zte`;
- `syna_testing_pt05_zte`;
- `syna_testing_pt0a_zte`.

Os prototipos foram centralizados em `zte_tpd_syna_device_api.h`. Todos os
consumidores e wrappers `sub_*` chamam o contrato tipado. Os corpos mantem os
acessos decompilados por aliases locais.

## Correcao de Varargs

O decompilador atribuia um terceiro argumento a um `printk` em
`syna_dev_connect` e outro em `syna_dev_disconnect`. O assembly stock prepara
somente `x0` e `x1` antes dessas chamadas. Os argumentos fantasmas foram
removidos; esta e uma correcao de paridade, nao uma simplificacao presumida.

## Build e ELF

- Dois builds limpos produziram SHA-256
  `7ce58003fccbd4cbd528fb612ce02afefcb9762cf509dd193619df98be3aec96`.
- Tamanho: `18289216` bytes.
- Resultado: `static_verified` e `reproducible_build=true`.
- Imports indefinidos: `152/152` iguais ao stock.
- Arquitetura, aliases, namespaces e vermagic alvo: PASS.
- O hash do modulo stock permaneceu inalterado.

## KCFI e Regressao

- Antes: `207/322` matches.
- Depois: `215/322` matches.
- Mudancas: exatamente as oito funcoes planejadas.
- Todas mudaram para `0xae20471c`, igual ao stock.
- Regressoes: zero.
- Superficie selecionada: `151/151 PASS`.
- Familias anteriores: `143/143 PASS`.
- Restam `107` divergencias e `46` preambulos stock excluidos.

## Gates Reexecutados

- Layout ABI e descritores `testing_item`: PASS.
- Sete harnesses ASAN/UBSAN: PASS, 60 casos nominais.
- Microtarefas: `123 PASS / 244 READY`, zero PASS obsoleto.
- Decomposicao: `367/367` em pseudocodigo, P-Code e assembly.
- Testes focais dos validadores: `28/28 PASS`.
- Auditoria offline: `INCOMPLETE`, conforme esperado.

## Limites

O checkpoint comprova assinatura KCFI, reproducibilidade, integridade ELF e
rastreabilidade estrutural. As rotinas maiores de conexao e testes de producao
ainda exigem harnesses diretos antes de receber PASS individual. Nao ha prova
de temporizacao, IRQ, SPI, comportamento eletrico, revisao independente ou
hardware. Nenhum comando ADB, fastboot, `insmod`, `rmmod` ou escrita de particao
foi executado.
