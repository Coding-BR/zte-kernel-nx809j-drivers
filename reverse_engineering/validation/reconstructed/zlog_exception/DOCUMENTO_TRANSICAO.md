Módulo analisado: `zlog_exception.ko`
SHA-256: `30948fd9026aa0a33d5602c0a395f8bf89c9aaa717317c4c2866e29ab7cad372`
Origem: `offline:reference_modules/full_vendor_boot/zlog_exception.ko`
Status: documento gerado automaticamente a partir de ELF, Ghidra e referência local `Module.symvers`; inferências permanecem explicitamente marcadas.

## 1. Mapeamento de Assinaturas (Conformidade GKI 6.12.23)

**Assinaturas locais recuperadas pelo Ghidra**

- `00100364` `undefined zlog_write_internal()` (decompilação: ok)
- `0010056c` `undefined zlog_read()` (decompilação: ok)
- `00100814` `undefined zlog_write()` (decompilação: ok)
- `00100b08` `undefined zlog_poll()` (decompilação: ok)
- `00100ba4` `undefined zlog_ioctl()` (decompilação: ok)
- `00100bb0` `undefined zlog_open()` (decompilação: ok)
- `00100c20` `undefined zlog_release()` (decompilação: ok)
- `00100ca4` `undefined init_module()` (decompilação: ok)
- `00100d3c` `undefined zlog_create_log_dev()` (decompilação: ok)
- `00100df0` `undefined cleanup_module()` (decompilação: ok)

**Auditoria de símbolos GKI**

- Símbolos indefinidos no módulo: `27`; encontrados no `Module.symvers` local: `27`; fornecidos por módulos vendor com `__ksymtab_*`: `0`; não resolvidos: `0`.
- `__arch_copy_from_user` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x1f42c609`.
- `__arch_copy_to_user` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x1f42c609`.
- `__check_object_size` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x5c76e3f3`.
- `__fortify_panic` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x31b67631`.
- `__init_waitqueue_head` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xde463212`.
- `__kmalloc_cache_noprof` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x266d672c`.
- `__kmalloc_noprof` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x27865ec7`.
- `__list_add_valid_or_report` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x6fabd45b`.
- `__list_del_entry_valid_or_report` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x802f8919`.
- `__mutex_init` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x81d49dc6`.
- `__stack_chk_fail` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xd272d446`.
- `__wake_up` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xf7c60e8b`.
- `_printk` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x16b5b21d`.
- `alt_cb_patch_nops` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xb8c8345a`.
- `finish_wait` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x3d03c2e0`.
- `init_wait_entry` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x6668f05d`.
- `kfree` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x31359e90`.
- `kmalloc_caches` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x760296b1`.
- `kstrdup` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x3accfef3`.
- `mem_alloc_profiling_key` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x8ee1928d`.
- `memcpy` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x8a7493b2`.
- `memset` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x110f4d3a`.
- `misc_register` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x49d10c61`.
- `mutex_lock` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x995658e3`.
- `mutex_unlock` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x995658e3`.
- `prepare_to_wait_event` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xa29be00c`.
- `schedule` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xd272d446`.

**Vendor Hooks observados**

- Nenhum Vendor Hook Android foi referenciado diretamente. Não adicionar hook por suposição; qualquer acesso reconstruído a membro privado do núcleo deve ser redesenhado sobre API exportada ou mapeado para um hook existente antes da implementação.

**Imports de namespace necessários**

- Nenhum `MODULE_IMPORT_NS()` foi comprovado pelas evidências atuais.

**Regras de ABI e CFI**

- Compilar como módulo out-of-tree para `vendor_dlkm`; não usar símbolos apenas presentes em `kallsyms` sem entrada exportada e compatível no `Module.symvers`/KMI.
- Callbacks devem manter protótipos idênticos aos tipos do Kernel 6.12.23. É proibido silenciar incompatibilidade com cast de ponteiro de função, pois isso viola CFI.
- O endereço e o protótipo do Ghidra são evidência de reconstrução, não substituem a declaração canônica dos headers do kernel.

## 2. Estrutura de Dados Estrita e Offsets (Arquivos .h)

Cabeçalho gerado: `04_documents/zlog_exception.ko/include/zlog_exception_recovered_layout.h`.

Os membros abaixo são mapas byte-a-byte para impedir padding implícito em AArch64. Campos de largura incerta permanecem `u8[]`; somente após confirmação no P-Code/DTS devem virar tipos funcionais. Sobreposições são preservadas como macros de offset e precisam ser modeladas como `union` manualmente.

```c
/* SPDX-License-Identifier: GPL-2.0-only */
/* Auto-generated evidence map. Validate every field against Ghidra and DTS before use. */
#ifndef _ZLOG_EXCEPTION_RECOVERED_LAYOUT_H
#define _ZLOG_EXCEPTION_RECOVERED_LAYOUT_H

#include <linux/build_bug.h>
#include <linux/stddef.h>
#include <linux/types.h>

