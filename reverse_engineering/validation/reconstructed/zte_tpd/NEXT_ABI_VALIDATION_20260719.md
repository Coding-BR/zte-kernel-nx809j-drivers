# Validacao offline do proximo grupo ABI: zte_tpd

Data do checkpoint: 2026-07-19 UTC. Fonte de verdade: `zte_tpd.ko` stock extraido localmente, exports do Ghidra, P-Code, assembly AArch64 e o mesmo container de compilacao. Nenhum dado de internet ou operacao no smartphone foi usado.

## Escopo

| Microtarefa | Assinatura recuperada | Evidencia KCFI stock | Resultado |
|---|---|---:|---|
| `008_get_tp_algo_item_id` | `int get_tp_algo_item_id(char *name)` | `0x7bff871d` | ABI PASS |
| `118_change_tp_state` | `void change_tp_state(enum lcdchange state)` | `0xf4d9b23e` | ABI PASS |
| `122_set_gpio_mode` | `int set_gpio_mode(u8 mode)` | `0x81e1eabd` | ABI PASS |

Para `set_gpio_mode`, o callback indireto tambem foi resolvido: `int (struct ztp_device *, u8)`, KCFI `0xe1d63dc1`. O offset stock confirmado pelo assembly e `tpd_cdev + 0xf58`.

O tipo `enum lcdchange` foi recuperado por oraculo KCFI local. O hash casou somente com o tag nomeado `lcdchange` entre as hipoteses testadas; os quatro valores observados no assembly sao `0=exit_lp`, `1=enter_lp`, `2=on`, `3=off`.

## Compilacao reproduzivel

- Container: `nubia-sm8850-kernel-builder:latest`
- Toolchain: `clang-r536225` / Clang 19.0.1
- Target: AArch64, `LLVM=1`, `LLVM_IAS=1`, `KBUILD_EXTRA_SYMBOLS=vendor.Module.symvers`
- Dois ciclos independentes `clean -> modules`: ambos retornaram `0`.
- Tamanho do modulo: `19181696` bytes.
- SHA-256 do primeiro e segundo artefatos: `7be1349e31a468671d1a38359f6dbb729e5abeb999c265efc615cb5b2c82f132`.

Relatorio completo: `build_next_abi_report.json`.

## Teste direto offline

O harness `next_abi_harness.c` foi compilado e executado duas vezes com `-Wall -Wextra -Werror`, ASAN e UBSAN.

Resultado: `8/8` testes em cada execucao, sem stderr e sem falha de sanitizer.

Casos cobertos:

- contrato estatico das tres funcoes e do callback GPIO;
- lookup do primeiro item, ultimo item e entrada desconhecida (`-EIO`);
- ramo de callback GPIO nulo no offset `0xf58`;
- transicoes `screen_in_doze -> screen_on` e `screen_in_doze -> screen_off`;
- transicoes a partir de `screen_off` e `screen_on`;
- no-op `lcd_exit_lp` e entrada fora do enum, com unlock verificado.

O harness usa stubs deterministas para cdev, mutex, workqueue, printk e breakpoint. Nao executa ADB, fastboot, insmod, rmmod, SPI, IRQ, MMIO ou particoes.

Relatorio: `next_abi_harness_report.json`.

## Comparacao de assembly

A comparacao estrita foi executada para as tres funcoes e falhou honestamente em `0/3`:

| Funcao | Stock | Candidato | Instrucoes stock/candidato |
|---|---:|---:|---:|
| `get_tp_algo_item_id` | 356 bytes | 372 bytes | 89 / 93 |
| `set_gpio_mode` | 84 bytes | 160 bytes | 21 / 40 |
| `change_tp_state` | 376 bytes | 388 bytes | 94 / 97 |

As diferencas conhecidas sao: os dados globais reconstruidos ainda nao estao materializados como um unico bloco contiguo do stock; o shim `__break` seguro gera logging em vez da instrucao `BRK`; e o compilador organiza a tabela de strings e os ramos do state machine de forma diferente. Portanto este checkpoint prova ABI, compilacao e comportamento coberto, mas **nao** prova equivalencia binaria ou equivalencia total em hardware.

Relatorio: `assembly_comparison_next_abi.json`.

## Promocao

Este checkpoint e escopado a tres microtarefas. Ele pode ser usado para atualizar o manifesto global somente depois que a esteira consolidar os relatorios no proximo ciclo completo. A ausencia de equivalencia de assembly permanece um bloqueador de fidelidade estatica, nao foi ocultada.
