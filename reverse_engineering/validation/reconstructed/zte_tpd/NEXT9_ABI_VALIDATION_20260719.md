# Validacao offline do nono grupo ABI: zte_tpd

Data do checkpoint: 2026-07-19 UTC. Fonte de verdade: `zte_tpd.ko` stock
extraido localmente, pseudocodigo e P-Code do Ghidra, assembly AArch64,
relocations ELF, headers GKI locais e o container de compilacao. Nenhum dado
da internet ou operacao no smartphone foi usado.

## Escopo

| Microtarefa | Assinatura recuperada | KCFI stock | Assembly estrito | Harness |
|---|---|---:|---:|---:|
| `syna_poll` | `__poll_t (struct file *, struct poll_table_struct *)` | `0x0b7841ca` | PASS | PASS |
| `syna_spi_hw_reset` | `void (struct syna_hw_interface *)` | `0x2b3cba1b` | PASS | PASS |
| `syna_dev_set_screen_on_fp_mode` | `int (struct syna_tcm *, unsigned int)` | `0x82a068af` | PASS | PASS |
| `ufp_report_gesture_uevent` | `void (char *)` | `0xcf0d7fba` | PASS | PASS |
| `syna_dev_isr` | `irqreturn_t (int, void *)` | `0xd2f00be1` | PASS | PASS |

Cinco oraculos KCFI independentes confirmam os contratos. Os prototipos e os
call sites foram tipados sem casts destinados a contornar CFI. O campo
`syna_hw_interface.enable_irq` continua opaco porque seu tipo nominal privado
ainda nao foi provado; consulte
`NEXT9_ENABLE_IRQ_TYPE_BLOCKER_20260719.md`.

## Layout Synaptics recuperado

O novo `zte_tpd_syna_layout.h` mantem regioes desconhecidas como bytes
reservados e nomeia somente campos demonstrados pelo ELF stock. O probe
AArch64 transforma todos os offsets abaixo em `static_assert`:

| Estrutura/campo | Offset ou tamanho |
|---|---:|
| `syna_hw_interface.irq_gpio` | `0xa8` |
| `syna_hw_interface.irq_on_state` | `0xac` |
| `syna_hw_interface.reset_gpio` | `0xf0` |
| `syna_hw_interface.reset_on_state` | `0xf4` |
| `syna_hw_interface.reset_delay_ms` | `0xf8` |
| `syna_hw_interface.reset_active_ms` | `0xfc` |
| `sizeof(syna_hw_interface)` | `0x190` |
| `syna_tcm.hw_if` | `0x270` |
| `syna_tcm.event_data` | `0x2a8` |
| `syna_tcm.isr_pid` | `0x2f0` |
| `syna_tcm.frame_wait` | `0x448` |
| `syna_tcm.frame_available` | `0x468` |
| `syna_tcm.pm_resume_completion` | `0x558` |
| `syna_tcm.pm_resume_wait_enabled` | `0x578` |
| `syna_tcm.pm_resume_wait_bypass` | `0x57c` |
| `sizeof(syna_tcm)` | `0x580` |
| `ufp_tp_ops.single_tap_work` | `0x10` |
| `ufp_tp_ops.single_tap_work.wq` | `0x78` |
| `ufp_tp_ops.gesture_complete` | `0x80` |
| `sizeof(ufp_tp_ops)` | `0xa8` |

O workqueue no binario OEM fica em `delayed_work + 0x68`, enquanto o
`struct delayed_work` do GKI externo local termina antes desse offset. Por
isso o header usa um overlay opaco de tamanho stock e converte para o tipo GKI
somente no ponto de chamada. Isso preserva o endereco fisico observado sem
fingir que o layout privado OEM e igual ao layout publico atual.

Relatorios: `header_layout_probe_next9_abi.json` e
`abi_validation_next9_abi.json`.

## Paridade de codigo

As cinco funcoes preservam polling, reset GPIO, tempos, dynamic config
`0xd4`, uevent, wake lock, agendamento de single/double tap, espera de resume,
nivel ativo de IRQ, captura do PID e leitura de evento TCM.

| Funcao | Stock | Candidato | Resultado |
|---|---:|---:|---:|
| `syna_poll` | 108 bytes / 27 instrucoes | 108 bytes / 27 instrucoes | PASS |
| `syna_spi_hw_reset` | 144 bytes / 36 instrucoes | 144 bytes / 36 instrucoes | PASS |
| `syna_dev_set_screen_on_fp_mode` | 136 bytes / 34 instrucoes | 136 bytes / 34 instrucoes | PASS |
| `ufp_report_gesture_uevent` | 228 bytes / 57 instrucoes | 228 bytes / 57 instrucoes | PASS |
| `syna_dev_isr` | 224 bytes / 56 instrucoes | 224 bytes / 56 instrucoes | PASS |

