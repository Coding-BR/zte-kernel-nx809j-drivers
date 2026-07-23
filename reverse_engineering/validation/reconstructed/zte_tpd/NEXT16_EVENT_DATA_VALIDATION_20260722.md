# Validacao Offline Next16: `syna_tcm_get_event_data`

Data: 2026-07-22

## Veredito

`PASS_SCOPED_ABI_BEHAVIOR_ASSEMBLY_GHIDRA_OFFLINE`

A funcao `syna_tcm_get_event_data` esta reconstruida e validada no escopo
offline. A prova usa exclusivamente o modulo stock da ROM userdebug NX809J,
Clang OEM, KCFI, assembly AArch64, Ghidra 12.1.2, P-Code e harness ASAN/UBSAN.
Nenhum smartphone, fonte publicada para NX809J, ADB, fastboot ou carregamento
de modulo foi usado.

Este PASS pertence somente a microtarefa `269_syna_tcm_get_event_data`. O
modulo `zte_tpd` integral continua `INCOMPLETE`.

## Fontes Autoritativas

- Stock: `zte_tpd.ko`, SHA-256
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Entrada Ghidra stock: `0x00121ad4`, corpo de `316` bytes.
- Assembly stock:
  `offline_static/stock_assembly/0268_syna_tcm_get_event_data_00121ad4.asm`.
- Pseudocodigo stock:
  `offline_static/ghidra_stock/decompiled/0268_00121ad4_syna_tcm_get_event_data.c`.
- P-Code stock:
  `offline_static/ghidra_stock/pcode/0268_00121ad4_syna_tcm_get_event_data.jsonl`.
- Fonte reconstruida:
  `kernel_development/drivers/reconstructed/zte_tpd/syna_tcm_get_event_data.c`.

## Assinaturas e KCFI

O oraculo do alvo compilou `1.200` prototipos e reproduziu o type ID stock
`0x2431fd45` somente com a familia nominal:

```c
int syna_tcm_get_event_data(struct tcm_dev *tcm_dev,
                            unsigned char *code,
                            struct tcm_buffer *event_data);
```

Os aliases `u8`/`unsigned char`/`char` e `int`/`s32` compartilham o mesmo ID.
`u8` e `int` foram escolhidos como grafias canonicas locais.

O callback indireto em `tcm_dev + 0x390` foi resolvido por um segundo oraculo
de `150` prototipos:

```c
int syna_tcm_v1_read_message(struct tcm_dev *tcm_dev, unsigned char *code);
```

Seu type ID stock e candidato e `0xe10dda21`. O callback recebe dois
argumentos; o terceiro argumento presente no pseudotipo antigo era espurio.

## Layout Recuperado

O stock acessa duas estruturas de `72` bytes consecutivas:

```c
struct tcm_buffer {
    u8 *data;          /* +0x00 */
    u32 buf_size;      /* +0x08 */
    u32 data_length;   /* +0x0c */
    u8 mutex[0x30];    /* +0x10 */
    u8 lock_depth;     /* +0x40 */
    u8 reserved_41[7];
};
```

Os asserts AArch64 confirmam:

```c
static_assert(sizeof(struct tcm_buffer) == 0x48);
static_assert(offsetof(struct tcm_dev, report_buf) == 0x100);
static_assert(offsetof(struct tcm_dev, report_buf.data_length) == 0x10c);
static_assert(offsetof(struct tcm_dev, resp_buf) == 0x148);
static_assert(offsetof(struct tcm_dev, resp_buf.data_length) == 0x154);
static_assert(offsetof(struct tcm_dev, read_message) == 0x390);
static_assert(sizeof(struct tcm_dev) == 0x23e8);
```

## Contrato Recuperado

1. `tcm_dev == NULL`: registra erro e retorna `-241`.
2. `code == NULL`: registra erro e retorna `-241`.
3. Chama `read_message(tcm_dev, code)` e propaga qualquer retorno negativo.
4. `event_data == NULL`: devolve o retorno da leitura sem copiar.
5. Codigos `0x10..0xfe`: copiam `report_buf` somente se `data_length != 0`.
6. Codigos `0x01..0x0f`: copiam `resp_buf` somente se `data_length != 0`.
7. Codigos `0x00` e `0xff`: nao copiam e preservam o retorno da leitura.
8. Copia bem-sucedida retorna zero; falha e propagada com o tipo de evento.

