Módulo analisado: `fp_goodix.ko`
SHA-256: `534bdb87c4612ef6b7fe5663a10203179181cf3da1ce407b602b5e4fa8e67562`
Origem: `offline:reference_modules/full_vendor_boot/fp_goodix.ko`
Status: documento gerado automaticamente a partir de ELF, Ghidra e referência local `Module.symvers`; inferências permanecem explicitamente marcadas.

## Estado do candidato reconstruido (2026-07-16)

O candidato esta `static_verified` para o alvo GKI 6.12.23: build reproduzivel, AArch64 REL, KMI/imports, aliases, namespace e vermagic passaram. As 30 microtarefas possuem evidencias hashadas de compile, KCFI e host test; o KCFI coincide em 23/23 funcoes instrumentadas e o call graph coincide em 30/30.

A paridade de assembly e exata em 26/30 funcoes. `gf_ioctl`, `gf_open`, `gf_parse_dts` e `gf_probe` ainda apresentam diferencas de opcode/layout documentadas em `ASSEMBLY_STATUS.md`. Revisao independente e validacao no hardware NX809J nao foram executadas. Portanto, este documento nao autoriza declarar equivalencia funcional absoluta ou reconstrucao 100% concluida.

## 1. Mapeamento de Assinaturas (Conformidade GKI 6.12.23)

**Assinaturas locais recuperadas pelo Ghidra**

- `00100824` `undefined gf_ioctl()` (decompilação: ok)
- `00100dc4` `undefined gf_compat_ioctl()` (decompilação: ok)
- `00100de8` `undefined gf_open()` (decompilação: ok)
- `00100fe8` `undefined gf_release()` (decompilação: ok)
- `001010d8` `undefined gf_disable_irq()` (decompilação: ok)
- `00101118` `undefined gf_enable_irq()` (decompilação: ok)
- `0010116c` `undefined nav_event_input()` (decompilação: ok)
- `0010133c` `undefined _inline_copy_to_user()` (decompilação: ok)
- `001013e8` `undefined _inline_copy_from_user()` (decompilação: ok)
- `001014d8` `undefined gf_irq()` (decompilação: ok)
- `00101554` `undefined gf_probe()` (decompilação: ok)
- `00101968` `undefined gf_remove()` (decompilação: ok)
- `00101ac0` `undefined goodixfp_init_drm_notifier()` (decompilação: ok)
- `00101bf8` `undefined list_del()` (decompilação: ok)
- `00101c64` `undefined goodixfp_drm_get_pannel()` (decompilação: ok)
- `00101db8` `undefined goodix_fb_state_chg_callback()` (decompilação: ok)
- `00101f1c` `undefined sendnlmsg()` (decompilação: ok)
- `0010202c` `undefined netlink_init()` (decompilação: ok)
- `001020c8` `undefined nl_data_ready()` (decompilação: ok)
- `001021a8` `undefined netlink_exit()` (decompilação: ok)
- `001021ec` `undefined zte_goodix_pinctrl_init()` (decompilação: ok)
- `001022c0` `undefined zte_goodix_pinctrl_select()` (decompilação: ok)
- `0010237c` `undefined gf_parse_dts()` (decompilação: ok)
- `001026bc` `undefined gf_cleanup()` (decompilação: ok)
- `0010276c` `undefined gf_power_on()` (decompilação: ok)
- `00102810` `undefined gf_power_off()` (decompilação: ok)
- `001028b4` `undefined gf_hw_reset()` (decompilação: ok)
- `00102970` `undefined gf_irq_num()` (decompilação: ok)
- `001029b0` `undefined init_module()` (decompilação: ok)
- `00102ac8` `undefined cleanup_module()` (decompilação: ok)

**Auditoria de símbolos GKI**