Secao, tamanho, todas as instrucoes e relocations normalizadas coincidem com
o stock. Relatorio: `assembly_comparison_next9_abi_final.json`.

## Compilacao reproduzivel

- Container: `nubia-sm8850-kernel-builder:latest`.
- Toolchain: `clang-r536225` / Clang 19.0.1.
- Target: AArch64, `ARCH=arm64`, `LLVM=1`, `LLVM_IAS=1`,
  `KBUILD_EXTRA_SYMBOLS=vendor.Module.symvers`, paralelismo fixo `-j8`.
- Dois ciclos em containers efemeros independentes `clean -> modules`
  retornaram `0`.
- O diretorio de saida usou filesystem Linux interno, mantendo o caminho
  canônico `M=/work/engineering/validation/audit_work_kcfi_next9/zte_tpd`.
- Duracoes: `58,167 s` e `58,598 s`.
- Tamanho dos dois modulos: `23.705.136` bytes.
- SHA-256 de ambos:
  `83ba694d71537fbf3fc4514e54ba33d8bbcca32dbfee6246fcdbc56663f25423`.
- Os dois logs possuem o mesmo SHA-256 e nenhum aviso.
- Tentativas em bind mount com avisos de clock skew foram rejeitadas e nao
  fazem parte da atestacao.

Relatorio: `build_next9_abi_report.json`.

## KCFI global

A superficie completa possui `322` registros stock. O candidato final obteve
`290` matches, `32` mismatches e `0` ausentes: `90,06%`. Este lote adicionou
cinco matches ao checkpoint anterior (`285/322`). O relatorio global permanece
`INCOMPLETE`; cada um dos 32 contratos restantes exige microtarefa propria.

Relatorios: `kcfi_next9_abi_exact.json` e
`kcfi_full_surface_next9_abi_final.json`.

## Teste direto offline

O harness `next9_abi_harness.c` inclui diretamente as cinco fontes
reconstruidas, compila com `-Wall -Wextra -Werror`, ASAN e UBSAN e executa
duas vezes. Resultado: `31/31` testes em cada execucao.

Os casos cobrem poll vazio/pronto e callback, GPIO ausente, polaridades e
delays de reset, dynamic config com sucesso/falha, uevent e ambiente, wakeup,
single/double tap, CPU/workqueue/delay, prefixo `KERN_INFO`, bypass e espera de
resume, timeout, GPIO de IRQ inativo, argumentos da leitura de evento, PID,
falha TCM e retorno `IRQ_HANDLED`.

O harness usa dados deterministas e doubles host. Nao executa ADB, fastboot,
`insmod`, `rmmod`, SPI, IRQ fisica, MMIO ou firmware. Relatorio:
`next9_abi_harness_report.json`.

## Regressao da infraestrutura

Os 26 testes direcionados aos comparadores de assembly, KCFI, layout e
oraculos passaram. A suite completa de
`workspace_tools/reconstruction_pipeline/tests` executou 108 testes: 107
passaram e um falhou fora deste escopo.

A falha conhecida esta em
`test_audit_userdebug_observability.py::test_repository_report_matches_pinned_nx809j_config`.
O teste informa que o SHA-256 de
`reproducible_environment/inputs/nx809j_kernel.config` difere do valor
registrado em `environment.lock.json`. Esses arquivos nao foram corrigidos nem
incluidos neste lote; a divergencia continua aberta e visivel.

## Limites e proximo gate

- `syna_spi_enable_irq` continua bloqueado por assinatura nominal KCFI
  desconhecida; 196 candidatos deram zero matches.
- `ufp_report_gesture_uevent` esta aprovada isoladamente, mas `ufp_mac_init` e
  `ufp_mac_exit` ainda precisam ser revalidados contra o overlay compartilhado
  `ufp_tp_ops` antes de afirmar paridade operacional do subsistema UFP.
- O KCFI global ainda possui 32 mismatches.
- Validacao fisica e revisao independente permanecem pendentes.

Este checkpoint prova ABI, layout, comportamento host coberto,
reprodutibilidade e assembly estrito das cinco microtarefas. Ele nao declara o
driver inteiro reconstruido em 100%.
