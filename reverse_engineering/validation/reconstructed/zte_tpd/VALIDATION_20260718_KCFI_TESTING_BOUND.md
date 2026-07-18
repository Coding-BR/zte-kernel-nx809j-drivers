# Validacao KCFI dos Validadores de Producao - 2026-07-18

## Escopo

Este checkpoint corrige a ABI de cinco callbacks de verificacao de dados e
limites do `zte_tpd`. A fonte stock local tem SHA-256
`a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
Nenhum driver publicado na Internet e nenhum teste no smartphone foram usados.

## Assinatura Recuperada

- Type ID stock: `0xa33285f2`.
- Oracle: 770 assinaturas candidatas.
- Resultado: `bool (void *, void *, int, int)`; `int` e `s32` sao grafias
  equivalentes no alvo.
- Funcoes: `syna_tcm_testing_0100_check_data`, validadores superior/inferior
  `0500` e validadores superior/inferior `0A00`.
- O assembly do iterador passa dado, limite, coluna e linha em
  `x0`, `x1`, `w2` e `w3`, valida o type ID e executa `blr`.

## Comportamento Restaurado

O quarto argumento perdido pelo decompilador foi restaurado no `0100`. Nos
quatro validadores de limite, os diagnosticos voltaram a enviar ao `printk`
linha, coluna, valor medido e limite, na ordem comprovada pelo assembly stock.

## Build e Gates

- Dois builds limpos e reproduziveis: SHA-256
  `bd3c4ea07621254483410d37760017d5b1ef3b00d087cb9e0240b8d64b979f46`.
- Tamanho: `19146280` bytes; `static_verified`; 501 fontes.
- KCFI integral: `231/322`, contra `226/322` no checkpoint anterior.
- Exatamente cinco type IDs mudaram para `0xa33285f2`; zero regressao.
- Superficie selecionada: `156/156 PASS`.
- Layout ABI: PASS; decomposicao: `367/367`.
- Sete harnesses: PASS, 67 casos. O harness dos validadores passou `14/14`,
  incluindo limites `u16`/`s16`, divergencia bit a bit, argumentos de log e
  despacho pelo typedef comum.
- Microtarefas: `128 PASS / 239 READY`, cinco promocoes e zero PASS obsoleto.

## Limites

KCFI, assembly e testes host provam o contrato estatico e o subconjunto
exercitado. Eles nao provam temporizacao, SPI, IRQ, MMIO, comportamento
eletrico nem equivalencia semantica integral. Nenhum comando ADB, fastboot,
`insmod`, `rmmod` ou escrita de particao foi executado.
