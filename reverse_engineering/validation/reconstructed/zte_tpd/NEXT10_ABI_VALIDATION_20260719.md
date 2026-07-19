# Validacao offline do decimo grupo ABI: zte_tpd

Data do checkpoint: 2026-07-19 UTC. Fonte de verdade: `zte_tpd.ko` stock
extraido localmente, pseudocodigo e P-Code do Ghidra, assembly AArch64,
relocations ELF, headers GKI locais e o container de compilacao. Nenhum dado
da internet ou operacao no smartphone foi usado.

## Escopo

| Microtarefa | Assinatura recuperada | KCFI stock | Assembly estrito | Harness |
|---|---|---:|---:|---:|
| `ufp_mac_init` | `int (void)` | `0x6fbb3035` | PASS | PASS |
| `ufp_mac_exit` | `void (void)` | `0xe5c47d60` | PASS | PASS |
| `ufp_single_tap_work` | `void (struct work_struct *)` | `0xa607748c` | PASS | PASS |

Os tres contratos KCFI coincidem com o stock. As chamadas de timer e work
preservam ponteiros tipados; nenhum cast de callback foi usado para contornar
CFI.

## Layout UFP recuperado

O GKI local configura um `struct delayed_work` menor que o layout usado pelo
modulo ZTE. O binario stock posiciona `wq` em `delayed_work + 0x68`. O overlay
`syna_delayed_work_layout` representa somente os campos comprovados:

| Estrutura/campo | Offset ou tamanho |
|---|---:|
| `work_data` | `0x00` |
| `work_entry` | `0x08` |
| `work_func` | `0x18` |
| `timer` | `0x20` |
| `wq` | `0x68` |
| `sizeof(syna_delayed_work_layout)` | `0x70` |
| `ufp_tp_ops.pdev` | `0x00` |
| `ufp_tp_ops.single_tap_pending` | `0x08` |
| `ufp_tp_ops.single_tap_work` | `0x10` |
| `ufp_tp_ops.gesture_complete` | `0x80` |
| `ufp_tp_ops.field_a0/a1/a2` | `0xa0/0xa1/0xa2` |
| `sizeof(ufp_tp_ops)` | `0xa8` |

Todos os offsets sao `static_assert` e o probe AArch64 passou com Clang
19.0.1. Relatorios: `header_layout_probe_next10_abi.json` e
`abi_validation_next10_abi.json`.

## Paridade de codigo

| Funcao | Stock | Candidato | Resultado |
|---|---:|---:|---:|
| `ufp_mac_init` | 216 bytes / 54 instrucoes | 216 bytes / 54 instrucoes | PASS |
| `ufp_mac_exit` | 80 bytes / 20 instrucoes | 80 bytes / 20 instrucoes | PASS |
| `ufp_single_tap_work` | 12 bytes / 3 instrucoes | 12 bytes / 3 instrucoes | PASS |

Secao, tamanho e todas as instrucoes coincidem. Em `ufp_mac_init`, o modulo
stock foi distribuido sem o nome do `lock_class_key` local e referencia
`.bss+0x731`; o candidato preserva `init_completion.__key`. O comparador
canoniza exclusivamente o par `ADRP/ADD` quando um lado e `*.__key`, o outro
e `.bss+offset`, as instrucoes sao identicas e a funcao chama diretamente
`__init_swait_queue_head`. Os alvos originais e a justificativa permanecem no
relatorio. Dois testes impedem que a regra aceite um alvo fora desse contexto.

Relatorio: `assembly_comparison_next10_abi_final.json`.

## Comportamento reconstruido

`ufp_mac_init` preserva:

- `alloc_workqueue("%s", 0x6000a, 1, "single_tap_cancel")`;
- `work_data = 0xfffffffe00000`, lista autoencadeada e callback tipado;
- timer em `ufp_tp_ops + 0x30`, flags `0x200000` e metadados lock nulos;
- workqueue em `ufp_tp_ops + 0x78`;
- pending, completion e flags UFP zerados;
- copia condicional de `tpd_cdev + 0xdd0`, sem apagar `pdev` quando a origem
  e nula.

`ufp_single_tap_work` zera o pending. `ufp_mac_exit` cancela o delayed work,
faz flush, destroi a workqueue, remove o wakeup source e limpa `pdev`, na
mesma ordem do stock.

## Teste direto offline

O harness `next10_abi_harness.c` inclui diretamente as tres fontes, compila
com `-Wall -Wextra -Werror`, ASAN e UBSAN e executa duas vezes. Resultado:
`30/30` testes em cada execucao.

Os casos cobrem argumentos de alocacao, falha de alocacao conforme o stock,
todos os offsets do delayed work, lista, callback, timer, completion, wakeup,
flags, `pdev` presente/nulo, ordem das chamadas, callback com ponteiro normal
ou nulo e teardown com workqueue valida ou nula.

O harness usa doubles host deterministas. Nao executa ADB, fastboot, `insmod`,
`rmmod`, SPI, IRQ fisica, MMIO ou firmware. Relatorio:
`next10_abi_harness_report.json`.

## Compilacao reproduzivel

- Container: `nubia-sm8850-kernel-builder:latest`.
- Toolchain: `clang-r536225` / Clang 19.0.1.
- Target: AArch64, `ARCH=arm64`, `LLVM=1`, `LLVM_IAS=1`,
  `KBUILD_EXTRA_SYMBOLS=vendor.Module.symvers`, `-j8`.
- Dois ciclos independentes `clean -> modules` retornaram `0`.
- O build ocorreu em filesystem Linux efemero, no caminho canonico
  `M=/work/engineering/validation/audit_work_kcfi_next10/zte_tpd`.
- Duracoes: `83,297 s` e `77,025 s`.
- Tamanho: `23.705.024` bytes nos dois ciclos.
- SHA-256:
  `b8ba45e6ef002801ec2fce87565d8f46e7e34723bd907cb30ed2590bc76e839b`.
- Logs `clean` e `build` sao identicos entre os ciclos e nao contem avisos.

Relatorio: `build_next10_abi_report.json`.

## KCFI global

A superficie completa permanece com `322` registros stock, `290` matches,
`32` mismatches e `0` ausentes: `90,06%`. O numero nao aumentou porque os
tres tipos deste lote ja coincidiam; este checkpoint acrescenta paridade de
codigo, layout e comportamento direto que ainda faltavam.

Relatorios: `kcfi_next10_abi_exact.json` e
`kcfi_full_surface_next10_abi_final.json`.

## Regressao da infraestrutura

Os 29 testes direcionados de assembly, KCFI, layout e oraculos passaram. A
suite completa executou 111 testes: 110 passaram e um erro preexistente
permanece fora deste escopo.

O erro esta em
`test_audit_userdebug_observability.py::test_repository_report_matches_pinned_nx809j_config`.
O SHA-256 de `reproducible_environment/inputs/nx809j_kernel.config` difere do
valor em `environment.lock.json`. Esses arquivos nao foram alterados neste
lote.

## Limites e proximo gate

- A superficie KCFI global ainda possui 32 mismatches.
- O harness prova somente os caminhos host cobertos.
- Validacao fisica, revisao independente e equivalencia semantica do modulo
  inteiro permanecem pendentes.
- `syna_spi_enable_irq` continua bloqueado pelo tipo nominal KCFI
  `0x342e61b1`; os 196 candidatos anteriores produziram zero matches.

Este checkpoint fecha offline as tres microtarefas UFP do Next10. Ele nao
declara o driver `zte_tpd` inteiro reconstruido em 100%.
