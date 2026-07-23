# Next21/Next22: ciclo de vida do transporte SPI

## Veredito

`PASS` offline para `syna_spi_release` e `syna_spi_hw_reset`.
O driver `zte_tpd` completo permanece `INCOMPLETE`. Nenhuma operacao foi
executada no smartphone.

- Stock SHA-256:
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato: `24.581.424` bytes, SHA-256
  `2f5454ccdf37b7b34b4bcbc72d52c314dcb76ad974813c396973255ca144b4f8`.
- Microtarefas: `197_syna_spi_hw_reset` e `200_syna_spi_release`.
- Resultado agregado: `162 PASS / 205 READY`.

## ABI

```c
void syna_spi_hw_reset(struct syna_hw_interface *hw_if);
void syna_spi_release(struct device *dev);
```

Os type IDs KCFI stock e candidato sao, respectivamente, `0x2b3cba1b` e
`0x6c81b8c8`. Nao ha cast de ponteiro de funcao nessas fronteiras.

## Correcao do release

O rascunho de `syna_spi_release` emitia opcodes e tamanho corretos, mas
referenciava `unk_3420F`. Esse global artificial continha `"zte_tpd_log"` e
nao representava a relocacao stock. A referencia foi substituida pela string
resolvida pelo ELF e pelo Ghidra:

```c
printk("\0016[info ] %s: SPI device removed\n", "syna_spi_release");
```

O argumento `dev` nao e acessado. Essa ausencia de acesso e parte do
comportamento recuperado, nao uma omissao a ser corrigida.

## Contrato do reset

O layout AArch64 comprovado e:

| Campo | Offset |
| --- | ---: |
| `reset_gpio` | `0xf0` |
| `reset_on_state` | `0xf4` |
| `reset_delay_ms` | `0xf8` |
| `reset_active_ms` | `0xfc` |

O fluxo recuperado:

1. retorna sem efeitos quando `reset_gpio == 0`;
2. converte o GPIO e escreve `reset_on_state & 1`;
3. chama `msleep(reset_active_ms)` somente quando `(int)reset_active_ms > 0`;
4. converte o mesmo GPIO e escreve `reset_on_state == 0`;
5. chama sempre `msleep(80)`;
6. emite o log stock de reset concluido.

O campo `reset_delay_ms` existe no layout, mas nao e lido por esta funcao.

## Gates por funcao

| Gate | `syna_spi_release` | `syna_spi_hw_reset` |
| --- | ---: | ---: |
| Corpo stock/candidato | `44/44` bytes | `144/144` bytes |
| Instrucoes | `11/11` exatas | `36/36` exatas |
| Secao e relocations | `PASS` | `PASS` |
| KCFI | `0x6c81b8c8` | `0x2b3cba1b` |
| C normalizado Ghidra | `PASS` | `PASS` |
| Forma P-Code | `34/34` | `110/110` |
| Harness direto | 2 casos x 2 ciclos | 4 casos x 2 ciclos |
| ASAN+UBSAN | `PASS` | `PASS` |

Os dois builds canonicos foram executados em caminhos `M=` distintos, sem
reutilizacao de objetos, e produziram o mesmo SHA-256. O probe de layout foi
repetido ate gerar stderr vazio. Uma auditoria independente executou mais
dois builds limpos, tambem com stderr vazio, e reproduziu o mesmo modulo.

## Regressao global

- KCFI recuperavel: `305/322` (`94,72%`);
- superficie direta selecionada: `176/176`;
- familias de callback: `8/8`, total `143/143`;
- decomposicao: `367/367` em C, P-Code e Assembly;
- simbolos text stock ausentes: `0`;
- imports ausentes ou inesperados: `0`;
- simbolos text auxiliares extras, inventariados e nao promovidos: `147`;
- testes unitarios da esteira: `148/148`.

## Evidencias

- `build_next21_22_spi_lifecycle_final.json`;
- `driver_audit_next21_22.json`;
- `assembly_comparison_next21_22_final.json`;
- `kcfi_comparison_next21_22_final.json`;
- `ghidra_semantic_comparison_next21_22_final.json`;
- `ghidra_candidate_next21_release_final/`;
- `ghidra_candidate_next22_hw_reset_final/`;
- `harness/next21_release_host_test_report.json`;
- `harness/next22_hw_reset_host_test_report.json`;
- `kcfi_full_surface_next21_22.json`;
- `module_decomposition_audit_next21_22.json`;
- `symbol_inventory_next21_22.json`;
- `microtask_attestation_next21_22_final.json`;
- `parity_report_next21_22.json`;
- `offline_audit_next21_22.json`.

## Limites

Os harnesses substituem `printk`, GPIO e temporizacao. Eles provam ramos,
valores, ordem de chamadas, logs e ausencia de acessos indevidos, mas nao
provam temporizacao eletrica nem resposta do controlador GPIO fisico.

O driver completo ainda possui `17` divergencias KCFI recuperaveis,
`205` microtarefas sem atestacao integral, revisao independente humana
pendente e validacao dinamica deferida. O `PASS` deste documento vale somente
para as duas funcoes listadas.
