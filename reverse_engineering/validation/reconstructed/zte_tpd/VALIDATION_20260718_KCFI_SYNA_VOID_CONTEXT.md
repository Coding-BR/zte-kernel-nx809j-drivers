# Validacao KCFI Synaptics Void Context - 2026-07-18

## Escopo

Este checkpoint corrige a ABI de seis rotinas que recebem o contexto Synaptics
e nao retornam valor. A fonte de verdade e o modulo stock NX809J com SHA-256
`a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
Nenhum driver publicado na Internet e nenhum teste em smartphone foram usados.

## Recuperacao da Assinatura

- O type ID stock comum e `0x3175607e`.
- `syna_void_context_kcfi_candidates.json` cobre 140 combinacoes de retorno e
  ponteiro de contexto.
- O oraculo Clang encontrou uma unica correspondencia:
  `void (struct syna_tcm *)`.
- P-Code, assembly e call sites mostram `x0` como o contexto e nenhum retorno
  semanticamente consumido.

As funcoes corrigidas sao:

- `syna_cdev_remove`;
- `syna_dev_free_input_events`;
- `syna_sysfs_remove_dir`;
- `syna_testing_remove_dir`;
- `syna_tpd_register_fw_class`;
- `zte_reset_frame_list`.

Os prototipos foram centralizados em `zte_tpd_syna_device_api.h`. Consumidores
chamam o contrato tipado. Os seis wrappers `sub_*` mantem sua ABI decompilada,
invocam a rotina sem retorno e devolvem zero ao chamador legado.

## Correcao de Varargs

O decompilador atribuia argumentos adicionais a seis chamadas `printk` nas
rotinas deste lote. O assembly stock prepara somente os registradores de
argumento realmente usados. Os varargs fantasmas foram removidos; esta e uma
correcao sustentada pelo binario, nao uma simplificacao presumida.

## Build e ELF

- Dois builds limpos produziram SHA-256
  `8033a82a6008b9d198842f50d6b246cb828cc93762f675e4e4e69e1eacc8020c`.
- Tamanho: `18290144` bytes.
- Resultado: `static_verified` e `reproducible_build=true`.
- Imports indefinidos: `152/152` iguais ao stock.
- Arquitetura, aliases, namespaces e vermagic alvo: PASS.
- O hash do modulo stock permaneceu inalterado.

## KCFI e Regressao

- Antes: `215/322` matches.
- Depois: `221/322` matches.
- Mudancas: exatamente as seis funcoes planejadas.
- Todas mudaram para `0x3175607e`, igual ao stock.
- Regressoes: zero.
- Superficie selecionada: `151/151 PASS`.
- Familias anteriores: `143/143 PASS`.
- Restam `101` divergencias e `46` preambulos stock excluidos.

## Gates Reexecutados

- Layout ABI e descritores `testing_item`: PASS.
- Sete harnesses ASAN/UBSAN: PASS, 60 casos nominais.
- Microtarefas: `123 PASS / 244 READY`, zero PASS obsoleto.
- Decomposicao: `367/367` em pseudocodigo, P-Code e assembly.
- Testes focais dos validadores: `28/28 PASS`.
- Auditoria offline: `INCOMPLETE`, conforme esperado.

## Limites

O checkpoint comprova assinatura KCFI, reproducibilidade, integridade ELF e
rastreabilidade estrutural. Estas seis rotinas ainda nao possuem harness direto
individual e permanecem `READY_FOR_IMPLEMENTATION` no gate O6. Nao ha prova de
temporizacao, IRQ, SPI, comportamento eletrico, revisao independente ou
hardware. Nenhum comando ADB, fastboot, `insmod`, `rmmod` ou escrita de particao
foi executado.
