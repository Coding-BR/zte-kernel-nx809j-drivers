# Validacao Offline Next15: `syna_dev_do_reflash`

Data: 2026-07-22

## Veredito

`PASS_SCOPED_ABI_BEHAVIOR_ASSEMBLY_GHIDRA_OFFLINE`

A funcao `syna_dev_do_reflash` esta reconstruida e validada no escopo
offline. A prova combina o modulo stock da ROM userdebug NX809J, KCFI
produzido pelo Clang OEM, assembly AArch64, relocations, pseudocodigo e P-Code
do Ghidra 12.1.2, dois builds limpos e um harness direto ASAN/UBSAN. Nenhum
smartphone, fonte publicada para NX809J ou operacao de flash foi usado.

Este PASS pertence somente a microtarefa `144_syna_dev_do_reflash`. O modulo
`zte_tpd` integral continua `INCOMPLETE`.

## Fontes Autoritativas

- Stock: `zte_tpd.ko`, SHA-256
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Entrada stock: `0x001113fc`, corpo de `260` bytes.
- Assembly stock:
  `offline_static/stock_assembly/0143_syna_dev_do_reflash_001113fc.asm`.
- Pseudocodigo stock:
  `offline_static/ghidra_stock/decompiled/0143_001113fc_syna_dev_do_reflash.c`.
- P-Code stock:
  `offline_static/ghidra_stock/pcode/0143_001113fc_syna_dev_do_reflash.jsonl`.
- Fonte reconstruida:
  `kernel_development/drivers/reconstructed/zte_tpd/syna_dev_do_reflash.c`.

## Assinatura e KCFI

O oraculo de `syna_dev_do_reflash` compilou `882` prototipos. O type ID stock
`0x796eea76` restringiu a declaracao a retorno inteiro de 32 bits, primeiro
argumento nominal `struct syna_tcm *` e segundo argumento de um byte:

```c
int syna_dev_do_reflash(struct syna_tcm *tcm, bool force);
```

Os aliases `_Bool`, `char`, `unsigned char` e `u8` compartilham a mesma ABI
KCFI nesta plataforma. `bool` foi escolhido como forma canonica porque os dois
chamadores stock passam somente `0/1`, o valor e reduzido ao bit zero antes do
update e seu papel recuperado e forcar o reflash.

A chamada direta tambem permitiu resolver a dependencia:

```c
int syna_tcm_do_fw_update(struct tcm_dev *tcm_dev,
                          const unsigned char *image,
                          unsigned int image_size,
                          unsigned int flash_area,
                          bool force_reflash);
```

O oraculo dessa dependencia compilou `20.160` declaracoes e reproduziu o KCFI
stock `0xb9434444`. A correcao de assinatura nao promove sua microtarefa: o
corpo candidato ainda tem `860` bytes contra `824` stock e requer validacao
propria.

## Layout Recuperado

O probe stock aloca `struct syna_tcm`, grava `tcm_dev` em `0x00` e o
`platform_device *` em `0x08`. O reflash carrega os dois ponteiros com um
unico `ldp` e entrega `tcm->pdev->dev.parent`, localizado em `pdev + 0x70`,
para `request_firmware`.

O header `zte_tpd_syna_layout.h` agora nomeia esse membro e mantem asserts:

```c
static_assert(offsetof(struct syna_tcm, tcm_dev) == 0x00);
static_assert(offsetof(struct syna_tcm, pdev) == 0x08);
static_assert(offsetof(struct syna_tcm, hw_if) == 0x270);
static_assert(sizeof(struct syna_tcm) == 0x580);
```

## Contrato Recuperado

1. `tcm == NULL`: retorna `-EINVAL`, sem aquisicao nem log.
2. Solicita `syna_firmware.img` usando `tcm->pdev->dev.parent`.
3. Falha de `request_firmware`: registra a mensagem exata e propaga o erro,
   sem update ou release.
4. Sucesso: chama `syna_tcm_do_fw_update` com `tcm_dev`, dados, tamanho
   truncado para 32 bits, area zero e o bit `force`.
