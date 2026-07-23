# Next20: `syna_spi_enable_irq`

## Veredito

`PASS` para equivalencia offline da funcao e `INCOMPLETE` para o driver
`zte_tpd` completo. Nenhuma operacao foi executada no smartphone.

- Stock: `zte_tpd.ko`, SHA-256
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato: `zte_tpd.ko`, `24.581.960` bytes, SHA-256
  `6bd9588301a6f56e23de34f6687f7b13d27c3234dd9942236b54f0c05fbb959f`.
- Microtarefa: `205_syna_spi_enable_irq`.
- Resultado agregado: `160 PASS / 207 READY`.

## ABI Recuperada

```c
int syna_spi_enable_irq(struct tcm_hw_platform *platform, bool enable);
```

Uma busca local de `1.222.980` nomes de estrutura encontrou a forma
normalizada `_ZTSFu3i32P15tcm_hw_platformu2u8E.normalized`, KCFI
`0x342e61b1`. O mesmo nome nominal reproduz, sem casts:

| Fronteira | KCFI stock |
| --- | --- |
| `syna_spi_enable_irq` | `0x342e61b1` |
| `syna_spi_read` | `0x28a4201f` |
| `syna_spi_write` | `0x28a4201f` |
| `syna_tcm_allocate_device` | `0x6dc86eaa` |

O oraculo xxHash64 recebeu uma correcao de mascara de 64 bits nas caudas de
quatro e um byte. Cinco testes unitarios cobrem o vetor corrigido.

## Layout Comprovado

`struct tcm_hw_platform` tem `0x40` bytes e fica embutida em
`struct syna_hw_interface + 0x08`:

| Campo | Offset interno | Offset no objeto externo |
| --- | ---: | ---: |
| `owner` | `0x00` | `0x08` |
| `bus_type` | `0x08` | `0x10` |
| `rd_chunk_size` | `0x0c` | `0x14` |
| `wr_chunk_size` | `0x10` | `0x18` |
| `read` | `0x20` | `0x28` |
| `write` | `0x28` | `0x30` |
| `wait_irq` | `0x30` | `0x38` |
| `enable_irq` | `0x38` | `0x40` |

`struct syna_hw_attn_data` comeca no objeto externo em `+0xa8`:

| Campo | Offset externo |
| --- | ---: |
| `irq_gpio` | `0xa8` |
| `irq_on_state` | `0xac` |
| `irq_flags` | `0xb0` |
| `irq_id` | `0xb8` |
| `irq_enabled` (`u8`) | `0xbc` |
| `irq_en_mutex` | `0xc0` |

O BTF do `vmlinux` local confirma `sizeof(struct mutex) == 0x30`; o bloco de
atencao termina exatamente em `+0xf0`, onde comecam os campos de reset.
Todos os offsets possuem `static_assert` e o probe AArch64 passou.

## Comportamento Recuperado

A implementacao preserva:

1. retorno `-6` e log de erro quando `platform->owner` e nulo;
2. retorno `-6` sem lock quando `irq_id` e zero;
3. mutex em `+0xc0` envolvendo todo acesso ao estado;
4. teste do bit zero para detectar IRQ ja habilitada;
5. teste do byte completo para detectar IRQ ja desabilitada;
6. `enable_irq(irq_id)` e estado `1` na transicao de enable;
7. `disable_irq_nosync(irq_id)` e estado `0` na transicao de disable;
8. retorno `1` em transicao e `0` em operacao idempotente;
9. as cinco strings e a ordem de efeitos do stock.

## Gates Executados

| Gate | Resultado |
| --- | --- |
| Build canonico independente | `2/2 PASS`, caminhos `M=` distintos |
| Auditoria independente | `static_verified`, dois builds, zero warnings |
| Reprodutibilidade do `.ko` | SHA-256 identico |
| KCFI da funcao | `0x342e61b1 == 0x342e61b1` |
| Assembly | `216` bytes, `54` instrucoes, secao e relocations exatas |
| Ghidra 12.1.2 | C normalizado identico |
| P-Code | `159/159` operacoes com a mesma forma ordenada |
| Strings resolvidas | `5/5` identicas |
| Harness host | seis cenarios, dois ciclos ASAN+UBSAN |
| Layout AArch64 | `PASS` |
| Decomposicao | `367/367` C, P-Code e Assembly |
| KCFI global | `305/322` (`94,72%`) |
| Microtarefas | `160 PASS / 207 READY` |

Evidencias principais:

- `signature_oracles/syna_spi_enable_irq_next20_tag_sweep.json`;
- `signature_oracles/tcm_hw_platform_read_write_next20.json`;
- `signature_oracles/tcm_hw_platform_allocate_next20.json`;
- `build_next20_irq_final3_report.json`;
- `driver_audit_next20_irq_final3.json`;
- `assembly_comparison_next20_irq_final3.json`;
- `ghidra_semantic_comparison_next20_irq_final3.json`;
- `ghidra_candidate_next20_irq_final3/`;
- `harness/next20_irq_host_test_report.json`;
- `kcfi_comparison_next20_irq_final3.json`;
- `kcfi_full_surface_next20_irq_final3.json`;
- `module_decomposition_audit_next20_irq_final3.json`;
- `microtask_attestation_next20_irq_final3.json`;
- `parity_report_next20_irq_final3.json`.

## Limites

O harness substitui `printk`, mutex e primitivas do controlador de IRQ. Ele
prova ramos, ordem de chamadas, argumentos, retornos, logs e estado, mas nao
cobre temporizacao real, SPI, interrupcoes eletricas ou concorrencia no
smartphone.

O driver completo ainda possui `17` divergencias KCFI recuperaveis,
`207` microtarefas sem atestacao integral e revisao independente pendente.
O status global permanece `INCOMPLETE`; o `PASS` vale somente para
`syna_spi_enable_irq` no protocolo offline.