- Símbolos indefinidos no módulo: `73`; encontrados no `Module.symvers` local: `69`; fornecidos por módulos vendor com `__ksymtab_*`: `4`; não resolvidos: `0`.
- `__alloc_skb` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x120906f6`.
- `__arch_copy_from_user` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x1f42c609`.
- `__arch_copy_to_user` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x1f42c609`.
- `__const_udelay` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xb7d17430`.
- `__list_add_valid_or_report` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x6fabd45b`.
- `__list_del_entry_valid_or_report` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x802f8919`.
- `__netlink_kernel_create` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xcba1cc76`.
- `__nlmsg_put` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xa46cebd0`.
- `__of_parse_phandle_with_args` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xec931d28`.
- `__platform_driver_register` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x58997344`.
- `__register_chrdev` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x95cd1ec9`.
- `__stack_chk_fail` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xd272d446`.
- `__unregister_chrdev` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x52e65492`.
- `_dev_err` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x4a35b4cb`.
- `_printk` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x16b5b21d`.
- `alloc_workqueue` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xc531e61f`.
- `alt_cb_patch_nops` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xb8c8345a`.
- `cancel_delayed_work_sync` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xba6d2f6c`.
- `class_create` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xdc5f8372`.
- `class_destroy` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xe66cdaff`.
- `delayed_work_timer_fn` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xb0f9b474`.
- `destroy_workqueue` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xc3325950`.
- `device_create` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xbdd865ba`.
- `device_destroy` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x8b487fa5`.
- `devm_gpio_request` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xb18ed447`.
- `devm_pinctrl_get` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xd10ee1a9`.
- `devm_regulator_get` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xcae628c3`.
- `disable_irq` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x8e3336dd`.
- `enable_irq` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x8e3336dd`.
- `free_irq` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xdd0d6b2a`.
- `gpio_free` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xebe5da4a`.
- `gpio_to_desc` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xcd6e7616`.
- `gpiod_direction_input` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xcf0a82f0`.
- `gpiod_set_raw_value` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xc1a43599`.
- `gpiod_to_irq` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x736db730`.
- `init_net` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xaac6c3df`.
- `init_timer_key` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x534026f3`.
- `input_allocate_device` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x66117795`.
- `input_event` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x8afeee90`.
- `input_free_device` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xfa0959b5`.
- `input_register_device` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x83b2ff0b`.
- `input_set_capability` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xf447e7b4`.
- `input_unregister_device` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xfa0959b5`.
- `irq_set_irq_wake` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xfe9be5a6`.
- `memset` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x110f4d3a`.
- `mutex_lock` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x995658e3`.
- `mutex_unlock` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x995658e3`.
- `netlink_kernel_release` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xd3e18723`.
- `netlink_unicast` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x881cfb14`.
- `nonseekable_open` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xe010ab8e`.
- `of_count_phandle_with_args` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x1c6fbb68`.
- `of_drm_find_panel` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x8c83d153`.
- `of_get_named_gpio` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x2c6cfe34`.
- `panel_event_notifier_register` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x1988207d`.
- `panel_event_notifier_unregister` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x57bbc774`.
- `pinctrl_lookup_state` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xd2b70215`.
- `pinctrl_select_state` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x7c2f5040`.
- `platform_driver_unregister` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xbd0cdbf7`.
- `pm_wakeup_ws_event` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x073dd9d9`.
- `queue_delayed_work_on` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x92339a9b`.
- `refcount_warn_saturate` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x2373037a`.
- `regulator_disable` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x8a189605`.
- `regulator_enable` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x8a189605`.
- `regulator_is_enabled` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x8a189605`.
- `request_threaded_irq` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xc407eb52`.
- `sk_skb_reason_drop` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x14e15a63`.
- `usleep_range_state` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xfdbae8c6`.
- `wakeup_source_add` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x788be0c4`.
- `wakeup_source_remove` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x788be0c4`.
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

Cabeçalho gerado: `04_documents/fp_goodix.ko/include/fp_goodix_recovered_layout.h`.

Os membros abaixo são mapas byte-a-byte para impedir padding implícito em AArch64. Campos de largura incerta permanecem `u8[]`; somente após confirmação no P-Code/DTS devem virar tipos funcionais. Sobreposições são preservadas como macros de offset e precisam ser modeladas como `union` manualmente.

```c
/* SPDX-License-Identifier: GPL-2.0-only */
/* Auto-generated evidence map. Validate every field against Ghidra and DTS before use. */
#ifndef _FP_GOODIX_RECOVERED_LAYOUT_H
#define _FP_GOODIX_RECOVERED_LAYOUT_H

#include <linux/build_bug.h>
#include <linux/stddef.h>
#include <linux/types.h>

#define FP_GOODIX_OFFSET_0006 0x6u
#define FP_GOODIX_OFFSET_0008 0x8u
#define FP_GOODIX_OFFSET_000D 0xdu
#define FP_GOODIX_OFFSET_0010 0x10u
#define FP_GOODIX_OFFSET_0018 0x18u
#define FP_GOODIX_OFFSET_0020 0x20u
#define FP_GOODIX_OFFSET_0034 0x34u
#define FP_GOODIX_OFFSET_0038 0x38u
#define FP_GOODIX_OFFSET_003C 0x3cu
#define FP_GOODIX_OFFSET_0040 0x40u
#define FP_GOODIX_OFFSET_0044 0x44u
#define FP_GOODIX_OFFSET_0046 0x46u
#define FP_GOODIX_OFFSET_0048 0x48u
#define FP_GOODIX_OFFSET_004C 0x4cu
#define FP_GOODIX_OFFSET_0070 0x70u
#define FP_GOODIX_OFFSET_0071 0x71u
#define FP_GOODIX_OFFSET_0074 0x74u
#define FP_GOODIX_OFFSET_0078 0x78u
#define FP_GOODIX_OFFSET_0080 0x80u
#define FP_GOODIX_OFFSET_0090 0x90u
#define FP_GOODIX_OFFSET_0098 0x98u
#define FP_GOODIX_OFFSET_00D0 0xd0u
#define FP_GOODIX_OFFSET_00D4 0xd4u
#define FP_GOODIX_OFFSET_00E0 0xe0u
#define FP_GOODIX_OFFSET_02F8 0x2f8u
#define FP_GOODIX_OFFSET_0710 0x710u

