# Validacao KCFI das Rotinas TCM de Ciclo de Vida - 2026-07-18

## Escopo

Este checkpoint usa somente o `zte_tpd.ko` stock local, pseudocodigo, P-Code,
assembly AArch64, relocacoes, KCFI e o toolchain GKI configurado. Nenhuma fonte
NX809J da Internet e nenhum teste no smartphone foram usados.

Funcoes analisadas:

- `syna_tcm_clear_command_processing`;
- `syna_tcm_remove_device`;
- `syna_tcm_v1_terminate`.

## ABI Recuperada

- Type ID stock: `0x9b7e2760`.
- Oraculo: `30` assinaturas candidatas.
- Resultado unico:

```c
void syna_tcm_lifecycle_fn(struct tcm_dev *tcm);
```

O callback armazenado em `tcm_dev + 0x3a0` usa o mesmo Type ID. Variantes com
retorno, `const`, `void *`, inteiros e ponteiro sem o tipo `struct tcm_dev` foram
rejeitadas pelo KCFI.

## Correcao Semantica

O candidato anterior mantinha prototipos decompilados com argumentos residuais:

- `clear_command_processing` lia o callback em `+0x3a0`, mas o chamava com
  tres argumentos e propagava um retorno inexistente;
- `remove_device` e `v1_terminate` aceitavam dois argumentos que o Ghidra
  confirmou como artefatos de prototipo perdido.

As tres entradas agora usam `void (struct tcm_dev *)`. O overlay tipa o campo
`terminate` e preserva `reserved_03a8[0x08]`; os offsets seguintes permanecem
`reset_callback +0x3b0`, `post_reset_context +0x23d8` e
`post_reset_callback +0x23e0`.

## Evidencia AArch64

O assembly do candidato em `candidate_assembly_tcm_lifecycle_final/` confirma:

- `syna_tcm_clear_command_processing`: leitura de `[x0, #0x3a0]`, verificação
  de `0x9b7e2760` e `blr` com `x0` como único argumento;
- `syna_tcm_v1_terminate`: estado em `tcm + 0x1f8`, byte de log em `+0x1fc`,
  transicao para estado `2` e `completion_done/complete` em `+0x220`;
- `syna_tcm_remove_device`: liberacao sequencial dos seis buffers e do proprio
  contexto, com zeragem dos ponteiros e contadores observados no stock.

A comparacao estrita em `assembly_comparison_tcm_lifecycle_final.json` permanece
`0/3`: opcodes, tamanhos e relocacoes ainda nao sao identidade binaria. Esse
resultado e uma divida de paridade documentada, nao uma aprovacao de equivalencia
total.

## Gates

- Stock SHA-256:
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato SHA-256:
  `9c3756977d3a2096f546d97845564607110e213cbb9024511140af5efc22104e`.
- Dois builds limpos e reproduziveis: `19179432` bytes; `static_verified`;
  zero warnings do compilador.
- KCFI integral: `245/322`, com `77` divergencias e zero ausentes.
- Superficie selecionada: `170/170 PASS`.
- Familias callback: `143/143` em `8/8` familias.
- Harness de ciclo de vida: `11/11 PASS`.
- Harnesses totais: `11`, `117` casos PASS.
- Decomposicao: `367/367 PASS`.
- Microtarefas: `142 PASS / 225 READY`, zero PASS obsoleto.
- Suite Python: `105 PASS / 1 falha conhecida` por divergencia externa entre
  `nx809j_kernel.config` e `environment.lock.json`.

## Limites

O harness usa stubs deterministas para callback, `completion`, alocacao,
liberacao, logging e dispositivo gerenciado. Nao exercita SPI, firmware, IRQ,
temporizacao real, concorrencia, MMIO ou comportamento eletrico. Nenhum comando
ADB, fastboot, `insmod`, `rmmod` ou escrita de particao foi executado.

O driver permanece `INCOMPLETE`: faltam 77 assinaturas KCFI, 225 microtarefas,
paridade binaria integral, revisao independente e validacao controlada de
hardware.
