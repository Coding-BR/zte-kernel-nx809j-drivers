# Next18: `syna_tcm_run_production_test`

## Veredito

`PASS` para equivalencia offline da funcao e `INCOMPLETE` para o driver
`zte_tpd` completo. Nenhum teste em smartphone foi executado.

- Stock: `zte_tpd.ko`, SHA-256
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato: `zte_tpd.ko`, `24.413.752` bytes, SHA-256
  `214eb06c1a1074b329818fb0b0a7c9d0e9ca1e6880a1454442b8355fd3f4ea97`.
- Microtarefa: `287_syna_tcm_run_production_test`.
- Resultado agregado: `158 PASS / 209 READY`.

## ABI Recuperada

```c
int syna_tcm_run_production_test(struct tcm_dev *tcm_dev,
				 unsigned char test_code,
				 struct tcm_buffer *test_data,
				 unsigned int response_mode);
```

O oraculo local compilou `10.584` declaracoes com o Clang `r536225` e
encontrou o type ID stock `0x0b6a0563`. Aliases `u8/unsigned char` e
`u32/unsigned int` geram a mesma codificacao; os nomes acima foram escolhidos
pela semantica observada e pela declaracao dos chamadores locais.

Evidencia:

- `signature_oracles/syna_tcm_run_production_test_next18_config.json`;
- `signature_oracles/syna_tcm_run_production_test_next18_report.json`;
- `kcfi_comparison_next18_production_final.json`.

## Comportamento Recuperado

O corpo preserva os seguintes efeitos observados no ELF stock:

1. rejeita `tcm_dev == NULL` com `-241`;
2. exige `firmware_mode == 1` em `+0x09`;
3. quando `response_mode == 0`, usa IRQ se o bit zero de `transport->flags`
   estiver ativo, ou usa `command_delay_ms` de `+0x20c`;
4. envia o comando `42`, payload de um byte e resposta nula;
5. propaga erro do callback e registra o byte do payload apos o callback;
6. preserva o retorno positivo se `test_data == NULL`;
7. copia `resp_buf` de `+0x148` para o destino e propaga erro da copia.

As cinco strings de log foram recuperadas do `.rodata` stock. Os placeholders
globais `unk_*` do rascunho anterior foram removidos desta funcao.

## Unidade de Traducao

O ELF stock posiciona o helper local `syna_tcm_buf_copy`, esta funcao e
`syna_tcm_send_command` na mesma unidade de traducao. O arquivo
`syna_tcm_func_base_unit.c` restaura essa organizacao e inclui o helper como
`static`. Isso remove o alias global artificial `syna_tcm_buf_copy_2` e
recupera a chamada direta local observada no stock.

## Gates Executados

| Gate | Resultado |
| --- | --- |
| Build canônico independente | `2/2 PASS`, sem warning/error |
| Reprodutibilidade do `.ko` | SHA-256 identico nos dois ciclos |
| Independencia do caminho `M=` | dois caminhos distintos, identidade byte a byte |
| KCFI da funcao | `0x0b6a0563 == 0x0b6a0563` |
| Assembly | `392` bytes, `98` instrucoes, secao e relocations exatas |
| Ghidra 12.1.2 | C normalizado identico |
| P-Code | `287/287` operacoes na mesma forma ordenada |
| Harness host | nove cenarios, duas execucoes ASAN+UBSAN |
| Regressao KCFI | `302/302` funcoes previamente PASS preservadas |
| KCFI global | `303/322` (`94,10%`) |

Evidencias principais:

- `build_next18_production_final_report.json`;
- `assembly_comparison_next18_production_final.json`;
- `ghidra_semantic_next18_production_final.json`;
- `harness/next18_production_harness_report.json`;
- `kcfi_full_surface_next18_production_final.json`;
- `kcfi_regression_next17_passed_surface_to_next18.json`;
- `microtask_attestation_next18_production_final.json`.

## Limites

O harness substitui `printk`, `write_message` e a copia local. Ele prova
ordem de ramos, argumentos, retornos e logs, mas nao cobre transporte SPI,
IRQ, firmware real ou hardware. O driver completo mantem `19` divergencias
KCFI recuperaveis e `209` microtarefas sem atestacao integral.

O build normaliza caminhos de fonte para `/zte_tpd` com
`-ffile-prefix-map`. Isso elimina caminhos do host no DWARF, BTF e no
`zte_tpd.mod.c`; strings diagnosticas derivadas de `__FILE__` tambem ficam
normalizadas. Essa normalizacao nao e apresentada como equivalencia com os
caminhos privados usados pela fabricante.
