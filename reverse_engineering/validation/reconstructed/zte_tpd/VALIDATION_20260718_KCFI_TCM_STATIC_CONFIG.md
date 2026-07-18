# Validacao KCFI das Rotinas TCM de Configuracao Estatica - 2026-07-18

## Escopo

Este checkpoint usa somente o `zte_tpd.ko` stock local, pseudocodigo, P-Code,
assembly AArch64, relocacoes e o toolchain GKI configurado. Nenhum fonte NX809J
da Internet e nenhum teste no smartphone foram usados.

Funcoes analisadas:

- `syna_tcm_get_static_config`;
- `syna_tcm_set_static_config`;
- `syna_tcm_set_touch_report_config`.

## ABI Recuperada

- Type ID stock: `0x135bb445`.
- Oraculo: `800` assinaturas candidatas.
- Resultado: 12 grafias equivalentes da assinatura canonica:

```c
int syna_tcm_static_config_fn(struct tcm_dev *tcm, char *config,
                              unsigned int length,
                              unsigned int delay_ms);
```

Os aliases `unsigned char *`/`u8 *` e `u32` sao equivalentes no alvo. Retorno
largo ou `void`, buffer `void *` ou `const`, comprimento `size_t` e delay
`bool`/`unsigned long` foram rejeitados pelo KCFI.

## Correcao Semantica

O assembly stock de `syna_tcm_set_static_config` prepara antes de `blr`:

- `x0`: `tcm`;
- `w1`: comando `0x22`;
- `x2`: buffer de configuracao;
- `w3`: comprimento;
- `x4`: resposta nula;
- `w5`: delay.

O candidato anterior chamava o ponteiro sem argumentos e nao atribuia o delay
padrao lido de `tcm + 0x20c`. A chamada foi restaurada com o typedef tipado
`tcm_write_message_fn`, preservando a verificacao KCFI interna stock
`0x24203a8e`. Argumentos de log comprovadamente fantasmas foram removidos e o
diagnostico de limite do touch voltou a informar solicitado e maximo.

## Evidencia no Binario Candidato

O assembly extraido do modulo final confirma, em
`syna_tcm_set_static_config`:

- `0x168ac`: leitura do delay padrao com `ldr w21, [x0, #0x20c]`;
- `0x167bc`: comando `0x22` em `w1`;
- `0x167c0..0x167cc`: buffer, comprimento, resposta nula e delay em
  `x2`, `w3`, `x4` e `w5`;
- `0x167a8..0x167b8`: verificacao previa do Type ID `0x24203a8e`;
- `0x167e8`: chamada indireta por `blr x22`.

Os tres corpos compilados e o manifesto estao em
`candidate_assembly_tcm_static_config_final/`. A comparacao estrutural estrita
em `assembly_comparison_tcm_static_config_final.json` permanece negativa para
tamanho, opcodes e relocacoes: o checkpoint comprova ABI e contratos
selecionados, mas nao identidade binaria integral com o stock. Essa diferenca
continua aberta nas microtarefas e nao deve ser interpretada como `100%`.

## Build e Gates

- Stock SHA-256:
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Dois builds limpos e reproduziveis do candidato:
  `34877123f6b30268189d3bbaf3e849cc78311941ceb558ce64b5737e425183bd`.
- Tamanho: `19173552` bytes; `static_verified`; 501 fontes; zero warnings.
- KCFI integral: `242/322`, contra `239/322` no checkpoint anterior.
- Exatamente tres funcoes stock mudaram para `0x135bb445`; zero regressao.
- Superficie selecionada: `167/167 PASS`.
- Familias de callback: `143/143` em `8/8` familias.
- Decomposicao: `367/367`.
- Dez harnesses: PASS, `106` casos. O harness deste lote passou `20/20` nas
  arvores publica e `engenharia/curated`.
- Microtarefas: `139 PASS / 228 READY`, tres promocoes, 136 PASS retidos e
  zero PASS obsoleto.
- Testes focados dos gates afetados: `39/39 PASS`.
- Suite global: `105/106`; a unica falha e a divergencia externa ja conhecida
  entre `nx809j_kernel.config` e `environment.lock.json`.
- Extracao de assembly do candidato: `3/3` funcoes materializadas; comparacao
  binaria estrita: `0/3`, mantida como divida de paridade documentada.

## Limites

O harness verifica assinatura, contratos nulos e de modo, limites, argumentos
de `write_message`, delays, copia de resposta, alocacao, falhas e cleanup. O
ponteiro de transporte, buffers e firmware sao stubs deterministas. Resposta
real de firmware, SPI, IRQ, temporizacao e comportamento eletrico nao foram
exercitados. Nenhum comando ADB, fastboot, `insmod`, `rmmod`, MMIO ou escrita de
particao foi executado.

O driver permanece `INCOMPLETE`: faltam 80 assinaturas KCFI, 228 microtarefas,
revisao independente e validacao controlada de hardware.