#define ZLOG_EXCEPTION_OFFSET_0002 0x2u
#define ZLOG_EXCEPTION_OFFSET_000C 0xcu
#define ZLOG_EXCEPTION_OFFSET_0046 0x46u
#define ZLOG_EXCEPTION_OFFSET_0050 0x50u
#define ZLOG_EXCEPTION_OFFSET_0710 0x710u

struct zlog_exception_recovered_layout {
	u8 reserved_0000[0x2];
	u8 field_0002[0x4]; /* Ghidra: int, confidence=medium */
	u8 reserved_0006[0x6];
	u8 field_000c[0x1]; /* Ghidra: byte, confidence=medium */
	u8 reserved_000d[0x39];
	u8 field_0046[0x1]; /* Ghidra: byte, confidence=medium */
	u8 reserved_0047[0x9];
	u8 field_0050[0x8]; /* Ghidra: undefined8, confidence=medium */
	u8 reserved_0058[0x6b8];
	u8 field_0710[0x8]; /* Ghidra: long, confidence=medium */
} __aligned(8);

static_assert(offsetof(struct zlog_exception_recovered_layout, field_0002) == 0x2);
static_assert(offsetof(struct zlog_exception_recovered_layout, field_000c) == 0xc);
static_assert(offsetof(struct zlog_exception_recovered_layout, field_0046) == 0x46);
static_assert(offsetof(struct zlog_exception_recovered_layout, field_0050) == 0x50);
static_assert(offsetof(struct zlog_exception_recovered_layout, field_0710) == 0x710);
static_assert(sizeof(struct zlog_exception_recovered_layout) == 0x718);

#endif /* _ZLOG_EXCEPTION_RECOVERED_LAYOUT_H */
```

Evidências de offset recuperadas:

- `0x2` largura candidata `4` em `0000_00100364_zlog_write_internal.c:17`; tipo Ghidra `int`, confiança `medium`.
- `0x2` largura candidata `4` em `0000_00100364_zlog_write_internal.c:18`; tipo Ghidra `uint`, confiança `medium`.
- `0x2` largura candidata `4` em `0001_0010056c_zlog_read.c:66`; tipo Ghidra `uint`, confiança `medium`.
- `0x2` largura candidata `4` em `0001_0010056c_zlog_read.c:67`; tipo Ghidra `uint`, confiança `medium`.
- `0x2` largura candidata `4` em `0002_00100814_zlog_write.c:23`; tipo Ghidra `int`, confiança `medium`.
- `0x2` largura candidata `4` em `0002_00100814_zlog_write.c:24`; tipo Ghidra `uint`, confiança `medium`.
- `0xc` largura candidata `1` em `0003_00100b08_zlog_poll.c:8`; tipo Ghidra `byte`, confiança `medium`.
- `0x46` largura candidata `1` em `0001_0010056c_zlog_read.c:78`; tipo Ghidra `byte`, confiança `medium`.
- `0x46` largura candidata `1` em `0002_00100814_zlog_write.c:45`; tipo Ghidra `byte`, confiança `medium`.
- `0x50` largura candidata `8` em `0000_00100364_zlog_write_internal.c:52`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x50` largura candidata `8` em `0000_00100364_zlog_write_internal.c:55`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x50` largura candidata `8` em `0002_00100814_zlog_write.c:105`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x50` largura candidata `8` em `0002_00100814_zlog_write.c:108`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x710` largura candidata `8` em `0001_0010056c_zlog_read.c:23`; tipo Ghidra `long`, confiança `medium`.
- `0x710` largura candidata `8` em `0001_0010056c_zlog_read.c:124`; tipo Ghidra `long`, confiança `medium`.

Contexto do Device Tree ativo:

- Nenhum nó específico foi associado automaticamente. Isso é esperado para módulos sem binding OF; não criar nó DTS por inferência.

Regras de concorrência: aplicar `__rcu` somente quando chamadas RCU e a vida útil do ponteiro forem comprovadas; derivar `mutex`, `spinlock_t` ou `raw_spinlock_t` das primitivas observadas e do contexto de execução. Validar todo callback indireto sob CFI e executar KASAN/KCSAN após cada bloco reconstruído.

## 3. Prompts de Execução Isolada (Micro-Tarefas)

1. Função `zlog_write_internal`

> Implemente somente a função `undefined zlog_write_internal()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_exception.ko/decompiled/0000_00100364_zlog_write_internal.c` e o P-Code `03_ghidra/exports/zlog_exception.ko/pcode/0000_00100364_zlog_write_internal.jsonl`. Chamadas observadas: `<EXTERNAL>::__kmalloc_cache_noprof`, `<EXTERNAL>::__kmalloc_noprof`, `<EXTERNAL>::memcpy`, `<EXTERNAL>::mutex_lock`, `<EXTERNAL>::mutex_unlock`, `<EXTERNAL>::__wake_up`, `<EXTERNAL>::__list_add_valid_or_report`, `<EXTERNAL>::__fortify_panic`, `<EXTERNAL>::_printk`, `<EXTERNAL>::kfree`. Offsets observados nesta função: `0x2/4B`, `0x2/4B`, `0x50/8B`, `0x50/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