struct fp_goodix_recovered_layout {
	u8 reserved_0000[0x6];
	u8 field_0006[0x4]; /* Ghidra: int, confidence=medium */
	u8 reserved_000a[0x3];
	u8 field_000d[0x1]; /* Ghidra: undefined1, confidence=medium */
	u8 reserved_000e[0x2];
	u8 field_0010[0x1]; /* Ghidra: undefined1, confidence=medium */
	u8 reserved_0011[0x7];
	u8 field_0018[0x8]; /* Ghidra: long, confidence=medium */
	u8 field_0020[0x8]; /* Ghidra: long, confidence=medium */
	u8 reserved_0028[0xc];
	u8 field_0034[0x8]; /* Ghidra: undefined8, confidence=medium */
	u8 field_003c[0x4]; /* Ghidra: int, confidence=medium */
	u8 field_0040[0x4]; /* Ghidra: int, confidence=medium */
	u8 field_0044[0x4]; /* Ghidra: undefined4, confidence=medium */
	u8 field_0048[0x4]; /* Ghidra: undefined4, confidence=medium */
	u8 field_004c[0x4]; /* Ghidra: int, confidence=medium */
	u8 reserved_0050[0x20];
	u8 field_0070[0x4]; /* Ghidra: uint, confidence=medium */
	u8 field_0074[0x4]; /* Ghidra: int, confidence=medium */
	u8 field_0078[0x8]; /* Ghidra: long, confidence=medium */
	u8 field_0080[0x8]; /* Ghidra: undefined8, confidence=medium */
	u8 reserved_0088[0x8];
	u8 field_0090[0x8]; /* Ghidra: ulong, confidence=medium */
	u8 field_0098[0x8]; /* Ghidra: ulong, confidence=medium */
	u8 reserved_00a0[0x30];
	u8 field_00d0[0x4]; /* Ghidra: int, confidence=medium */
	u8 field_00d4[0x4]; /* Ghidra: int, confidence=medium */
	u8 reserved_00d8[0x8];
	u8 field_00e0[0x4]; /* Ghidra: undefined4, confidence=medium */
	u8 reserved_00e4[0x214];
	u8 field_02f8[0x8]; /* Ghidra: undefined8, confidence=medium */
	u8 reserved_0300[0x410];
	u8 field_0710[0x8]; /* Ghidra: long, confidence=medium */
} __aligned(8);

static_assert(offsetof(struct fp_goodix_recovered_layout, field_0006) == 0x6);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_000d) == 0xd);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_0010) == 0x10);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_0018) == 0x18);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_0020) == 0x20);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_0034) == 0x34);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_003c) == 0x3c);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_0040) == 0x40);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_0044) == 0x44);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_0048) == 0x48);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_004c) == 0x4c);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_0070) == 0x70);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_0074) == 0x74);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_0078) == 0x78);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_0080) == 0x80);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_0090) == 0x90);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_0098) == 0x98);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_00d0) == 0xd0);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_00d4) == 0xd4);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_00e0) == 0xe0);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_02f8) == 0x2f8);
static_assert(offsetof(struct fp_goodix_recovered_layout, field_0710) == 0x710);
static_assert(sizeof(struct fp_goodix_recovered_layout) == 0x718);

