# Validacao Offline Next14: `syna_tcm_get_touch_data`

Data: 2026-07-22

## Veredito

`PASS_SCOPED_ABI_BEHAVIOR_ASSEMBLY_GHIDRA_OFFLINE`

A funcao `syna_tcm_get_touch_data` esta reconstruida e validada no escopo
offline. O resultado e sustentado pelo modulo stock preservado da ROM
userdebug NX809J, assembly AArch64, pseudocodigo e P-Code do Ghidra 12.1.2,
KCFI compilado no Clang OEM e testes diretos com sanitizers. Nenhum dado
publicado para o NX809J, smartphone conectado ou caminho de hardware foi
usado neste checkpoint.

Este PASS pertence somente a microtarefa
`315_syna_tcm_get_touch_data`. O modulo `zte_tpd` integral continua
`INCOMPLETE`.

## Fontes Autoritativas

- Stock: `zte_tpd.ko`, SHA-256
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Entrada stock: `0x00128514`, corpo de `244` bytes.
- Assembly stock:
  `offline_static/stock_assembly/0314_syna_tcm_get_touch_data_00128514.asm`.
- Pseudocodigo stock:
  `offline_static/ghidra_stock/decompiled/0314_00128514_syna_tcm_get_touch_data.c`.
- P-Code stock:
  `offline_static/ghidra_stock/pcode/0314_00128514_syna_tcm_get_touch_data.jsonl`.
- Fonte reconstruida:
  `kernel_development/drivers/reconstructed/zte_tpd/syna_tcm_get_touch_data.c`.

## Assinatura e KCFI

O type ID stock e `0xfd344c7d`. O oraculo local compilou `6.400`
declaracoes com variacoes de retorno, sinal, largura, `const` e ponteiros.
Somente a familia abaixo correspondeu:

```c
int syna_tcm_get_touch_data(const unsigned char *report_data,
                            unsigned int report_size,
                            unsigned int bit_offset,
                            unsigned int bit_count,
                            unsigned int *value);
```

As 32 correspondencias do relatorio sao aliases ABI equivalentes de
`u8/u32` e `unsigned char/unsigned int`. Nenhuma variante com retorno de 64
bits, primeiro ponteiro mutavel, `void *`, `long` ou larguras incompativeis
produziu o type ID stock. O relatorio escopado confirma secao e type ID do
candidato final em `kcfi_next14_touch_data_exact.json`.

## Contrato Recuperado

- `bit_count == 0` ou `bit_count > 32`: log exato e retorno `-241`;
- `report_data == NULL`: log exato e retorno `-241`;
- `bit_offset + bit_count > report_size * 8`: retorno zero e `*value = 0`;
- entrada valida: extracao little-endian por bits, atravessando bytes quando
  necessario, com no maximo 32 bits no resultado;
- o stock nao valida `value`; um ponteiro de saida valido e pre-condicao do
  chamador;
- o overflow unsigned de `bit_offset + bit_count` foi preservado como
  comportamento stock e nao foi reinterpretado como endurecimento local.

As mensagens recuperadas diretamente da secao ELF sao:

```text
\0013[error] %s: Invalid number of bits %d\n
\0013[error] %s: Invalid report data\n
```

## Paridade de Assembly

`assembly_comparison_next14_touch_data_final.json` passou todos os gates:

| Medida | Stock | Candidato |
|---|---:|---:|
| corpo | 244 bytes | 244 bytes |
| instrucoes | 61 | 61 |
| secao | `.text` | `.text` |
| KCFI | `0xfd344c7d` | `0xfd344c7d` |

As sequencias de opcodes e relocations sao iguais. A comparacao nao usou
normalizacao de alocacao de registradores, reordenacao booleana ou outra
equivalencia semantica. As duas strings e as duas chamadas `_printk` tambem
resolvem para os mesmos payloads e posicoes de instrucao.

## Ghidra e P-Code

O candidato promovido foi importado novamente no Ghidra 12.1.2. O gate
`ghidra_semantic_comparison_next14_touch_data_final.json` passou:

- corpo: `244/244` bytes;
- C decompilado normalizado: SHA-256 comum
  `fc37c60f617e0d57d895384f32964f260438f665598b0f42acaa21d628e710bb`;
- P-Code: `220/220` registros com a mesma forma ordenada;
- strings resolvidas: duas correspondencias exatas;
- artefatos Ghidra normalizados permissivamente: zero.

O subconjunto publicavel do export candidato esta em
`ghidra_candidate_next14_touch_data_final/`, com manifesto, inventario de
funcoes, strings, C decompilado e P-Code.

## Teste Direto

`next14_touch_data_harness_report.json` executou a fonte atual diretamente
com `-Wall -Wextra -Werror`, ASAN e UBSAN. Resultado: `10/10` em duas
execucoes independentes.

Cobertura:

- assinatura do ponteiro de funcao;
- contagens zero e 33, com retorno, valor de saida e log exatos;
- entrada nula;
- leitura fora do limite e zeragem da saida;
- um bit, cruzamento de byte e 32 bits alinhados;
- 32 bits desalinhados;
- `1.024` combinacoes validas por execucao contra um extrator de referencia.

O harness trabalha somente com memoria host. Ele nao prova SPI, IRQ, MMIO,
firmware ou comportamento eletrico do touchscreen.

## Build e Impacto Global

- Container: `nubia-sm8850-kernel-builder:latest`.
- Toolchain: `clang-r536225`, Android Clang 19.0.1.
- Alvo: Android 16, GKI 6.12.23, AArch64, `LLVM=1`, `LLVM_IAS=1`.
- Entradas: 521 arquivos, manifesto SHA-256
  `78bb13ecb96b31fa46f7f1fbdda2cab26227a22b7f01cce44cd562783f08de60`.
- Ciclos limpos independentes: `78,812 s` e `79,156 s`.
- Modulo final: `24.076.520` bytes, SHA-256
  `9a168340ee6147c6547276f1c63a442ecc9302ec34180259b4740286078b85b7`.
- Warnings e erros aceitos: zero.
- KCFI global: `297/322`, 25 divergencias, zero candidato ausente,
  `92,24%`.
- Microtarefas: `154 PASS`, `213 READY_FOR_IMPLEMENTATION`.
- Promocao deste checkpoint: somente `315_syna_tcm_get_touch_data`.
- PASS anteriores retidos: 153; PASS obsoletos demovidos: zero.

## Integridade do Ambiente

A suite focal das ferramentas alteradas passou `48/48`. A suite ampla do
pipeline passou `136/136`.

Durante essa verificacao, a auditoria encontrou que o arquivo rastreado
`nx809j_kernel.config` conservava desde a publicacao o SHA-256
`30d08440e1e926507c2d2d2d9cec5d6f5b84fd3286f917447cc79b4b93a10582`,
mas dois commits posteriores haviam trocado apenas o valor correspondente no
`environment.lock.json`, sem trocar o config. O lock foi restaurado para o
hash real e `audit_userdebug_observability.py --write` voltou a PASS. Nenhuma
opcao de kernel foi alterada neste checkpoint.

## Limites e Proximo Trabalho

- O `zte_tpd` completo ainda nao esta reconstruido nem validado a 100%.
- Restam 25 divergencias KCFI recuperaveis e 213 microtarefas abertas.
- `syna_spi_enable_irq` permanece bloqueada para promocao porque o type ID
  nominal do primeiro argumento ainda nao foi recuperado, apesar de o corpo
  e os offsets estarem compreendidos.
- Revisao independente continua `NOT_PERFORMED`.
- Validacao em hardware continua `DEFERRED`.
- Nenhum ADB, fastboot, `insmod`, `rmmod` ou acesso ao smartphone ocorreu.

O proximo alvo deve ser escolhido da lista KCFI remanescente pelo menor corpo
e maior isolamento, repetindo integralmente assinatura, fonte, harness,
assembly, Ghidra, build duplo, atestacao e publicacao.
