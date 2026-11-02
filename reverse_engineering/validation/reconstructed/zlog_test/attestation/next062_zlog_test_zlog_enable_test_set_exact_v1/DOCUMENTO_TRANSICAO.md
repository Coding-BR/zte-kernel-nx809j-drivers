Módulo analisado: `zlog_test.ko`
SHA-256: `e595c91cb5ef517c620d362c82eb05bca98cd5726757b9a6cb7cb96a788747e1`
Origem: `offline:rom_inventory/vendor_dlkm/zlog_test.ko`
Status: documento gerado automaticamente a partir de ELF, Ghidra e referência local `Module.symvers`; inferências permanecem explicitamente marcadas.

## 1. Mapeamento de Assinaturas (Conformidade GKI 6.12.23)

**Assinaturas locais recuperadas pelo Ghidra**

- `0010036c` `undefined zlog_enable_test_set()` (decompilação: ok)
- `001006b4` `undefined zlog_enable_test_get()` (decompilação: ok)
- `001006e8` `int __cdecl poll(pollfd * __fds, nfds_t __nfds, int __timeout)` (decompilação: ok)
- `00100740` `undefined dump()` (decompilação: ok)
- `00100800` `undefined zlog_test1_thread()` (decompilação: ok)
- `001008f0` `undefined zlog_test2_thread()` (decompilação: ok)
- `001009e0` `undefined zlog_test3_thread()` (decompilação: ok)
- `00100ad0` `undefined zlog_test4_thread()` (decompilação: ok)
- `00100bc0` `undefined zlog_test5_thread()` (decompilação: ok)
- `00100cb0` `undefined init_module()` (decompilação: ok)
- `00100f1c` `undefined cleanup_module()` (decompilação: ok)

**Auditoria de símbolos GKI**

- Símbolos indefinidos no módulo: `17`; encontrados no `Module.symvers` local: `13`; fornecidos por módulos vendor com `__ksymtab_*`: `4`; não resolvidos: `0`.
- `__msecs_to_jiffies` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x7162a662`.
- `__stack_chk_fail` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xd272d446`.
- `_printk` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x16b5b21d`.
- `alloc_workqueue` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xc531e61f`.
- `cancel_delayed_work_sync` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xba6d2f6c`.
- `delayed_work_timer_fn` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xb0f9b474`.
- `flush_delayed_work` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xba6d2f6c`.
- `get_random_u32` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xc01aafd2`.
- `init_timer_key` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x534026f3`.
- `queue_delayed_work_on` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x92339a9b`.
- `snprintf` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xf4386284`.
- `sscanf` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xf5197fd4`.
- `zte_misc_register_callback` -> `EXPORT_SYMBOL`, provedor `drivers/soc/qcom/zte/zte_misc/zte_misc`, namespace `global`, CRC `0x9bec046c`.
- `zlog_client_notify` -> export vendor comprovado em `zlog_common.ko`; declarar a dependência de módulo correspondente, sem tratar como símbolo GKI do `vmlinux`.
- `zlog_client_record` -> export vendor comprovado em `zlog_common.ko`; declarar a dependência de módulo correspondente, sem tratar como símbolo GKI do `vmlinux`.
- `zlog_register_client` -> export vendor comprovado em `zlog_common.ko`; declarar a dependência de módulo correspondente, sem tratar como símbolo GKI do `vmlinux`.
- `zlog_unregister_client` -> export vendor comprovado em `zlog_common.ko`; declarar a dependência de módulo correspondente, sem tratar como símbolo GKI do `vmlinux`.

**Vendor Hooks observados**

- Nenhum Vendor Hook Android foi referenciado diretamente. Não adicionar hook por suposição; qualquer acesso reconstruído a membro privado do núcleo deve ser redesenhado sobre API exportada ou mapeado para um hook existente antes da implementação.

**Imports de namespace necessários**

- Nenhum `MODULE_IMPORT_NS()` foi comprovado pelas evidências atuais.

**Regras de ABI e CFI**

- Compilar como módulo out-of-tree para `vendor_dlkm`; não usar símbolos apenas presentes em `kallsyms` sem entrada exportada e compatível no `Module.symvers`/KMI.
- Callbacks devem manter protótipos idênticos aos tipos do Kernel 6.12.23. É proibido silenciar incompatibilidade com cast de ponteiro de função, pois isso viola CFI.
- O endereço e o protótipo do Ghidra são evidência de reconstrução, não substituem a declaração canônica dos headers do kernel.