#endif /* _FP_GOODIX_RECOVERED_LAYOUT_H */
```

Evidências de offset recuperadas:

- `0x6` largura candidata `4` em `0002_00100de8_gf_open.c:37`; tipo Ghidra `int`, confiança `medium`.
- `0x6` largura candidata `4` em `0002_00100de8_gf_open.c:41`; tipo Ghidra `int`, confiança `medium`.
- `0x8` largura candidata `4` em `0002_00100de8_gf_open.c:40`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x8` largura candidata `4` em `0002_00100de8_gf_open.c:50`; tipo Ghidra `int`, confiança `medium`.
- `0x8` largura candidata `4` em `0002_00100de8_gf_open.c:57`; tipo Ghidra `undefined4`, confiança `medium`.
- `0xd` largura candidata `1` em `0002_00100de8_gf_open.c:62`; tipo Ghidra `undefined1`, confiança `medium`.
- `0x10` largura candidata `1` em `0016_00101f1c_sendnlmsg.c:19`; tipo Ghidra `undefined1`, confiança `medium`.
- `0x18` largura candidata `8` em `0020_001021ec_zte_goodix_pinctrl_init.c:10`; tipo Ghidra `long`, confiança `medium`.
- `0x18` largura candidata `8` em `0020_001021ec_zte_goodix_pinctrl_init.c:29`; tipo Ghidra `long`, confiança `medium`.
- `0x18` largura candidata `8` em `0021_001022c0_zte_goodix_pinctrl_select.c:30`; tipo Ghidra `long`, confiança `medium`.
- `0x18` largura candidata `8` em `0022_0010237c_gf_parse_dts.c:12`; tipo Ghidra `long`, confiança `medium`.
- `0x18` largura candidata `8` em `0022_0010237c_gf_parse_dts.c:18`; tipo Ghidra `long`, confiança `medium`.
- `0x18` largura candidata `8` em `0022_0010237c_gf_parse_dts.c:28`; tipo Ghidra `long`, confiança `medium`.
- `0x20` largura candidata `8` em `0003_00100fe8_gf_release.c:10`; tipo Ghidra `long`, confiança `medium`.
- `0x20` largura candidata `8` em `0003_00100fe8_gf_release.c:11`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x34` largura candidata `8` em `0016_00101f1c_sendnlmsg.c:18`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x38` largura candidata `4` em `0003_00100fe8_gf_release.c:12`; tipo Ghidra `int`, confiança `medium`.
- `0x38` largura candidata `4` em `0003_00100fe8_gf_release.c:13`; tipo Ghidra `int`, confiança `medium`.
- `0x3c` largura candidata `4` em `0022_0010237c_gf_parse_dts.c:50`; tipo Ghidra `int`, confiança `medium`.
- `0x3c` largura candidata `4` em `0022_0010237c_gf_parse_dts.c:57`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x3c` largura candidata `4` em `0022_0010237c_gf_parse_dts.c:60`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x3c` largura candidata `4` em `0023_001026bc_gf_cleanup.c:9`; tipo Ghidra `int`, confiança `medium`.
- `0x3c` largura candidata `4` em `0027_00102970_gf_irq_num.c:12`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x40` largura candidata `4` em `0022_0010237c_gf_parse_dts.c:39`; tipo Ghidra `int`, confiança `medium`.
- `0x40` largura candidata `4` em `0022_0010237c_gf_parse_dts.c:46`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x40` largura candidata `4` em `0022_0010237c_gf_parse_dts.c:48`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x40` largura candidata `4` em `0023_001026bc_gf_cleanup.c:10`; tipo Ghidra `int`, confiança `medium`.
- `0x40` largura candidata `4` em `0023_001026bc_gf_cleanup.c:15`; tipo Ghidra `int`, confiança `medium`.
- `0x40` largura candidata `4` em `0026_001028b4_gf_hw_reset.c:15`; tipo Ghidra `int`, confiança `medium`.
- `0x40` largura candidata `4` em `0026_001028b4_gf_hw_reset.c:17`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x40` largura candidata `4` em `0026_001028b4_gf_hw_reset.c:20`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x44` largura candidata `4` em `0002_00100de8_gf_open.c:58`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x46` largura candidata `1` em `0000_00100824_gf_ioctl.c:33`; tipo Ghidra `byte`, confiança `medium`.
- `0x46` largura candidata `1` em `0007_0010133c__inline_copy_to_user.c:11`; tipo Ghidra `byte`, confiança `medium`.
- `0x46` largura candidata `1` em `0008_001013e8__inline_copy_from_user.c:12`; tipo Ghidra `byte`, confiança `medium`.
- `0x48` largura candidata `4` em `0003_00100fe8_gf_release.c:15`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x48` largura candidata `4` em `0003_00100fe8_gf_release.c:16`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x48` largura candidata `4` em `0003_00100fe8_gf_release.c:22`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x48` largura candidata `4` em `0003_00100fe8_gf_release.c:24`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x48` largura candidata `4` em `0004_001010d8_gf_disable_irq.c:10`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x4c` largura candidata `4` em `0002_00100de8_gf_open.c:22`; tipo Ghidra `int`, confiança `medium`.
- `0x4c` largura candidata `4` em `0002_00100de8_gf_open.c:34`; tipo Ghidra `uint`, confiança `medium`.
- `0x4c` largura candidata `4` em `0003_00100fe8_gf_release.c:17`; tipo Ghidra `int`, confiança `medium`.
- `0x4c` largura candidata `4` em `0003_00100fe8_gf_release.c:21`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x4c` largura candidata `4` em `0004_001010d8_gf_disable_irq.c:5`; tipo Ghidra `int`, confiança `medium`.
- `0x4c` largura candidata `4` em `0004_001010d8_gf_disable_irq.c:9`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x70` largura candidata `1` em `0003_00100fe8_gf_release.c:26`; tipo Ghidra `undefined1`, confiança `medium`.
- `0x70` largura candidata `1` em `0015_00101db8_goodix_fb_state_chg_callback.c:17`; tipo Ghidra `char`, confiança `medium`.
- `0x70` largura candidata `4` em `0018_001020c8_nl_data_ready.c:31`; tipo Ghidra `uint`, confiança `medium`.
- `0x71` largura candidata `1` em `0015_00101db8_goodix_fb_state_chg_callback.c:22`; tipo Ghidra `undefined1`, confiança `medium`.
- `0x71` largura candidata `1` em `0015_00101db8_goodix_fb_state_chg_callback.c:32`; tipo Ghidra `undefined1`, confiança `medium`.
- `0x74` largura candidata `4` em `0016_00101f1c_sendnlmsg.c:15`; tipo Ghidra `int`, confiança `medium`.
- `0x78` largura candidata `8` em `0003_00100fe8_gf_release.c:27`; tipo Ghidra `long`, confiança `medium`.
- `0x78` largura candidata `8` em `0003_00100fe8_gf_release.c:30`; tipo Ghidra `long`, confiança `medium`.
- `0x78` largura candidata `8` em `0022_0010237c_gf_parse_dts.c:67`; tipo Ghidra `long`, confiança `medium`.
- `0x78` largura candidata `8` em `0022_0010237c_gf_parse_dts.c:68`; tipo Ghidra `long`, confiança `medium`.
- `0x78` largura candidata `8` em `0022_0010237c_gf_parse_dts.c:70`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x78` largura candidata `8` em `0022_0010237c_gf_parse_dts.c:77`; tipo Ghidra `long`, confiança `medium`.
- `0x78` largura candidata `8` em `0022_0010237c_gf_parse_dts.c:78`; tipo Ghidra `long`, confiança `medium`.
- `0x78` largura candidata `8` em `0022_0010237c_gf_parse_dts.c:80`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x78` largura candidata `8` em `0022_0010237c_gf_parse_dts.c:88`; tipo Ghidra `long`, confiança `medium`.
- `0x78` largura candidata `8` em `0022_0010237c_gf_parse_dts.c:89`; tipo Ghidra `long`, confiança `medium`.
- `0x78` largura candidata `8` em `0022_0010237c_gf_parse_dts.c:90`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x80` largura candidata `8` em `0020_001021ec_zte_goodix_pinctrl_init.c:20`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x80` largura candidata `8` em `0020_001021ec_zte_goodix_pinctrl_init.c:31`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x80` largura candidata `8` em `0021_001022c0_zte_goodix_pinctrl_select.c:20`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x80` largura candidata `8` em `0022_0010237c_gf_parse_dts.c:15`; tipo Ghidra `long`, confiança `medium`.
- `0x80` largura candidata `8` em `0022_0010237c_gf_parse_dts.c:26`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x90` largura candidata `8` em `0022_0010237c_gf_parse_dts.c:17`; tipo Ghidra `ulong`, confiança `medium`.
- `0x98` largura candidata `8` em `0022_0010237c_gf_parse_dts.c:34`; tipo Ghidra `ulong`, confiança `medium`.
- `0x98` largura candidata `4` em `0022_0010237c_gf_parse_dts.c:95`; tipo Ghidra `int`, confiança `medium`.
- `0x98` largura candidata `8` em `0023_001026bc_gf_cleanup.c:21`; tipo Ghidra `ulong`, confiança `medium`.
- `0x98` largura candidata `8` em `0023_001026bc_gf_cleanup.c:27`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x98` largura candidata `8` em `0024_0010276c_gf_power_on.c:8`; tipo Ghidra `ulong`, confiança `medium`.
- `0x98` largura candidata `8` em `0024_0010276c_gf_power_on.c:14`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x98` largura candidata `8` em `0024_0010276c_gf_power_on.c:16`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x98` largura candidata `8` em `0025_00102810_gf_power_off.c:8`; tipo Ghidra `ulong`, confiança `medium`.
- `0x98` largura candidata `8` em `0025_00102810_gf_power_off.c:14`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x98` largura candidata `8` em `0025_00102810_gf_power_off.c:20`; tipo Ghidra `undefined8`, confiança `medium`.
- `0xd0` largura candidata `4` em `0016_00101f1c_sendnlmsg.c:16`; tipo Ghidra `int`, confiança `medium`.
- `0xd4` largura candidata `4` em `0016_00101f1c_sendnlmsg.c:16`; tipo Ghidra `int`, confiança `medium`.
- `0xe0` largura candidata `4` em `0018_001020c8_nl_data_ready.c:32`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x2f8` largura candidata `8` em `0012_00101ac0_goodixfp_init_drm_notifier.c:9`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x2f8` largura candidata `8` em `0012_00101ac0_goodixfp_init_drm_notifier.c:18`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x2f8` largura candidata `8` em `0022_0010237c_gf_parse_dts.c:13`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x710` largura candidata `8` em `0000_00100824_gf_ioctl.c:20`; tipo Ghidra `long`, confiança `medium`.
- `0x710` largura candidata `8` em `0000_00100824_gf_ioctl.c:204`; tipo Ghidra `long`, confiança `medium`.
- `0x710` largura candidata `8` em `0009_001014d8_gf_irq.c:10`; tipo Ghidra `long`, confiança `medium`.
- `0x710` largura candidata `8` em `0009_001014d8_gf_irq.c:16`; tipo Ghidra `long`, confiança `medium`.
- `0x710` largura candidata `8` em `0014_00101c64_goodixfp_drm_get_pannel.c:25`; tipo Ghidra `long`, confiança `medium`.
- `0x710` largura candidata `8` em `0014_00101c64_goodixfp_drm_get_pannel.c:69`; tipo Ghidra `long`, confiança `medium`.
- `0x710` largura candidata `8` em `0015_00101db8_goodix_fb_state_chg_callback.c:11`; tipo Ghidra `long`, confiança `medium`.
- `0x710` largura candidata `8` em `0015_00101db8_goodix_fb_state_chg_callback.c:45`; tipo Ghidra `long`, confiança `medium`.
- `0x710` largura candidata `8` em `0017_0010202c_netlink_init.c:15`; tipo Ghidra `long`, confiança `medium`.
- `0x710` largura candidata `8` em `0017_0010202c_netlink_init.c:27`; tipo Ghidra `long`, confiança `medium`.