2. Função `zlog_read`

> Implemente somente a função `undefined zlog_read()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_exception.ko/decompiled/0001_0010056c_zlog_read.c` e o P-Code `03_ghidra/exports/zlog_exception.ko/pcode/0001_0010056c_zlog_read.jsonl`. Chamadas observadas: `<EXTERNAL>::mutex_lock`, `<EXTERNAL>::mutex_unlock`, `<EXTERNAL>::init_wait_entry`, `<EXTERNAL>::prepare_to_wait_event`, `<EXTERNAL>::schedule`, `<EXTERNAL>::finish_wait`, `<EXTERNAL>::__check_object_size`, `<EXTERNAL>::__arch_copy_to_user`, `<EXTERNAL>::kfree`, `<EXTERNAL>::_printk`, `<EXTERNAL>::__list_del_entry_valid_or_report`, `<EXTERNAL>::__stack_chk_fail`. Offsets observados nesta função: `0x2/4B`, `0x2/4B`, `0x46/1B`, `0x710/8B`, `0x710/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

3. Função `zlog_write`

> Implemente somente a função `undefined zlog_write()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_exception.ko/decompiled/0002_00100814_zlog_write.c` e o P-Code `03_ghidra/exports/zlog_exception.ko/pcode/0002_00100814_zlog_write.jsonl`. Chamadas observadas: `<EXTERNAL>::__kmalloc_cache_noprof`, `<EXTERNAL>::__kmalloc_noprof`, `<EXTERNAL>::__check_object_size`, `<EXTERNAL>::memset`, `<EXTERNAL>::__arch_copy_from_user`, `<EXTERNAL>::mutex_lock`, `<EXTERNAL>::mutex_unlock`, `<EXTERNAL>::__wake_up`, `<EXTERNAL>::__list_add_valid_or_report`, `<EXTERNAL>::__fortify_panic`, `<EXTERNAL>::_printk`, `<EXTERNAL>::kfree`. Offsets observados nesta função: `0x2/4B`, `0x2/4B`, `0x46/1B`, `0x50/8B`, `0x50/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

4. Função `zlog_poll`

> Implemente somente a função `undefined zlog_poll()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_exception.ko/decompiled/0003_00100b08_zlog_poll.c` e o P-Code `03_ghidra/exports/zlog_exception.ko/pcode/0003_00100b08_zlog_poll.jsonl`. Chamadas observadas: `<EXTERNAL>::mutex_lock`, `<EXTERNAL>::mutex_unlock`. Offsets observados nesta função: `0xc/1B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

5. Função `zlog_ioctl`

> Implemente somente a função `undefined zlog_ioctl()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_exception.ko/decompiled/0004_00100ba4_zlog_ioctl.c` e o P-Code `03_ghidra/exports/zlog_exception.ko/pcode/0004_00100ba4_zlog_ioctl.jsonl`. Chamadas observadas: nenhuma comprovada. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

6. Função `zlog_open`

> Implemente somente a função `undefined zlog_open()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_exception.ko/decompiled/0005_00100bb0_zlog_open.c` e o P-Code `03_ghidra/exports/zlog_exception.ko/pcode/0005_00100bb0_zlog_open.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

7. Função `zlog_release`

> Implemente somente a função `undefined zlog_release()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_exception.ko/decompiled/0006_00100c20_zlog_release.c` e o P-Code `03_ghidra/exports/zlog_exception.ko/pcode/0006_00100c20_zlog_release.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

8. Função `init_module`

> Implemente somente a função `undefined init_module()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_exception.ko/decompiled/0007_00100ca4_init_module.c` e o P-Code `03_ghidra/exports/zlog_exception.ko/pcode/0007_00100ca4_init_module.jsonl`. Chamadas observadas: `zlog_create_log_dev`, `<EXTERNAL>::__init_waitqueue_head`, `<EXTERNAL>::__mutex_init`, `<EXTERNAL>::_printk`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

9. Função `zlog_create_log_dev`

> Implemente somente a função `undefined zlog_create_log_dev()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_exception.ko/decompiled/0008_00100d3c_zlog_create_log_dev.c` e o P-Code `03_ghidra/exports/zlog_exception.ko/pcode/0008_00100d3c_zlog_create_log_dev.jsonl`. Chamadas observadas: `<EXTERNAL>::kstrdup`, `<EXTERNAL>::misc_register`, `<EXTERNAL>::_printk`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

10. Função `cleanup_module`

> Implemente somente a função `undefined cleanup_module()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/zlog_exception.ko/decompiled/0009_00100df0_cleanup_module.c` e o P-Code `03_ghidra/exports/zlog_exception.ko/pcode/0009_00100df0_cleanup_module.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.
