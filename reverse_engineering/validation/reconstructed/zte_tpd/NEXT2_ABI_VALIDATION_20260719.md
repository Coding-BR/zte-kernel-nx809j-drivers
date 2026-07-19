# Validacao offline do grupo ABI seguinte: zte_tpd

Data do checkpoint: 2026-07-19 UTC. Fonte de verdade: `zte_tpd.ko` stock extraido localmente, pseudocodigo/P-Code do Ghidra, assembly AArch64, headers GKI locais e o mesmo container de compilacao. Nenhum dado de internet ou operacao no smartphone foi usado.

## Escopo

| Microtarefa | Assinatura recuperada | KCFI stock | Assembly estrito | Harness |
|---|---|---:|---:|---:|
| `132_report_ufp_uevent` | `void report_ufp_uevent(int value)` | `0x454a91cb` | PENDENTE | PASS |
| `185_syna_cdev_devnode` | `char * (const struct device *, umode_t *)` | `0x99ec6422` | PASS | PASS |
| `187_syna_cdev_llseek` | `loff_t (struct file *, loff_t, int)` | `0xd527a0de` | PASS | PASS |

As assinaturas foram confirmadas por oraculo KCFI local. O `devnode` preserva os offsets `device + 0x70` e `device + 0x00`, escreve `0x600` em `mode` e usa a string literal `"%s"` observada no stock. O `llseek` retorna `-EINVAL` e seus tres argumentos agora percorrem o contrato real de `file_operations.llseek`.

`report_ufp_uevent` foi corrigido alem da assinatura: o estado estatico `report_ufp_uevent.area_meet_down`, a tabela `TP_POWER_STATUS`, os flags UFP nos offsets `0xa0`, `0xa1` e `0xa2`, o offset `tpd_cdev + 0x458`, os eventos uevent/gesture e os logs do pseudocodigo foram restaurados. A comparacao de opcodes ainda nao e equivalente e continua bloqueadora de fidelidade estatica total.

## Compilacao reproduzivel

- Container: `nubia-sm8850-kernel-builder:latest`
- Toolchain: `clang-r536225` / Clang 19.0.1
- Target: AArch64, `LLVM=1`, `LLVM_IAS=1`, `KBUILD_EXTRA_SYMBOLS=vendor.Module.symvers`
- Dois ciclos independentes `clean -> modules`: ambos retornaram `0`.
- Tamanho dos dois modulos: `19308504` bytes.
- SHA-256 dos dois artefatos: `7f594b0973d80ba105a8ed83e085b4895ae228fe8a82b1a1a7efe9942c9724fa`.

O Docker emitiu aviso de `Clock skew detected` para arquivos gerados. O mesmo hash foi obtido nas duas execucoes; o aviso permanece registrado como ressalva de ambiente.

Relatorio: `build_next2_abi_report.json`.

## KCFI global

O relatorio da superficie completa encontrou `322` registros stock, com `257` matches, `65` mismatches e `0` ausentes: `79,81%`. O grupo atual adicionou tres matches em relacao ao checkpoint anterior (`254/322`). Esse numero e uma metrica de compatibilidade de tipos, nao uma prova de equivalencia de codigo ou de hardware.

Relatorio: `kcfi_full_surface_next2_abi.json`.

## Teste direto offline

O harness `next2_abi_harness.c` foi compilado com `-Wall -Wextra -Werror`, ASAN e UBSAN, e executado duas vezes.

Resultado: `8/8` testes em cada execucao, sem stderr e sem falha de sanitizer.

Casos cobertos:

- contratos estaticos das tres funcoes e offsets AArch64 relevantes;
- down/up com LCD desligado e supressao de evento repetido;
- caminho AOD com `single_tap=true` e conclusao condicional;
- limpeza do `field_a1` quando `tpd_cdev + 0x458` esta ativo;
- bloqueio da conclusao quando `field_a2 & 1` esta ativo;
- erro de `pdev == NULL`;
- `class.devnode` com valor no offset `0x70`, fallback no offset `0x00`, `mode == 0x600` e `mode == NULL`;
- retorno `-EINVAL` do callback `llseek`.

O harness usa stubs deterministas para kobject, printk, completion, gesture e `kasprintf`. Nao executa ADB, fastboot, insmod, rmmod, SPI, IRQ, MMIO ou particoes.

Relatorio: `next2_abi_harness_report.json`.

## Comparacao de assembly

A comparacao estrita AArch64 foi executada nas tres funcoes:

| Funcao | Stock | Candidato | Resultado |
|---|---:|---:|---|
| `report_ufp_uevent` | 644 bytes / 161 instrucoes | 612 bytes / 153 instrucoes | PENDENTE |
| `syna_cdev_devnode` | 72 bytes / 18 instrucoes | 72 bytes / 18 instrucoes | PASS |
| `syna_cdev_llseek` | 8 bytes / 2 instrucoes | 8 bytes / 2 instrucoes | PASS |

O `report_ufp_uevent` ja possui os mesmos tipos, estados e ramos cobertos pelo harness, mas ainda diverge em ordem/layout de instrucoes e relocations. Portanto nao foi marcado como equivalente. O proximo trabalho deve comparar a estrutura de branches, a ordem dos loads de `tpd_cdev`/`ufp_tp_ops` e a formacao da tabela `tppower_to_str` antes de qualquer afirmacao de reconstrucao total.

Relatorio: `assembly_comparison_next2_abi.json`.

## Rastreamento e promocao

O mapa estrutural foi regenerado com `367/367` identidades ligadas a fonte, Ghidra, P-Code e assembly stock. O mapa prova identidade estrutural; `semantic_equivalence` continua `UNPROVEN`, `hardware_validation` continua `DEFERRED` e a revisao independente continua `NOT_PERFORMED`.

Este checkpoint e escopado a tres microtarefas. O manifesto global nao foi atualizado. O status honesto e: ABI/KCFI PASS, comportamento coberto offline PASS, assembly estrito `2/3`, equivalencia total ainda nao provada.