Contexto do Device Tree ativo:

- `/soc/goodix_fp` (linhas 5403-5419, score `80`, compatible `goodix,fingerprint`).
- Recortes completos: `04_documents/fp_goodix.ko/dts_context.dts`; evidência estruturada: `04_documents/fp_goodix.ko/dts_context.json`.

Regras de concorrência: aplicar `__rcu` somente quando chamadas RCU e a vida útil do ponteiro forem comprovadas; derivar `mutex`, `spinlock_t` ou `raw_spinlock_t` das primitivas observadas e do contexto de execução. Validar todo callback indireto sob CFI e executar KASAN/KCSAN após cada bloco reconstruído.

## 3. Prompts de Execução Isolada (Micro-Tarefas)

1. Função `gf_ioctl`

> Implemente somente a função `undefined gf_ioctl()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0000_00100824_gf_ioctl.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0000_00100824_gf_ioctl.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`, `gf_disable_irq`, `gf_power_off`, `gf_hw_reset`, `_inline_copy_from_user`, `gf_cleanup`, `_inline_copy_to_user`, `gf_power_on`, `nav_event_input`, `gf_enable_irq`, `<EXTERNAL>::input_event`, `<EXTERNAL>::__stack_chk_fail`. Offsets observados nesta função: `0x46/1B`, `0x710/8B`, `0x710/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

2. Função `gf_compat_ioctl`

> Implemente somente a função `undefined gf_compat_ioctl()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0001_00100dc4_gf_compat_ioctl.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0001_00100dc4_gf_compat_ioctl.jsonl`. Chamadas observadas: `gf_ioctl`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

3. Função `gf_open`

> Implemente somente a função `undefined gf_open()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0002_00100de8_gf_open.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0002_00100de8_gf_open.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`, `<EXTERNAL>::mutex_lock`, `<EXTERNAL>::zlog_register_client`, `<EXTERNAL>::mutex_unlock`, `<EXTERNAL>::nonseekable_open`, `gf_parse_dts`, `gf_irq_num`, `<EXTERNAL>::request_threaded_irq`, `<EXTERNAL>::irq_set_irq_wake`, `gf_hw_reset`, `gf_cleanup`. Offsets observados nesta função: `0x6/4B`, `0x6/4B`, `0x8/4B`, `0x8/4B`, `0x8/4B`, `0xd/1B`, `0x44/4B`, `0x4c/4B`, `0x4c/4B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