5. Falha de update: registra erro, mas continua para o log de modo e release.
6. Registra sempre o modo de firmware apos um update tentado.
7. Libera exatamente o firmware adquirido e devolve o retorno do update.

Mensagens recuperadas diretamente do ELF:

```text
\0013[error] %s: Fail to request %s\n
\0013[error] %s: Fail to do reflash\n
\0016[info ] %s: Firmware mode %02X after reflash\n
```

## Paridade de Assembly

`assembly_comparison_next15_reflash_probe3.json` passou sem equivalencias:

| Medida | Stock | Candidato |
|---|---:|---:|
| corpo | 260 bytes | 260 bytes |
| instrucoes | 65 | 65 |
| secao | `.text` | `.text` |
| relocations | exatas | exatas |
| equivalencias de instrucao | 0 | 0 |

O Probe 2 tinha `268` bytes porque preservava `tcm` e recarregava `tcm_dev`.
O local explicito `tcm_dev` reproduziu o lifetime stock em `x19`, incluindo o
`ldp x19, x8, [x0]`, sem introduzir assembly artificial.

## Ghidra e P-Code

O candidato foi importado em projeto Ghidra novo, sem reutilizar cache do
Next14. `ghidra_semantic_comparison_next15_reflash_probe3.json` confirmou:

- corpo de `260` bytes em ambos;
- SHA-256 do C normalizado
  `ef6436d3dea1a1836139545d1204bf5cbfe39de33dfc6e4693f8e2e001cac8e2`;
- `190` registros P-Code em cada lado;
- mesma forma ordenada das operacoes P-Code;
- mesmos tres textos resolvidos;
- zero artefato permissivo normalizado.

## Harness Direto

`next15_reflash_harness_report.json` passou `10/10` em duas repeticoes com
ASAN e UBSAN:

- contrato de tipo da funcao;
- `tcm == NULL`;
- nome do firmware e ponteiro de device;
- falha de request;
- sucesso com `force == false`;
- falha de update e dois logs ordenados;
- `force == true`;
- truncamento de `size_t` para `unsigned int`;
- propagacao de retorno positivo;
- formato hexadecimal maiusculo do modo.

O harness valida a orquestracao com stubs. Ele nao interpreta uma imagem real
nem executa comandos de flash.

## Build e Superficie Global

`build_next15_reflash_probe3_report.json` registra dois ciclos limpos em
containers independentes, com `93,984 s` e `82,047 s`. Ambos produziram:

- modulo: `24.262.064` bytes;
- SHA-256:
  `647340ba7ca988b83d3f18f20013bc8c0726e765b0a1da83724aeafba9c84ad8`;
- arvore: `521` arquivos;
- manifesto da arvore:
  `6e1dbb320f04a9afa067e778cca3bd58b492e8609f4bb46ccbe28b9cdd7ca1de`;
- toolchain: `clang-r536225`;
- container: `nubia-sm8850-kernel-builder:latest`.

A superficie KCFI global subiu de `297/322` para `299/322` (`92,86%`), com
`23` divergencias e zero simbolo candidato ausente. Uma das duas correcoes e
o alvo atestado; a outra e somente a assinatura da dependencia.

## Microtarefa e Limites

- baseline: `154 PASS / 213 READY`;
- atual: `155 PASS / 212 READY`;
- nova promocao: `144_syna_dev_do_reflash`;
- PASS obsoleto rebaixado: zero;
- mapa estrutural: `367/367`.

Limites restantes:

- `syna_tcm_do_fw_update` nao esta comportamentalmente validada;
- o modulo integral ainda possui `23` divergencias KCFI;
- `212` microtarefas continuam abertas;
- o harness nao prova flash fisico, timing, energia ou persistencia;
- revisao independente e hardware permanecem `DEFERRED`;
- nenhum ADB, fastboot, `insmod`, SPI, IRQ, MMIO ou escrita de flash foi
  executado neste checkpoint.