## 2. Estrutura de Dados Estrita e Offsets (Arquivos .h)

Cabeçalho gerado: `04_documents/zlog_test.ko/include/zlog_test_recovered_layout.h`.

Os membros abaixo são mapas byte-a-byte para impedir padding implícito em AArch64. Campos de largura incerta permanecem `u8[]`; somente após confirmação no P-Code/DTS devem virar tipos funcionais. Sobreposições são preservadas como macros de offset e precisam ser modeladas como `union` manualmente.

```c
/* SPDX-License-Identifier: GPL-2.0-only */
/* Auto-generated evidence map. Validate every field against Ghidra and DTS before use. */
#ifndef _ZLOG_TEST_RECOVERED_LAYOUT_H
#define _ZLOG_TEST_RECOVERED_LAYOUT_H

#include <linux/build_bug.h>
#include <linux/stddef.h>
#include <linux/types.h>

#define ZLOG_TEST_OFFSET_0710 0x710u

struct zlog_test_recovered_layout {
	u8 reserved_0000[0x710];
	u8 field_0710[0x8]; /* Ghidra: long, confidence=medium */
} __aligned(8);

static_assert(offsetof(struct zlog_test_recovered_layout, field_0710) == 0x710);
static_assert(sizeof(struct zlog_test_recovered_layout) == 0x718);

#endif /* _ZLOG_TEST_RECOVERED_LAYOUT_H */
```

Evidências de offset recuperadas:

- `0x710` largura candidata `8` em `0000_0010036c_zlog_enable_test_set.c:13`; tipo Ghidra `long`, confiança `medium`.
- `0x710` largura candidata `8` em `0000_0010036c_zlog_enable_test_set.c:83`; tipo Ghidra `long`, confiança `medium`.

Contexto do Device Tree ativo:

- Nenhum nó específico foi associado automaticamente. Isso é esperado para módulos sem binding OF; não criar nó DTS por inferência.

Regras de concorrência: aplicar `__rcu` somente quando chamadas RCU e a vida útil do ponteiro forem comprovadas; derivar `mutex`, `spinlock_t` ou `raw_spinlock_t` das primitivas observadas e do contexto de execução. Validar todo callback indireto sob CFI e executar KASAN/KCSAN após cada bloco reconstruído.

## 3. Prompts de Execução Isolada (Micro-Tarefas)

1. Função `zlog_enable_test_set`

> Implemente somente a função `undefined zlog_enable_test_set()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_test.ko/decompiled/0000_0010036c_zlog_enable_test_set.c` e o P-Code `03_ghidra/exports/zlog_test.ko/pcode/0000_0010036c_zlog_enable_test_set.jsonl`. Chamadas observadas: `<EXTERNAL>::sscanf`, `<EXTERNAL>::_printk`, `<EXTERNAL>::zlog_register_client`, `<EXTERNAL>::queue_delayed_work_on`, `<EXTERNAL>::flush_delayed_work`, `<EXTERNAL>::cancel_delayed_work_sync`, `<EXTERNAL>::zlog_unregister_client`, `<EXTERNAL>::__stack_chk_fail`. Offsets observados nesta função: `0x710/8B`, `0x710/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

2. Função `zlog_enable_test_get`

> Implemente somente a função `undefined zlog_enable_test_get()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_test.ko/decompiled/0001_001006b4_zlog_enable_test_get.c` e o P-Code `03_ghidra/exports/zlog_test.ko/pcode/0001_001006b4_zlog_enable_test_get.jsonl`. Chamadas observadas: `<EXTERNAL>::snprintf`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

3. Função `poll`

> Implemente somente a função `int __cdecl poll(pollfd * __fds, nfds_t __nfds, int __timeout)` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_test.ko/decompiled/0002_001006e8_poll.c` e o P-Code `03_ghidra/exports/zlog_test.ko/pcode/0002_001006e8_poll.jsonl`. Chamadas observadas: `<EXTERNAL>::get_random_u32`, `<EXTERNAL>::_printk`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

4. Função `dump`