4. Função `gf_release`

> Implemente somente a função `undefined gf_release()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0003_00100fe8_gf_release.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0003_00100fe8_gf_release.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`, `<EXTERNAL>::mutex_lock`, `<EXTERNAL>::mutex_unlock`, `<EXTERNAL>::irq_set_irq_wake`, `<EXTERNAL>::disable_irq`, `<EXTERNAL>::free_irq`, `gf_cleanup`, `<EXTERNAL>::zlog_unregister_client`. Offsets observados nesta função: `0x20/8B`, `0x20/8B`, `0x38/4B`, `0x38/4B`, `0x48/4B`, `0x48/4B`, `0x48/4B`, `0x48/4B`, `0x4c/4B`, `0x4c/4B`, `0x70/1B`, `0x78/8B`, `0x78/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

5. Função `gf_disable_irq`

> Implemente somente a função `undefined gf_disable_irq()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0004_001010d8_gf_disable_irq.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0004_001010d8_gf_disable_irq.jsonl`. Chamadas observadas: `<EXTERNAL>::disable_irq`, `<EXTERNAL>::_printk`. Offsets observados nesta função: `0x48/4B`, `0x4c/4B`, `0x4c/4B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

6. Função `gf_enable_irq`

> Implemente somente a função `undefined gf_enable_irq()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0005_00101118_gf_enable_irq.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0005_00101118_gf_enable_irq.jsonl`. Chamadas observadas: `<EXTERNAL>::enable_irq`, `<EXTERNAL>::_printk`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

7. Função `nav_event_input`

> Implemente somente a função `undefined nav_event_input()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0006_0010116c_nav_event_input.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0006_0010116c_nav_event_input.jsonl`. Chamadas observadas: `<EXTERNAL>::input_event`, `<EXTERNAL>::_printk`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

8. Função `_inline_copy_to_user`

> Implemente somente a função `undefined _inline_copy_to_user()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0007_0010133c__inline_copy_to_user.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0007_0010133c__inline_copy_to_user.jsonl`. Chamadas observadas: `<EXTERNAL>::__arch_copy_to_user`. Offsets observados nesta função: `0x46/1B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

9. Função `_inline_copy_from_user`

> Implemente somente a função `undefined _inline_copy_from_user()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0008_001013e8__inline_copy_from_user.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0008_001013e8__inline_copy_from_user.jsonl`. Chamadas observadas: `<EXTERNAL>::memset`, `<EXTERNAL>::__arch_copy_from_user`. Offsets observados nesta função: `0x46/1B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

10. Função `gf_irq`