As cinco mensagens foram recuperadas diretamente do ELF:

```text
\0013[error] %s: Invalid tcm device handle\n
\0013[error] %s: Invalid parameter\n
\0013[error] %s: Fail to read messages\n
\0013[error] %s: Fail to copy data, report type: %x\n
\0013[error] %s: Fail to copy data, status code: %x\n
```

## Paridade de Assembly

`assembly_comparison_next16_event_final2.json` passou sem equivalencias:

| Medida | Stock | Candidato |
|---|---:|---:|
| corpo | 316 bytes | 316 bytes |
| instrucoes | 79 | 79 |
| secao | `.text` | `.text` |
| relocations | exatas | exatas |
| equivalencias de instrucao | 0 | 0 |

O helper stock e uma copia `static` imediatamente posterior ao alvo. A mesma
localidade foi restaurada; os dois `bl` usam exatamente `0x94000032` e
`0x94000027`, vinculados ao simbolo local `syna_tcm_buf_copy`.

## Ghidra e P-Code

O candidato final foi importado em projeto Ghidra novo. O relatorio
`ghidra_semantic_comparison_next16_event_final2.json` confirmou:

- corpo de `316` bytes em ambos;
- SHA-256 do C normalizado
  `21006dc9e9e04ddb8bc8196fd335b4397ae31adbb06adc960fe7cb608de795b4`;
- `236` registros P-Code em cada lado;
- mesma forma ordenada das operacoes P-Code;
- mesmas cinco strings resolvidas.

O comparador passou a normalizar enderecos locais `LAB_*` por uma bijecao na
ordem da primeira ocorrencia. O teste negativo troca o destino de um `goto` e
prova que grafos de labels diferentes continuam sendo rejeitados. O conjunto
focado possui `7/7` testes.

## Harness Direto

`harness/next16_event_harness_report.json` passou `14/14` em duas repeticoes
com ASAN e UBSAN. A cobertura inclui:

- contrato de tipo da funcao;
- ponteiros `tcm_dev`, `code` e `event_data` nulos;
- argumentos e erro do callback de leitura;
- limites `0`, `1`, `15`, `16`, `254` e `255`;
- ausencia de payload nos dois buffers;
- selecao exclusiva de `report_buf` ou `resp_buf`;
- sucesso e falha de copia;
- cinco diagnosticos exatos;
- preservacao de retorno positivo.

O harness usa stubs para leitura e copia. Ele nao valida alocacao, mutexes,
transporte SPI, IRQ ou hardware.

## Build e Superficie Global

`build_next16_event_final2_report.json` registra dois ciclos limpos em
containers independentes, com `63,031 s` e `67,032 s`. Ambos produziram:

- modulo: `24.381.040` bytes;
- SHA-256:
  `0b279dc039ab6ad9d670ebd66308d977fd2c286234a2852b70370683b3e8d5ce`;
- arvore: `521` arquivos;
- manifesto da arvore:
  `14d351b420e8bbb69528cd22f865d7760922835d8c23d158e6c35c2251170ec7`;
- toolchain: `clang-r536225`;
- container: `nubia-sm8850-kernel-builder:latest`.

A superficie KCFI global subiu de `299/322` para `301/322` (`93,48%`), com
`21` divergencias e zero simbolo candidato ausente. Uma correcao e o alvo
atestado; a outra e somente a assinatura de `syna_tcm_v1_read_message`.

## Microtarefa e Limites

- baseline: `155 PASS / 212 READY`;
- atual: `156 PASS / 211 READY`;
- nova promocao: `269_syna_tcm_get_event_data`;
- PASS obsoleto rebaixado: zero;
- mapa estrutural: `367/367`.

Limites restantes:

- `syna_tcm_v1_read_message` continua READY: `5612` bytes candidato contra
  `5484` stock e sem paridade de corpo/harness integral;
- a copia global `syna_tcm_buf_copy_2` continua uma microtarefa separada;
- o modulo integral ainda possui `21` divergencias KCFI;
- `211` microtarefas continuam abertas;
- revisao independente e hardware permanecem `DEFERRED`;
- nenhum ADB, fastboot, `insmod`, SPI, IRQ, MMIO ou flash foi executado.
