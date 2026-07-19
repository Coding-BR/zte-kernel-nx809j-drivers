# Validacao offline do terceiro grupo ABI: zte_tpd

Data do checkpoint: 2026-07-19 UTC. Fonte de verdade: `zte_tpd.ko` stock extraido localmente, pseudocodigo/P-Code do Ghidra, assembly AArch64, headers GKI locais e o mesmo container de compilacao. Nenhum dado de internet ou operacao no smartphone foi usado.

## Escopo

| Microtarefa | Assinatura recuperada | KCFI stock | Assembly estrito | Harness |
|---|---|---:|---:|---:|
| `syna_cdev_create` | `int (struct syna_tcm *, struct platform_device *)` | `0x720adbbe` | PENDENTE | PASS |
| `syna_charger_notify_call` | `int (struct notifier_block *, unsigned long, void *)` | `0xd5127a3b` | PASS | PASS |
| `syna_request_managed_device` | `struct device * (void)` | `0x1ff8a78c` | PASS | PASS |
| `syna_sysfs_create_dir` | `int (struct syna_tcm *, struct platform_device *)` | `0x720adbbe` | PENDENTE | PASS |

As quatro assinaturas foram confirmadas por oraculos KCFI locais. Os wrappers `sub_18E38`, `sub_1E73C` e `sub_30D90` foram atualizados para encaminhar os tipos corretos. As chamadas stale de `syna_request_managed_device` com argumentos foram normalizadas para o contrato `(void)` observado no Ghidra.

## Compilacao reproduzivel

- Container: `nubia-sm8850-kernel-builder:latest`
- Toolchain: `clang-r536225` / Clang 19.0.1
- Target: AArch64, `LLVM=1`, `LLVM_IAS=1`, `KBUILD_EXTRA_SYMBOLS=vendor.Module.symvers`
- Dois ciclos independentes `clean -> modules`: ambos retornaram `0`.
- Tamanho dos dois modulos: `19611896` bytes.
- SHA-256 dos dois artefatos: `981fc5254e04b177c33eb6c1d4c9b9fb34fd041853bd82d16c1b267a5a3d87d1`.

O Docker emitiu aviso de `Clock skew detected` para arquivos gerados. O mesmo hash foi obtido nas duas execucoes; o aviso permanece registrado como ressalva de ambiente.

Relatorio: `build_next3_abi_report.json`.

## KCFI global

O relatorio da superficie completa encontrou `322` registros stock, com `261` matches, `61` mismatches e `0` ausentes: `81,06%`. O grupo atual adicionou quatro matches em relacao ao checkpoint anterior (`257/322`). Esse numero e uma metrica de compatibilidade de tipos, nao uma prova de equivalencia de codigo ou de hardware.

Relatorio: `kcfi_full_surface_next3_abi.json`.

## Teste direto offline

O harness `next3_abi_harness.c` foi compilado com `-Wall -Wextra -Werror`, ASAN e UBSAN, e executado duas vezes.

Resultado: `14/14` testes em cada execucao, sem stderr e sem falha de sanitizer.

Casos cobertos:

- contratos estaticos das quatro funcoes e offsets AArch64 relevantes;
- retorno nulo e carregamento do `struct device *` em `p_device + 0x70`;
- filtro de evento do notifier, nomes `usb`/`ac`, CPU `32`, atraso `125` e offsets relativos do workqueue/work;
- falha de criacao do kobject, falha de grupo, falha da arvore de testing e caminho de sucesso do sysfs;
- falhas de alocacao/registro do char device, `cdev_add`, classe e dispositivo;
- rollback de `cdev_del`, `class_destroy`, `unregister_chrdev_region`, `sysfs_remove_group` e `kobject_put`;
- offsets finais do cdev: major em `0x380`, classe em `0x388`, device em `0x390`, waitqueue em `0x4f8`/`0x500`.

O harness usa stubs deterministas para APIs de kernel. Nao executa ADB, fastboot, insmod, rmmod, SPI, IRQ, MMIO ou particoes.

Relatorio: `next3_abi_harness_report.json`.

## Comparacao de assembly

A comparacao estrita AArch64 foi executada nas quatro funcoes:

| Funcao | Stock | Candidato | Resultado |
|---|---:|---:|---|
| `syna_cdev_create` | 632 bytes / 158 instrucoes | 784 bytes / 196 instrucoes | PENDENTE |
| `syna_charger_notify_call` | 132 bytes / 33 instrucoes | 132 bytes / 33 instrucoes | PASS |
| `syna_request_managed_device` | 28 bytes / 7 instrucoes | 28 bytes / 7 instrucoes | PASS |
| `syna_sysfs_create_dir` | 212 bytes / 53 instrucoes | 204 bytes / 51 instrucoes | PENDENTE |

`syna_charger_notify_call` e `syna_request_managed_device` possuem opcodes, relocations, secao e tamanho equivalentes. `syna_sysfs_create_dir` agora usa as strings reais recuperadas do `.rodata` e possui relocations equivalentes, mas ainda diverge em duas instrucoes e no tamanho por causa da forma como o Clang agenda os loads de formato antes de `_printk`. `syna_cdev_create` ainda diverge principalmente no layout de estado global contiguo do stock e na ordem de inicializacao; nao foi marcado como equivalente.

O status `PENDENTE` e intencional: comportamento offline coberto nao substitui equivalencia estrita de assembly.

Relatorio: `assembly_comparison_next3_abi.json`.

## Rastreamento e promocao

O mapa estrutural foi regenerado com `367/367` identidades ligadas a fonte, Ghidra, P-Code e assembly stock. O mapa prova identidade estrutural; `semantic_equivalence` continua `UNPROVEN`, `hardware_validation` continua `DEFERRED` e a revisao independente continua `NOT_PERFORMED`.

Este checkpoint e escopado a quatro microtarefas. O manifesto global nao foi atualizado. Status honesto: ABI/KCFI do grupo PASS, comportamento coberto offline PASS, assembly estrito `2/4`, equivalencia total ainda nao provada.

Mapa: `reconstruction_map_next3_abi.json`.