> Implemente somente a função `undefined gf_irq()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0009_001014d8_gf_irq.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0009_001014d8_gf_irq.jsonl`. Chamadas observadas: `<EXTERNAL>::pm_wakeup_ws_event`, `<EXTERNAL>::_printk`, `sendnlmsg`, `<EXTERNAL>::__stack_chk_fail`. Offsets observados nesta função: `0x710/8B`, `0x710/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

11. Função `gf_probe`

> Implemente somente a função `undefined gf_probe()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0010_00101554_gf_probe.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0010_00101554_gf_probe.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`, `<EXTERNAL>::alloc_workqueue`, `<EXTERNAL>::init_timer_key`, `<EXTERNAL>::queue_delayed_work_on`, `<EXTERNAL>::mutex_lock`, `<EXTERNAL>::device_create`, `<EXTERNAL>::mutex_unlock`, `gf_cleanup`, `<EXTERNAL>::input_allocate_device`, `<EXTERNAL>::input_set_capability`, `<EXTERNAL>::input_register_device`, `<EXTERNAL>::wakeup_source_add`, `<EXTERNAL>::input_free_device`, `list_del`, `<EXTERNAL>::device_destroy`, `<EXTERNAL>::__list_add_valid_or_report`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

12. Função `gf_remove`

> Implemente somente a função `undefined gf_remove()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0011_00101968_gf_remove.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0011_00101968_gf_remove.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`, `<EXTERNAL>::wakeup_source_remove`, `<EXTERNAL>::input_unregister_device`, `<EXTERNAL>::input_free_device`, `<EXTERNAL>::mutex_lock`, `<EXTERNAL>::device_destroy`, `<EXTERNAL>::panel_event_notifier_unregister`, `<EXTERNAL>::cancel_delayed_work_sync`, `<EXTERNAL>::destroy_workqueue`, `<EXTERNAL>::mutex_unlock`, `<EXTERNAL>::__list_del_entry_valid_or_report`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

13. Função `goodixfp_init_drm_notifier`

> Implemente somente a função `undefined goodixfp_init_drm_notifier()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0012_00101ac0_goodixfp_init_drm_notifier.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0012_00101ac0_goodixfp_init_drm_notifier.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`, `goodixfp_drm_get_pannel`, `<EXTERNAL>::usleep_range_state`, `<EXTERNAL>::panel_event_notifier_register`. Offsets observados nesta função: `0x2f8/8B`, `0x2f8/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

14. Função `list_del`

> Implemente somente a função `undefined list_del()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0013_00101bf8_list_del.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0013_00101bf8_list_del.jsonl`. Chamadas observadas: `<EXTERNAL>::__list_del_entry_valid_or_report`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

15. Função `goodixfp_drm_get_pannel`

> Implemente somente a função `undefined goodixfp_drm_get_pannel()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0014_00101c64_goodixfp_drm_get_pannel.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0014_00101c64_goodixfp_drm_get_pannel.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`, `<EXTERNAL>::of_count_phandle_with_args`, `<EXTERNAL>::__of_parse_phandle_with_args`, `<EXTERNAL>::of_drm_find_panel`, `<EXTERNAL>::__stack_chk_fail`. Offsets observados nesta função: `0x710/8B`, `0x710/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

16. Função `goodix_fb_state_chg_callback`

> Implemente somente a função `undefined goodix_fb_state_chg_callback()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0015_00101db8_goodix_fb_state_chg_callback.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0015_00101db8_goodix_fb_state_chg_callback.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`, `sendnlmsg`, `<EXTERNAL>::__stack_chk_fail`. Offsets observados nesta função: `0x70/1B`, `0x71/1B`, `0x71/1B`, `0x710/8B`, `0x710/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

17. Função `sendnlmsg`

> Implemente somente a função `undefined sendnlmsg()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0016_00101f1c_sendnlmsg.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0016_00101f1c_sendnlmsg.jsonl`. Chamadas observadas: `<EXTERNAL>::__alloc_skb`, `<EXTERNAL>::__nlmsg_put`, `<EXTERNAL>::sk_skb_reason_drop`, `<EXTERNAL>::_printk`, `<EXTERNAL>::netlink_unicast`. Offsets observados nesta função: `0x10/1B`, `0x34/8B`, `0x74/4B`, `0xd0/4B`, `0xd4/4B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

18. Função `netlink_init`

> Implemente somente a função `undefined netlink_init()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0017_0010202c_netlink_init.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0017_0010202c_netlink_init.jsonl`. Chamadas observadas: `<EXTERNAL>::__netlink_kernel_create`, `<EXTERNAL>::_printk`, `<EXTERNAL>::__stack_chk_fail`. Offsets observados nesta função: `0x710/8B`, `0x710/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

19. Função `nl_data_ready`

> Implemente somente a função `undefined nl_data_ready()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0018_001020c8_nl_data_ready.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0018_001020c8_nl_data_ready.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`, `<EXTERNAL>::sk_skb_reason_drop`, `<EXTERNAL>::refcount_warn_saturate`. Offsets observados nesta função: `0x70/4B`, `0xe0/4B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

20. Função `netlink_exit`

> Implemente somente a função `undefined netlink_exit()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0019_001021a8_netlink_exit.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0019_001021a8_netlink_exit.jsonl`. Chamadas observadas: `<EXTERNAL>::netlink_kernel_release`, `<EXTERNAL>::_printk`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

21. Função `zte_goodix_pinctrl_init`

> Implemente somente a função `undefined zte_goodix_pinctrl_init()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0020_001021ec_zte_goodix_pinctrl_init.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0020_001021ec_zte_goodix_pinctrl_init.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`, `<EXTERNAL>::devm_pinctrl_get`, `<EXTERNAL>::pinctrl_lookup_state`, `<EXTERNAL>::_dev_err`. Offsets observados nesta função: `0x18/8B`, `0x18/8B`, `0x80/8B`, `0x80/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

