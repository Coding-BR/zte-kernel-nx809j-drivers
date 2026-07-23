# Next19: `syna_tcm_detect_device`

## Veredito

`PASS` para equivalencia offline da funcao e `INCOMPLETE` para o driver
`zte_tpd` completo. Nenhuma operacao foi executada no smartphone.

- Stock: `zte_tpd.ko`, SHA-256
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato: `zte_tpd.ko`, `24.436.992` bytes, SHA-256
  `1a38c3abf7ce760d3ece5427105d864ffd977fbf011fbb1f966e65956f8cdf9f`.
- Microtarefa: `268_syna_tcm_detect_device`.
- Resultado agregado: `159 PASS / 208 READY`.

## ABI Recuperada

```c
int syna_tcm_detect_device(struct tcm_dev *tcm_dev,
			   unsigned int protocol, bool reinit);
```

O oraculo local compilou `3.960` declaracoes com o Clang `r536225` e
recuperou o type ID stock `0xaed6ff3a`. Os aliases `u32/unsigned int` e
`bool/u8/unsigned char/char` compartilham a mesma codificacao KCFI; os tipos
acima foram escolhidos pela semantica observada nos chamadores e no P-Code.

Evidencia:

- `signature_oracles/syna_tcm_detect_device_next19_config.json`;
- `signature_oracles/syna_tcm_detect_device_next19_report.json`;
- `kcfi_comparison_next19_detect_final.json`.

## Layout Comprovado

O overlay parcial de `struct tcm_dev` passou a nomear somente campos
demonstrados pelo ELF stock:

| Campo | Offset |
| --- | --- |
| `detection_state` | `0x08` |
| `firmware_mode` | `0x09` |
| `build_id` | `0x0c` |
| `identification_info.part_number` | `0x82` |
| `message_buf.data` | `0x240` |
| `message_buf.buf_size` | `0x248` |
| `message_buf.data_length` | `0x24c` |
| `message_buf.mutex` | `0x250` |
| `message_buf.lock_depth` | `0x280` |
| `read_message` | `0x390` |
| `write_message` | `0x398` |

`message_buf` foi identificado como `struct tcm_buffer` porque ponteiro,
tamanho, comprimento, mutex e profundidade aparecem nos mesmos offsets e com
os mesmos acessos nas funcoes stock `syna_tcm_v1_detect` e
`syna_tcm_v1_read_message`. Todos os offsets possuem `static_assert`.

## Comportamento Recuperado

A implementacao preserva os seguintes efeitos do stock:

1. rejeita `tcm_dev == NULL` com `-241`;
2. limpa os dois bytes em `+0x08` com uma unica escrita de 16 bits;
3. seleciona o protocolo pelos quatro bits inferiores;
4. encaminha o bit 7 e `reinit & 1` para `syna_tcm_v1_detect`;
5. em erro v1, registra quatro bytes de `message_buf` quando disponiveis e
   retorna `-245`;
6. exige callbacks de leitura e escrita validos;
7. retorna `1` no caminho quick-setup;
8. registra e retorna os modos Application (`1`), Bootloader (`11`) ou modo
   desconhecido;
9. rejeita TouchComm v2 e protocolos desconhecidos com `-241`.

As nove strings diagnosticas foram recuperadas do `.rodata` stock. A barreira
de compilador no bloco `detected` nao emite instrucao: ela impede a duplicacao
do retorno pelo backend e preserva o CFG comprovado no Assembly.

## Gates Executados

| Gate | Resultado |
| --- | --- |
| Build canonico independente | `2/2 PASS`, sem warning/error |
| Reprodutibilidade do `.ko` | SHA-256 identico nos dois ciclos |
| Independencia do caminho `M=` | dois caminhos distintos, identidade byte a byte |
| KCFI da funcao | `0xaed6ff3a == 0xaed6ff3a` |
| Assembly | `396` bytes, `99` instrucoes, secao e relocations exatas |
| Ghidra 12.1.2 | C normalizado identico |
| P-Code | `312/312` operacoes com a mesma forma ordenada |
| Strings resolvidas | `9/9` identicas |
| Harness host | 11 cenarios, duas execucoes ASAN+UBSAN |
| Layout AArch64 | `PASS` contra headers GKI 6.12 |
| Regressao KCFI | `302/302` funcoes anteriormente aprovadas preservadas |
| KCFI global | `304/322` (`94,41%`) |

Evidencias principais:

- `build_next19_detect_final_report.json`;
- `assembly_comparison_next19_detect_final.json`;
- `ghidra_semantic_next19_detect_final.json`;
- `ghidra_candidate_next19_detect_final/`;
- `harness/next19_detect_harness_report.json`;
- `header_layout_probe.json`;
- `kcfi_full_surface_next19_detect_final.json`;
- `kcfi_regression_next18_passed_surface_to_next19.json`;
- `microtask_attestation_next19_detect_final.json`.

## Limites

O harness substitui `printk`, a deteccao v1 e callbacks de transporte. Ele
prova ramos, argumentos, retornos, strings e offsets, mas nao cobre SPI, IRQ,
firmware ou comportamento eletrico.

O driver completo ainda possui `18` divergencias KCFI recuperaveis e `208`
microtarefas sem atestacao integral. O status global permanece
`INCOMPLETE`; o `PASS` deste documento vale somente para
`syna_tcm_detect_device` no protocolo offline.