> Implemente somente a função `undefined dump()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_test.ko/decompiled/0003_00100740_dump.c` e o P-Code `03_ghidra/exports/zlog_test.ko/pcode/0003_00100740_dump.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`, `<EXTERNAL>::zlog_client_record`, `<EXTERNAL>::zlog_client_notify`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

5. Função `zlog_test1_thread`

> Implemente somente a função `undefined zlog_test1_thread()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_test.ko/decompiled/0004_00100800_zlog_test1_thread.c` e o P-Code `03_ghidra/exports/zlog_test.ko/pcode/0004_00100800_zlog_test1_thread.jsonl`. Chamadas observadas: `<EXTERNAL>::get_random_u32`, `<EXTERNAL>::zlog_client_record`, `<EXTERNAL>::zlog_client_notify`, `<EXTERNAL>::_printk`, `<EXTERNAL>::__msecs_to_jiffies`, `<EXTERNAL>::queue_delayed_work_on`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

6. Função `zlog_test2_thread`

> Implemente somente a função `undefined zlog_test2_thread()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_test.ko/decompiled/0005_001008f0_zlog_test2_thread.c` e o P-Code `03_ghidra/exports/zlog_test.ko/pcode/0005_001008f0_zlog_test2_thread.jsonl`. Chamadas observadas: `<EXTERNAL>::get_random_u32`, `<EXTERNAL>::zlog_client_record`, `<EXTERNAL>::zlog_client_notify`, `<EXTERNAL>::_printk`, `<EXTERNAL>::__msecs_to_jiffies`, `<EXTERNAL>::queue_delayed_work_on`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

7. Função `zlog_test3_thread`

> Implemente somente a função `undefined zlog_test3_thread()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_test.ko/decompiled/0006_001009e0_zlog_test3_thread.c` e o P-Code `03_ghidra/exports/zlog_test.ko/pcode/0006_001009e0_zlog_test3_thread.jsonl`. Chamadas observadas: `<EXTERNAL>::get_random_u32`, `<EXTERNAL>::zlog_client_record`, `<EXTERNAL>::zlog_client_notify`, `<EXTERNAL>::_printk`, `<EXTERNAL>::__msecs_to_jiffies`, `<EXTERNAL>::queue_delayed_work_on`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

8. Função `zlog_test4_thread`

> Implemente somente a função `undefined zlog_test4_thread()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_test.ko/decompiled/0007_00100ad0_zlog_test4_thread.c` e o P-Code `03_ghidra/exports/zlog_test.ko/pcode/0007_00100ad0_zlog_test4_thread.jsonl`. Chamadas observadas: `<EXTERNAL>::get_random_u32`, `<EXTERNAL>::zlog_client_record`, `<EXTERNAL>::zlog_client_notify`, `<EXTERNAL>::_printk`, `<EXTERNAL>::__msecs_to_jiffies`, `<EXTERNAL>::queue_delayed_work_on`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

9. Função `zlog_test5_thread`

> Implemente somente a função `undefined zlog_test5_thread()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_test.ko/decompiled/0008_00100bc0_zlog_test5_thread.c` e o P-Code `03_ghidra/exports/zlog_test.ko/pcode/0008_00100bc0_zlog_test5_thread.jsonl`. Chamadas observadas: `<EXTERNAL>::get_random_u32`, `<EXTERNAL>::zlog_client_record`, `<EXTERNAL>::zlog_client_notify`, `<EXTERNAL>::_printk`, `<EXTERNAL>::__msecs_to_jiffies`, `<EXTERNAL>::queue_delayed_work_on`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

10. Função `init_module`

> Implemente somente a função `undefined init_module()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_test.ko/decompiled/0009_00100cb0_init_module.c` e o P-Code `03_ghidra/exports/zlog_test.ko/pcode/0009_00100cb0_init_module.jsonl`. Chamadas observadas: `<EXTERNAL>::alloc_workqueue`, `<EXTERNAL>::init_timer_key`, `<EXTERNAL>::zte_misc_register_callback`, `<EXTERNAL>::_printk`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

11. Função `cleanup_module`

> Implemente somente a função `undefined cleanup_module()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_test.ko/decompiled/0010_00100f1c_cleanup_module.c` e o P-Code `03_ghidra/exports/zlog_test.ko/pcode/0010_00100f1c_cleanup_module.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.
