# Validacao KCFI das Rotinas TCM de Reset e Delay - 2026-07-18

## Escopo

Este checkpoint recupera a ABI comum de quatro rotinas do `zte_tpd` usando
somente o modulo stock local, exports Ghidra, P-Code, assembly AArch64 e o
toolchain GKI configurado. Nenhum driver publicado na Internet e nenhum teste no
smartphone foram usados.

Funcoes analisadas:

- `syna_tcm_reset`;
- `syna_tcm_rezero`;
- `syna_tcm_erase_mtp_data`;
- `syna_tcm_preserve_touch_report_config`.

## Assinatura Recuperada

- Type ID stock: `0x627e4777`.
- Oraculo: 420 assinaturas candidatas.
- Resultado unico: `int (struct tcm_dev *, unsigned int)`; `u32` e a grafia
  equivalente do segundo parametro no alvo.
- As entradas stock consomem `x0` e `w1`. Os quatro callsites de
  `syna_tcm_reset` carregam somente esses registradores antes da relocacao.
- O retorno de `syna_tcm_erase_mtp_data` foi corrigido para `int`: o Ghidra o
  inferiu como `void`, mas o Type ID KCFI comum e os retornos de erro no assembly
  contradizem essa inferencia.

## Comportamento e Layout

Os argumentos fantasmas introduzidos pelo decompilador foram removidos dos
callsites e dos logs diretamente comprovados. O caminho de erase ganhou a mesma
protecao stock contra divisor zero e voltou a informar os dois limites de bloco
nos diagnosticos.

O assembly de reset comprovou campos alem do fim anterior do overlay:

- `reset_callback`: `0x3b0`;
- `post_reset_context`: `0x23d8`;
- `post_reset_callback`: `0x23e0`;
- tamanho minimo atual de `struct tcm_dev`: `0x23e8`.

O probe Clang confirmou todos os offsets antigos e novos.

## Build e Gates

- Stock SHA-256:
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Dois builds limpos e reproduziveis do candidato:
  `83e8cd91f60a7bfcae11c02b56f61008649dd9b39ddcd480dbd15def09081806`.
- Tamanho: `19160728` bytes; `static_verified`; 501 fontes; zero warnings do
  auditor; vermagic alvo e imports aprovados.
- KCFI integral: `235/322`, contra `231/322` no checkpoint anterior.
- Exatamente quatro Type IDs mudaram para `0x627e4777`; zero regressao.
- Superficie selecionada: `160/160 PASS`.
- Layout ABI: PASS; decomposicao: `367/367`.
- Oito harnesses: PASS, `77` casos. O harness TCM passou `10/10` tanto na arvore
  publica quanto em `engenharia/curated`.
- Microtarefas: `132 PASS / 235 READY`, quatro promocoes sobre o checkpoint
  publicado e zero PASS obsoleto no manifesto final.

## Limites

O harness TCM exercita contratos nulos, rezero, reset, callbacks e caminhos
iniciais de preserve com stubs deterministas. O caminho nao nulo de erase nao e
executado no host. KCFI e esses testes nao provam temporizacao, SPI, IRQ, flash,
MMIO, comportamento eletrico ou equivalencia semantica integral. Nenhum comando
ADB, fastboot, `insmod`, `rmmod` ou escrita de particao foi executado.