22. Função `zte_goodix_pinctrl_select`

> Implemente somente a função `undefined zte_goodix_pinctrl_select()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0021_001022c0_zte_goodix_pinctrl_select.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0021_001022c0_zte_goodix_pinctrl_select.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`, `<EXTERNAL>::pinctrl_select_state`, `<EXTERNAL>::_dev_err`. Offsets observados nesta função: `0x18/8B`, `0x80/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

23. Função `gf_parse_dts`

> Implemente somente a função `undefined gf_parse_dts()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0022_0010237c_gf_parse_dts.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0022_0010237c_gf_parse_dts.jsonl`. Chamadas observadas: `zte_goodix_pinctrl_init`, `<EXTERNAL>::_printk`, `<EXTERNAL>::pinctrl_select_state`, `<EXTERNAL>::_dev_err`, `<EXTERNAL>::usleep_range_state`, `<EXTERNAL>::devm_regulator_get`, `<EXTERNAL>::regulator_enable`, `<EXTERNAL>::of_get_named_gpio`, `<EXTERNAL>::zlog_client_record`, `<EXTERNAL>::zlog_client_notify`, `<EXTERNAL>::devm_gpio_request`, `<EXTERNAL>::gpio_to_desc`, `<EXTERNAL>::gpiod_direction_input`. Offsets observados nesta função: `0x18/8B`, `0x18/8B`, `0x18/8B`, `0x3c/4B`, `0x3c/4B`, `0x3c/4B`, `0x40/4B`, `0x40/4B`, `0x40/4B`, `0x78/8B`, `0x78/8B`, `0x78/8B`, `0x78/8B`, `0x78/8B`, `0x78/8B`, `0x78/8B`, `0x78/8B`, `0x78/8B`, `0x80/8B`, `0x80/8B`, `0x90/8B`, `0x98/8B`, `0x98/4B`, `0x2f8/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

24. Função `gf_cleanup`

> Implemente somente a função `undefined gf_cleanup()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0023_001026bc_gf_cleanup.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0023_001026bc_gf_cleanup.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`, `<EXTERNAL>::gpio_free`, `<EXTERNAL>::regulator_is_enabled`, `<EXTERNAL>::regulator_disable`. Offsets observados nesta função: `0x3c/4B`, `0x40/4B`, `0x40/4B`, `0x98/8B`, `0x98/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

25. Função `gf_power_on`

> Implemente somente a função `undefined gf_power_on()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0024_0010276c_gf_power_on.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0024_0010276c_gf_power_on.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`, `<EXTERNAL>::regulator_is_enabled`, `<EXTERNAL>::regulator_enable`. Offsets observados nesta função: `0x98/8B`, `0x98/8B`, `0x98/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

26. Função `gf_power_off`

> Implemente somente a função `undefined gf_power_off()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0025_00102810_gf_power_off.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0025_00102810_gf_power_off.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`, `<EXTERNAL>::regulator_is_enabled`, `<EXTERNAL>::regulator_disable`. Offsets observados nesta função: `0x98/8B`, `0x98/8B`, `0x98/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

27. Função `gf_hw_reset`

> Implemente somente a função `undefined gf_hw_reset()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0026_001028b4_gf_hw_reset.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0026_001028b4_gf_hw_reset.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`, `<EXTERNAL>::gpio_to_desc`, `<EXTERNAL>::gpiod_set_raw_value`, `<EXTERNAL>::usleep_range_state`, `<EXTERNAL>::__const_udelay`. Offsets observados nesta função: `0x40/4B`, `0x40/4B`, `0x40/4B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

28. Função `gf_irq_num`

> Implemente somente a função `undefined gf_irq_num()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0027_00102970_gf_irq_num.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0027_00102970_gf_irq_num.jsonl`. Chamadas observadas: `<EXTERNAL>::gpio_to_desc`, `<EXTERNAL>::gpiod_to_irq`, `<EXTERNAL>::_printk`. Offsets observados nesta função: `0x3c/4B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

29. Função `init_module`

> Implemente somente a função `undefined init_module()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0028_001029b0_init_module.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0028_001029b0_init_module.jsonl`. Chamadas observadas: `<EXTERNAL>::__register_chrdev`, `<EXTERNAL>::_printk`, `<EXTERNAL>::class_create`, `<EXTERNAL>::__unregister_chrdev`, `<EXTERNAL>::__platform_driver_register`, `<EXTERNAL>::class_destroy`, `netlink_init`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

30. Função `cleanup_module`

> Implemente somente a função `undefined cleanup_module()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/fp_goodix.ko/decompiled/0029_00102ac8_cleanup_module.c` e o P-Code `03_ghidra/exports/fp_goodix.ko/pcode/0029_00102ac8_cleanup_module.jsonl`. Chamadas observadas: `netlink_exit`, `<EXTERNAL>::platform_driver_unregister`, `<EXTERNAL>::class_destroy`, `<EXTERNAL>::__unregister_chrdev`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.
