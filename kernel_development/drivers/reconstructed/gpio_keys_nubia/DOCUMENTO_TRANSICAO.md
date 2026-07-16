Módulo analisado: `gpio_keys_nubia.ko`

SHA-256: `8cb89f5068195396a5db5fba1c51f2cf6056884dbb00f7ee8af5041ccd6f32b3`

Origem: `/vendor_dlkm/lib/modules/gpio_keys_nubia.ko`
Status: documento gerado automaticamente a partir de ELF, Ghidra e referência local `Module.symvers`; inferências permanecem explicitamente marcadas.

## 1. Mapeamento de Assinaturas (Conformidade GKI 6.12.23)

**Assinaturas locais recuperadas pelo Ghidra**

- `0010071c` `undefined gpio_keys_probe()` (decompilação: ok)
- `00101530` `undefined gpio_keys_shutdown()` (decompilação: ok)
- `00101578` `undefined gpio_keys_open()` (decompilação: ok)
- `0010163c` `undefined gpio_keys_close()` (decompilação: ok)
- `00101684` `undefined gpio_keys_gpio_report_event()` (decompilação: ok)
- `0010181c` `undefined gpio_keys_gpio_work_func()` (decompilação: ok)
- `00101878` `undefined gpio_keys_gpio_isr()` (decompilação: ok)
- `00101928` `undefined gpio_keys_irq_timer()` (decompilação: ok)
- `001019b0` `undefined gpio_keys_irq_isr()` (decompilação: ok)
- `00101acc` `undefined gpio_keys_quiesce_key()` (decompilação: ok)
- `00101b04` `undefined gpio_keys_suspend()` (decompilação: ok)
- `00101d18` `undefined gpio_keys_show_keys()` (decompilação: ok)
- `00101d44` `undefined gpio_keys_attr_show_helper()` (decompilação: ok)
- `00101e88` `undefined gpio_keys_show_switches()` (decompilação: ok)
- `00101eb8` `undefined gpio_keys_show_disabled_keys()` (decompilação: ok)
- `00101ee8` `undefined gpio_keys_store_disabled_keys()` (decompilação: ok)
- `00101f24` `undefined gpio_keys_attr_store_helper()` (decompilação: ok)
- `00102248` `undefined gpio_keys_show_disabled_switches()` (decompilação: ok)
- `00102278` `undefined gpio_keys_store_disabled_switches()` (decompilação: ok)
- `001022b8` `undefined gpio_keys_show_GamekeyStatus()` (decompilação: ok)
- `00102388` `undefined gpio_keys_store_GamekeyStatus()` (decompilação: ok)
- `001023c0` `undefined gpio_keys_resume()` (decompilação: ok)
- `001025f4` `undefined init_module()` (decompilação: ok)
- `00102624` `undefined cleanup_module()` (decompilação: ok)

**Auditoria de símbolos GKI**

- Símbolos indefinidos no módulo: `63`; encontrados no `Module.symvers` local: `63`; fornecidos por módulos vendor com `__ksymtab_*`: `0`; não resolvidos: `0`.
- `__devm_add_action` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x777b6f83`.
- `__msecs_to_jiffies` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x7162a662`.
- `__mutex_init` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x81d49dc6`.
- `__platform_driver_register` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x58997344`.
- `__stack_chk_fail` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xd272d446`.
- `_dev_err` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x4a35b4cb`.
- `_dev_warn` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x4a35b4cb`.
- `_printk` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x16b5b21d`.
- `_raw_spin_lock_irqsave` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xaa615763`.
- `_raw_spin_unlock_irqrestore` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x582af1c8`.
- `bitmap_free` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x29bbfbca`.
- `bitmap_parselist` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x86872597`.
- `bitmap_zalloc` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x0ba424ad`.
- `cancel_delayed_work_sync` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xba6d2f6c`.
- `delayed_work_timer_fn` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xb0f9b474`.
- `device_get_child_node_count` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x4b458a3e`.
- `device_get_next_child_node` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x878fde6a`.
- `device_property_present` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x091f4c7c`.
- `device_property_read_string` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x65c252f4`.
- `device_set_wakeup_capable` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xa71696c5`.
- `device_wakeup_disable` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x0ce73b9f`.
- `device_wakeup_enable` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xb626596a`.
- `devm_fwnode_gpiod_get_index` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x5bec3c57`.
- `devm_gpio_request_one` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xe7fd1854`.
- `devm_input_allocate_device` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x41b81ae5`.
- `devm_kmalloc` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x1445db3f`.
- `devm_request_any_context_irq` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x89f413fd`.
- `disable_irq` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x8e3336dd`.
- `enable_irq` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x8e3336dd`.
- `fwnode_property_present` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x339f0745`.
- `fwnode_property_read_string` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x5189e13f`.
- `fwnode_property_read_u32_array` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x2d582ece`.
- `gpio_to_desc` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xcd6e7616`.
- `gpiod_get_raw_value` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x736db730`.
- `gpiod_get_value_cansleep` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x736db730`.
- `gpiod_set_debounce` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xa2671c7c`.
- `gpiod_to_irq` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x736db730`.
- `init_timer_key` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x534026f3`.
- `input_event` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x8afeee90`.
- `input_register_device` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x83b2ff0b`.
- `input_set_capability` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xf447e7b4`.
- `irq_get_irq_data` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x6ff6c77a`.
- `irq_of_parse_and_map` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xd98895e9`.
- `irq_set_irq_type` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x8ff6b033`.
- `irq_set_irq_wake` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xfe9be5a6`.
- `jiffies` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xf2a4b08a`.
- `mod_delayed_work_on` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x92339a9b`.
- `mod_timer` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x03dbf6a5`.
- `mutex_lock` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x995658e3`.
- `mutex_unlock` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x995658e3`.
- `of_fwnode_ops` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xb5a8a2f9`.
- `of_get_named_gpio` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x2c6cfe34`.
- `of_get_next_child` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x9c1b9f02`.
- `of_property_read_string` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x45ed543a`.
- `platform_driver_unregister` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0xbd0cdbf7`.
- `pm_relax` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x0ce73b9f`.
- `pm_stay_awake` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x0ce73b9f`.
- `pm_wakeup_dev_event` -> `EXPORT_SYMBOL_GPL`, provedor `vmlinux`, namespace `global`, CRC `0x57ecbb9d`.
- `scnprintf` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xf4386284`.
- `snprintf` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xf4386284`.
- `strcmp` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0xf5df0401`.
- `system_wq` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x571c73d5`.
- `timer_delete_sync` -> `EXPORT_SYMBOL`, provedor `vmlinux`, namespace `global`, CRC `0x5f54576f`.

**Vendor Hooks observados**

- Nenhum Vendor Hook Android foi referenciado diretamente. Não adicionar hook por suposição; qualquer acesso reconstruído a membro privado do núcleo deve ser redesenhado sobre API exportada ou mapeado para um hook existente antes da implementação.

**Imports de namespace necessários**

- Nenhum `MODULE_IMPORT_NS()` foi comprovado pelas evidências atuais.

**Regras de ABI e CFI**

- Compilar como módulo out-of-tree para `vendor_dlkm`; não usar símbolos apenas presentes em `kallsyms` sem entrada exportada e compatível no `Module.symvers`/KMI.
- Callbacks devem manter protótipos idênticos aos tipos do Kernel 6.12.23. É proibido silenciar incompatibilidade com cast de ponteiro de função, pois isso viola CFI.
- O endereço e o protótipo do Ghidra são evidência de reconstrução, não substituem a declaração canônica dos headers do kernel.

## 2. Estrutura de Dados Estrita e Offsets (Arquivos .h)

Cabeçalho gerado: `04_documents/gpio_keys_nubia.ko/include/gpio_keys_nubia_recovered_layout.h`.

Os membros abaixo são mapas byte-a-byte para impedir padding implícito em AArch64. Campos de largura incerta permanecem `u8[]`; somente após confirmação no P-Code/DTS devem virar tipos funcionais. Sobreposições são preservadas como macros de offset e precisam ser modeladas como `union` manualmente.

```c
/* SPDX-License-Identifier: GPL-2.0-only */
/* Auto-generated evidence map. Validate every field against Ghidra and DTS before use. */
#ifndef _GPIO_KEYS_NUBIA_RECOVERED_LAYOUT_H
#define _GPIO_KEYS_NUBIA_RECOVERED_LAYOUT_H

#include <linux/build_bug.h>
#include <linux/stddef.h>
#include <linux/types.h>

#define GPIO_KEYS_NUBIA_OFFSET_0001 0x1u
#define GPIO_KEYS_NUBIA_OFFSET_0002 0x2u
#define GPIO_KEYS_NUBIA_OFFSET_0008 0x8u
#define GPIO_KEYS_NUBIA_OFFSET_0009 0x9u
#define GPIO_KEYS_NUBIA_OFFSET_000A 0xau
#define GPIO_KEYS_NUBIA_OFFSET_0010 0x10u
#define GPIO_KEYS_NUBIA_OFFSET_0017 0x17u
#define GPIO_KEYS_NUBIA_OFFSET_0018 0x18u
#define GPIO_KEYS_NUBIA_OFFSET_0019 0x19u
#define GPIO_KEYS_NUBIA_OFFSET_001B 0x1bu
#define GPIO_KEYS_NUBIA_OFFSET_001C 0x1cu
#define GPIO_KEYS_NUBIA_OFFSET_0020 0x20u
#define GPIO_KEYS_NUBIA_OFFSET_0028 0x28u
#define GPIO_KEYS_NUBIA_OFFSET_0038 0x38u
#define GPIO_KEYS_NUBIA_OFFSET_0042 0x42u
#define GPIO_KEYS_NUBIA_OFFSET_0048 0x48u
#define GPIO_KEYS_NUBIA_OFFSET_004E 0x4eu
#define GPIO_KEYS_NUBIA_OFFSET_0050 0x50u
#define GPIO_KEYS_NUBIA_OFFSET_0058 0x58u
#define GPIO_KEYS_NUBIA_OFFSET_0098 0x98u
#define GPIO_KEYS_NUBIA_OFFSET_00BC 0xbcu
#define GPIO_KEYS_NUBIA_OFFSET_00C4 0xc4u
#define GPIO_KEYS_NUBIA_OFFSET_00D4 0xd4u
#define GPIO_KEYS_NUBIA_OFFSET_00E9 0xe9u
#define GPIO_KEYS_NUBIA_OFFSET_0104 0x104u
#define GPIO_KEYS_NUBIA_OFFSET_0108 0x108u
#define GPIO_KEYS_NUBIA_OFFSET_0109 0x109u
#define GPIO_KEYS_NUBIA_OFFSET_010A 0x10au
#define GPIO_KEYS_NUBIA_OFFSET_010C 0x10cu
#define GPIO_KEYS_NUBIA_OFFSET_0148 0x148u
#define GPIO_KEYS_NUBIA_OFFSET_0150 0x150u
#define GPIO_KEYS_NUBIA_OFFSET_0152 0x152u
#define GPIO_KEYS_NUBIA_OFFSET_0228 0x228u
#define GPIO_KEYS_NUBIA_OFFSET_0290 0x290u
#define GPIO_KEYS_NUBIA_OFFSET_0710 0x710u

struct gpio_keys_nubia_recovered_layout {
	u8 reserved_0000[0x1];
	u8 field_0001[0x4]; /* Ghidra: int, confidence=medium */
	u8 reserved_0005[0x3];
	u8 field_0008[0x8]; /* Ghidra: long, confidence=medium */
	u8 field_0010[0x8]; /* Ghidra: long, confidence=medium */
	u8 field_0018[0x4]; /* Ghidra: undefined4, confidence=medium */
	u8 field_001c[0x4]; /* Ghidra: int, confidence=medium */
	u8 field_0020[0x4]; /* Ghidra: undefined4, confidence=medium */
	u8 reserved_0024[0x4];
	u8 field_0028[0x1]; /* Ghidra: char, confidence=medium */
	u8 reserved_0029[0xf];
	u8 field_0038[0x4]; /* Ghidra: int, confidence=medium */
	u8 reserved_003c[0x6];
	u8 field_0042[0x1]; /* Ghidra: undefined1, confidence=medium */
	u8 reserved_0043[0x5];
	u8 field_0048[0x4]; /* Ghidra: int, confidence=medium */
	u8 reserved_004c[0x2];
	u8 field_004e[0x1]; /* Ghidra: undefined1, confidence=medium */
	u8 reserved_004f[0x1];
	u8 field_0050[0x8]; /* Ghidra: undefined8, confidence=medium */
	u8 field_0058[0x8]; /* Ghidra: long, confidence=medium */
	u8 reserved_0060[0x38];
	u8 field_0098[0x8]; /* Ghidra: undefined8, confidence=medium */
	u8 reserved_00a0[0x1c];
	u8 field_00bc[0x4]; /* Ghidra: int, confidence=medium */
	u8 reserved_00c0[0x4];
	u8 field_00c4[0x4]; /* Ghidra: undefined4, confidence=medium */
	u8 reserved_00c8[0xc];
	u8 field_00d4[0x4]; /* Ghidra: int, confidence=medium */
	u8 reserved_00d8[0x11];
	u8 field_00e9[0x1]; /* Ghidra: char, confidence=medium */
	u8 reserved_00ea[0x1a];
	u8 field_0104[0x4]; /* Ghidra: undefined4, confidence=medium */
	u8 field_0108[0x4]; /* Ghidra: int, confidence=medium */
	u8 field_010c[0x2]; /* Ghidra: ushort, confidence=medium */
	u8 reserved_010e[0x3a];
	u8 field_0148[0x8]; /* Ghidra: long, confidence=medium */
	u8 field_0150[0x1]; /* Ghidra: byte, confidence=medium */
	u8 reserved_0151[0x1];
	u8 field_0152[0x1]; /* Ghidra: undefined1, confidence=medium */
	u8 reserved_0153[0xd5];
	u8 field_0228[0x4]; /* Ghidra: int, confidence=medium */
	u8 reserved_022c[0x64];
	u8 field_0290[0x8]; /* Ghidra: undefined8, confidence=medium */
	u8 reserved_0298[0x478];
	u8 field_0710[0x8]; /* Ghidra: long, confidence=medium */
} __aligned(8);

static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0001) == 0x1);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0008) == 0x8);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0010) == 0x10);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0018) == 0x18);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_001c) == 0x1c);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0020) == 0x20);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0028) == 0x28);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0038) == 0x38);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0042) == 0x42);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0048) == 0x48);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_004e) == 0x4e);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0050) == 0x50);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0058) == 0x58);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0098) == 0x98);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_00bc) == 0xbc);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_00c4) == 0xc4);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_00d4) == 0xd4);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_00e9) == 0xe9);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0104) == 0x104);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0108) == 0x108);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_010c) == 0x10c);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0148) == 0x148);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0150) == 0x150);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0152) == 0x152);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0228) == 0x228);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0290) == 0x290);
static_assert(offsetof(struct gpio_keys_nubia_recovered_layout, field_0710) == 0x710);
static_assert(sizeof(struct gpio_keys_nubia_recovered_layout) == 0x718);

#endif /* _GPIO_KEYS_NUBIA_RECOVERED_LAYOUT_H */
```

Evidências de offset recuperadas:

- `0x1` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:50`; tipo Ghidra `int`, confiança `medium`.
- `0x1` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:142`; tipo Ghidra `uint`, confiança `medium`.
- `0x1` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:147`; tipo Ghidra `uint`, confiança `medium`.
- `0x2` largura candidata `1` em `0000_0010071c_gpio_keys_probe.c:54`; tipo Ghidra `byte`, confiança `medium`.
- `0x2` largura candidata `1` em `0000_0010071c_gpio_keys_probe.c:182`; tipo Ghidra `byte`, confiança `medium`.
- `0x8` largura candidata `8` em `0000_0010071c_gpio_keys_probe.c:72`; tipo Ghidra `long`, confiança `medium`.
- `0x8` largura candidata `8` em `0000_0010071c_gpio_keys_probe.c:73`; tipo Ghidra `long`, confiança `medium`.
- `0x8` largura candidata `8` em `0000_0010071c_gpio_keys_probe.c:409`; tipo Ghidra `long`, confiança `medium`.
- `0x8` largura candidata `8` em `0000_0010071c_gpio_keys_probe.c:410`; tipo Ghidra `long`, confiança `medium`.
- `0x8` largura candidata `8` em `0000_0010071c_gpio_keys_probe.c:460`; tipo Ghidra `long`, confiança `medium`.
- `0x8` largura candidata `8` em `0000_0010071c_gpio_keys_probe.c:461`; tipo Ghidra `long`, confiança `medium`.
- `0x8` largura candidata `4` em `0002_00101578_gpio_keys_open.c:29`; tipo Ghidra `int`, confiança `medium`.
- `0x8` largura candidata `4` em `0002_00101578_gpio_keys_open.c:39`; tipo Ghidra `int`, confiança `medium`.
- `0x8` largura candidata `4` em `0010_00101b04_gpio_keys_suspend.c:28`; tipo Ghidra `int`, confiança `medium`.
- `0x8` largura candidata `4` em `0010_00101b04_gpio_keys_suspend.c:73`; tipo Ghidra `int`, confiança `medium`.
- `0x8` largura candidata `4` em `0012_00101d44_gpio_keys_attr_show_helper.c:28`; tipo Ghidra `int`, confiança `medium`.
- `0x8` largura candidata `4` em `0012_00101d44_gpio_keys_attr_show_helper.c:40`; tipo Ghidra `int`, confiança `medium`.
- `0x8` largura candidata `4` em `0016_00101f24_gpio_keys_attr_store_helper.c:72`; tipo Ghidra `uint`, confiança `medium`.
- `0x8` largura candidata `4` em `0016_00101f24_gpio_keys_attr_store_helper.c:73`; tipo Ghidra `uint`, confiança `medium`.
- `0x8` largura candidata `4` em `0016_00101f24_gpio_keys_attr_store_helper.c:85`; tipo Ghidra `int`, confiança `medium`.
- `0x8` largura candidata `4` em `0016_00101f24_gpio_keys_attr_store_helper.c:121`; tipo Ghidra `int`, confiança `medium`.
- `0x8` largura candidata `4` em `0019_001022b8_gpio_keys_show_GamekeyStatus.c:11`; tipo Ghidra `uint`, confiança `medium`.
- `0x8` largura candidata `4` em `0019_001022b8_gpio_keys_show_GamekeyStatus.c:12`; tipo Ghidra `uint`, confiança `medium`.
- `0x8` largura candidata `4` em `0021_001023c0_gpio_keys_resume.c:38`; tipo Ghidra `int`, confiança `medium`.
- `0x8` largura candidata `4` em `0021_001023c0_gpio_keys_resume.c:48`; tipo Ghidra `int`, confiança `medium`.
- `0x8` largura candidata `4` em `0021_001023c0_gpio_keys_resume.c:54`; tipo Ghidra `int`, confiança `medium`.
- `0x8` largura candidata `4` em `0021_001023c0_gpio_keys_resume.c:57`; tipo Ghidra `int`, confiança `medium`.
- `0x8` largura candidata `4` em `0021_001023c0_gpio_keys_resume.c:80`; tipo Ghidra `int`, confiança `medium`.
- `0x8` largura candidata `4` em `0021_001023c0_gpio_keys_resume.c:94`; tipo Ghidra `int`, confiança `medium`.
- `0x9` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:435`; tipo Ghidra `undefined4`, confiança `medium`.
- `0xa` largura candidata `1` em `0000_0010071c_gpio_keys_probe.c:348`; tipo Ghidra `char`, confiança `medium`.
- `0x10` largura candidata `8` em `0009_00101acc_gpio_keys_quiesce_key.c:5`; tipo Ghidra `long`, confiança `medium`.
- `0x10` largura candidata `1` em `0021_001023c0_gpio_keys_resume.c:66`; tipo Ghidra `byte`, confiança `medium`.
- `0x17` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:276`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x17` largura candidata `4` em `0006_00101878_gpio_keys_gpio_isr.c:24`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x18` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:307`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x18` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:379`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x18` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:389`; tipo Ghidra `int`, confiança `medium`.
- `0x18` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:391`; tipo Ghidra `int`, confiança `medium`.
- `0x18` largura candidata `4` em `0006_00101878_gpio_keys_gpio_isr.c:12`; tipo Ghidra `int`, confiança `medium`.
- `0x18` largura candidata `4` em `0012_00101d44_gpio_keys_attr_show_helper.c:32`; tipo Ghidra `uint`, confiança `medium`.
- `0x18` largura candidata `4` em `0016_00101f24_gpio_keys_attr_store_helper.c:76`; tipo Ghidra `uint`, confiança `medium`.
- `0x18` largura candidata `4` em `0019_001022b8_gpio_keys_show_GamekeyStatus.c:14`; tipo Ghidra `int`, confiança `medium`.
- `0x19` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:367`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x19` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:373`; tipo Ghidra `int`, confiança `medium`.
- `0x19` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:386`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x1b` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:180`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x1c` largura candidata `4` em `0005_0010181c_gpio_keys_gpio_work_func.c:7`; tipo Ghidra `int`, confiança `medium`.
- `0x1c` largura candidata `4` em `0008_001019b0_gpio_keys_irq_isr.c:20`; tipo Ghidra `int`, confiança `medium`.
- `0x1c` largura candidata `4` em `0010_00101b04_gpio_keys_suspend.c:40`; tipo Ghidra `int`, confiança `medium`.
- `0x20` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:317`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x28` largura candidata `1` em `0016_00101f24_gpio_keys_attr_store_helper.c:79`; tipo Ghidra `char`, confiança `medium`.
- `0x38` largura candidata `4` em `0010_00101b04_gpio_keys_suspend.c:41`; tipo Ghidra `int`, confiança `medium`.
- `0x42` largura candidata `1` em `0010_00101b04_gpio_keys_suspend.c:55`; tipo Ghidra `undefined1`, confiança `medium`.
- `0x48` largura candidata `4` em `0010_00101b04_gpio_keys_suspend.c:32`; tipo Ghidra `int`, confiança `medium`.
- `0x48` largura candidata `4` em `0016_00101f24_gpio_keys_attr_store_helper.c:89`; tipo Ghidra `uint`, confiança `medium`.
- `0x4e` largura candidata `1` em `0021_001023c0_gpio_keys_resume.c:64`; tipo Ghidra `undefined1`, confiança `medium`.
- `0x50` largura candidata `8` em `0010_00101b04_gpio_keys_suspend.c:35`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x50` largura candidata `8` em `0010_00101b04_gpio_keys_suspend.c:61`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x58` largura candidata `8` em `0016_00101f24_gpio_keys_attr_store_helper.c:108`; tipo Ghidra `long`, confiança `medium`.
- `0x98` largura candidata `8` em `0011_00101d18_gpio_keys_show_keys.c:5`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x98` largura candidata `8` em `0013_00101e88_gpio_keys_show_switches.c:5`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x98` largura candidata `8` em `0014_00101eb8_gpio_keys_show_disabled_keys.c:5`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x98` largura candidata `8` em `0015_00101ee8_gpio_keys_store_disabled_keys.c:7`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x98` largura candidata `8` em `0017_00102248_gpio_keys_show_disabled_switches.c:5`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x98` largura candidata `8` em `0018_00102278_gpio_keys_store_disabled_switches.c:8`; tipo Ghidra `undefined8`, confiança `medium`.
- `0xbc` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:294`; tipo Ghidra `int`, confiança `medium`.
- `0xbc` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:306`; tipo Ghidra `undefined4`, confiança `medium`.
- `0xbc` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:354`; tipo Ghidra `undefined4`, confiança `medium`.
- `0xbc` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:402`; tipo Ghidra `undefined4`, confiança `medium`.
- `0xbc` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:432`; tipo Ghidra `undefined4`, confiança `medium`.
- `0xbc` largura candidata `4` em `0006_00101878_gpio_keys_gpio_isr.c:12`; tipo Ghidra `int`, confiança `medium`.
- `0xbc` largura candidata `4` em `0008_001019b0_gpio_keys_irq_isr.c:12`; tipo Ghidra `int`, confiança `medium`.
- `0xc4` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:364`; tipo Ghidra `undefined4`, confiança `medium`.
- `0xc4` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:385`; tipo Ghidra `undefined4`, confiança `medium`.
- `0xc4` largura candidata `4` em `0004_00101684_gpio_keys_gpio_report_event.c:25`; tipo Ghidra `undefined4`, confiança `medium`.
- `0xd4` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:181`; tipo Ghidra `int`, confiança `medium`.
- `0xe9` largura candidata `1` em `0007_00101928_gpio_keys_irq_timer.c:10`; tipo Ghidra `char`, confiança `medium`.
- `0xe9` largura candidata `1` em `0007_00101928_gpio_keys_irq_timer.c:13`; tipo Ghidra `undefined1`, confiança `medium`.
- `0x104` largura candidata `4` em `0000_0010071c_gpio_keys_probe.c:217`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x104` largura candidata `4` em `0010_00101b04_gpio_keys_suspend.c:33`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x104` largura candidata `4` em `0010_00101b04_gpio_keys_suspend.c:37`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x104` largura candidata `4` em `0010_00101b04_gpio_keys_suspend.c:60`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x104` largura candidata `4` em `0010_00101b04_gpio_keys_suspend.c:64`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x104` largura candidata `4` em `0010_00101b04_gpio_keys_suspend.c:65`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x104` largura candidata `4` em `0016_00101f24_gpio_keys_attr_store_helper.c:95`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x104` largura candidata `4` em `0016_00101f24_gpio_keys_attr_store_helper.c:104`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x108` largura candidata `4` em `0016_00101f24_gpio_keys_attr_store_helper.c:96`; tipo Ghidra `int`, confiança `medium`.
- `0x108` largura candidata `4` em `0016_00101f24_gpio_keys_attr_store_helper.c:105`; tipo Ghidra `int`, confiança `medium`.
- `0x109` largura candidata `1` em `0008_001019b0_gpio_keys_irq_isr.c:19`; tipo Ghidra `byte`, confiança `medium`.
- `0x109` largura candidata `1` em `0008_001019b0_gpio_keys_irq_isr.c:30`; tipo Ghidra `undefined1`, confiança `medium`.
- `0x10a` largura candidata `1` em `0006_00101878_gpio_keys_gpio_isr.c:20`; tipo Ghidra `char`, confiança `medium`.
- `0x10c` largura candidata `2` em `0010_00101b04_gpio_keys_suspend.c:15`; tipo Ghidra `ushort`, confiança `medium`.
- `0x10c` largura candidata `2` em `0021_001023c0_gpio_keys_resume.c:18`; tipo Ghidra `ushort`, confiança `medium`.
- `0x148` largura candidata `8` em `0010_00101b04_gpio_keys_suspend.c:15`; tipo Ghidra `long`, confiança `medium`.
- `0x148` largura candidata `4` em `0010_00101b04_gpio_keys_suspend.c:59`; tipo Ghidra `int`, confiança `medium`.
- `0x148` largura candidata `4` em `0010_00101b04_gpio_keys_suspend.c:63`; tipo Ghidra `undefined4`, confiança `medium`.
- `0x148` largura candidata `8` em `0021_001023c0_gpio_keys_resume.c:18`; tipo Ghidra `long`, confiança `medium`.
- `0x150` largura candidata `1` em `0016_00101f24_gpio_keys_attr_store_helper.c:91`; tipo Ghidra `byte`, confiança `medium`.
- `0x150` largura candidata `1` em `0016_00101f24_gpio_keys_attr_store_helper.c:116`; tipo Ghidra `undefined1`, confiança `medium`.
- `0x152` largura candidata `1` em `0010_00101b04_gpio_keys_suspend.c:70`; tipo Ghidra `undefined1`, confiança `medium`.
- `0x228` largura candidata `4` em `0010_00101b04_gpio_keys_suspend.c:17`; tipo Ghidra `int`, confiança `medium`.
- `0x228` largura candidata `4` em `0021_001023c0_gpio_keys_resume.c:20`; tipo Ghidra `int`, confiança `medium`.
- `0x290` largura candidata `8` em `0002_00101578_gpio_keys_open.c:22`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x290` largura candidata `8` em `0003_0010163c_gpio_keys_close.c:14`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x290` largura candidata `8` em `0004_00101684_gpio_keys_gpio_report_event.c:50`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x290` largura candidata `8` em `0005_0010181c_gpio_keys_gpio_work_func.c:8`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x290` largura candidata `8` em `0006_00101878_gpio_keys_gpio_isr.c:19`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x290` largura candidata `8` em `0008_001019b0_gpio_keys_irq_isr.c:21`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x290` largura candidata `8` em `0010_00101b04_gpio_keys_suspend.c:24`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x290` largura candidata `8` em `0010_00101b04_gpio_keys_suspend.c:44`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x290` largura candidata `8` em `0010_00101b04_gpio_keys_suspend.c:50`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x290` largura candidata `8` em `0021_001023c0_gpio_keys_resume.c:30`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x290` largura candidata `8` em `0021_001023c0_gpio_keys_resume.c:68`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x290` largura candidata `8` em `0021_001023c0_gpio_keys_resume.c:73`; tipo Ghidra `undefined8`, confiança `medium`.
- `0x710` largura candidata `8` em `0000_0010071c_gpio_keys_probe.c:35`; tipo Ghidra `long`, confiança `medium`.
- `0x710` largura candidata `8` em `0000_0010071c_gpio_keys_probe.c:483`; tipo Ghidra `long`, confiança `medium`.

Contexto do Device Tree ativo:

- `/soc/gpio_keys_nubia` (linhas 5443-5459, score `150`, compatible `gpio-keys_nubia`).
- `/soc/pinctrl@f000000/gpio_keys_nubia` (linhas 7941-7950, score `35`, compatible sem `compatible` direto).
- `/soc/pinctrl@f000000/gpio_keys_nubia/gpio_keys_nubia_default` (linhas 7943-7949, score `35`, compatible sem `compatible` direto).
- Recortes completos: `04_documents/gpio_keys_nubia.ko/dts_context.dts`; evidência estruturada: `04_documents/gpio_keys_nubia.ko/dts_context.json`.

Regras de concorrência: aplicar `__rcu` somente quando chamadas RCU e a vida útil do ponteiro forem comprovadas; derivar `mutex`, `spinlock_t` ou `raw_spinlock_t` das primitivas observadas e do contexto de execução. Validar todo callback indireto sob CFI e executar KASAN/KCSAN após cada bloco reconstruído.

## 3. Prompts de Execução Isolada (Micro-Tarefas)

1. Função `gpio_keys_probe`

> Implemente somente a função `undefined gpio_keys_probe()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0000_0010071c_gpio_keys_probe.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0000_0010071c_gpio_keys_probe.jsonl`. Chamadas observadas: `<EXTERNAL>::devm_kmalloc`, `<EXTERNAL>::devm_input_allocate_device`, `<EXTERNAL>::__mutex_init`, `<EXTERNAL>::device_get_next_child_node`, `<EXTERNAL>::devm_gpio_request_one`, `<EXTERNAL>::gpio_to_desc`, `<EXTERNAL>::devm_fwnode_gpiod_get_index`, `<EXTERNAL>::_dev_err`, `<EXTERNAL>::of_get_next_child`, `<EXTERNAL>::of_property_read_string`, `<EXTERNAL>::of_get_named_gpio`, `<EXTERNAL>::strcmp`, `<EXTERNAL>::gpiod_set_debounce`, `<EXTERNAL>::gpiod_to_irq`, `<EXTERNAL>::init_timer_key`, `<EXTERNAL>::_printk`, `<EXTERNAL>::input_set_capability`, `<EXTERNAL>::__devm_add_action`, `<EXTERNAL>::devm_request_any_context_irq`, `<EXTERNAL>::device_get_child_node_count`, `<EXTERNAL>::device_property_present`, `<EXTERNAL>::device_property_read_string`, `<EXTERNAL>::irq_of_parse_and_map`, `<EXTERNAL>::fwnode_property_read_u32_array`, `<EXTERNAL>::fwnode_property_read_string`, `<EXTERNAL>::fwnode_property_present`, `<EXTERNAL>::input_register_device`, `<EXTERNAL>::device_set_wakeup_capable`, `<EXTERNAL>::device_wakeup_enable`, `<EXTERNAL>::device_wakeup_disable`. Offsets observados nesta função: `0x1/4B`, `0x1/4B`, `0x1/4B`, `0x2/1B`, `0x2/1B`, `0x8/8B`, `0x8/8B`, `0x8/8B`, `0x8/8B`, `0x8/8B`, `0x8/8B`, `0x9/4B`, `0xa/1B`, `0x17/4B`, `0x18/4B`, `0x18/4B`, `0x18/4B`, `0x18/4B`, `0x19/4B`, `0x19/4B`, `0x19/4B`, `0x1b/4B`, `0x20/4B`, `0xbc/4B`, `0xbc/4B`, `0xbc/4B`, `0xbc/4B`, `0xbc/4B`, `0xc4/4B`, `0xc4/4B`, `0xd4/4B`, `0x104/4B`, `0x710/8B`, `0x710/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

2. Função `gpio_keys_shutdown`

> Implemente somente a função `undefined gpio_keys_shutdown()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0001_00101530_gpio_keys_shutdown.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0001_00101530_gpio_keys_shutdown.jsonl`. Chamadas observadas: `gpio_keys_suspend`, `<EXTERNAL>::_dev_err`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

3. Função `gpio_keys_open`

> Implemente somente a função `undefined gpio_keys_open()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0002_00101578_gpio_keys_open.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0002_00101578_gpio_keys_open.jsonl`. Chamadas observadas: `gpio_keys_gpio_report_event`, `<EXTERNAL>::input_event`. Offsets observados nesta função: `0x8/4B`, `0x8/4B`, `0x290/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

4. Função `gpio_keys_close`

> Implemente somente a função `undefined gpio_keys_close()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0003_0010163c_gpio_keys_close.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0003_0010163c_gpio_keys_close.jsonl`. Chamadas observadas: nenhuma comprovada. Offsets observados nesta função: `0x290/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

5. Função `gpio_keys_gpio_report_event`

> Implemente somente a função `undefined gpio_keys_gpio_report_event()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0004_00101684_gpio_keys_gpio_report_event.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0004_00101684_gpio_keys_gpio_report_event.jsonl`. Chamadas observadas: `<EXTERNAL>::gpio_to_desc`, `<EXTERNAL>::gpiod_get_raw_value`, `<EXTERNAL>::gpiod_get_value_cansleep`, `<EXTERNAL>::input_event`, `<EXTERNAL>::_dev_err`, `<EXTERNAL>::_printk`. Offsets observados nesta função: `0xc4/4B`, `0x290/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

6. Função `gpio_keys_gpio_work_func`

> Implemente somente a função `undefined gpio_keys_gpio_work_func()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0005_0010181c_gpio_keys_gpio_work_func.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0005_0010181c_gpio_keys_gpio_work_func.jsonl`. Chamadas observadas: `<EXTERNAL>::mutex_lock`, `gpio_keys_gpio_report_event`, `<EXTERNAL>::pm_relax`, `<EXTERNAL>::mutex_unlock`. Offsets observados nesta função: `0x1c/4B`, `0x290/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

7. Função `gpio_keys_gpio_isr`

> Implemente somente a função `undefined gpio_keys_gpio_isr()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0006_00101878_gpio_keys_gpio_isr.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0006_00101878_gpio_keys_gpio_isr.jsonl`. Chamadas observadas: `<EXTERNAL>::pm_stay_awake`, `<EXTERNAL>::input_event`, `<EXTERNAL>::__msecs_to_jiffies`, `<EXTERNAL>::mod_delayed_work_on`. Offsets observados nesta função: `0x17/4B`, `0x18/4B`, `0xbc/4B`, `0x10a/1B`, `0x290/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

8. Função `gpio_keys_irq_timer`

> Implemente somente a função `undefined gpio_keys_irq_timer()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0007_00101928_gpio_keys_irq_timer.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0007_00101928_gpio_keys_irq_timer.jsonl`. Chamadas observadas: `<EXTERNAL>::_raw_spin_lock_irqsave`, `<EXTERNAL>::input_event`, `<EXTERNAL>::_raw_spin_unlock_irqrestore`. Offsets observados nesta função: `0xe9/1B`, `0xe9/1B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

9. Função `gpio_keys_irq_isr`

> Implemente somente a função `undefined gpio_keys_irq_isr()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0008_001019b0_gpio_keys_irq_isr.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0008_001019b0_gpio_keys_irq_isr.jsonl`. Chamadas observadas: `<EXTERNAL>::_raw_spin_lock_irqsave`, `<EXTERNAL>::pm_wakeup_dev_event`, `<EXTERNAL>::input_event`, `<EXTERNAL>::__msecs_to_jiffies`, `<EXTERNAL>::mod_timer`, `<EXTERNAL>::_raw_spin_unlock_irqrestore`. Offsets observados nesta função: `0x1c/4B`, `0xbc/4B`, `0x109/1B`, `0x109/1B`, `0x290/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

10. Função `gpio_keys_quiesce_key`

> Implemente somente a função `undefined gpio_keys_quiesce_key()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0009_00101acc_gpio_keys_quiesce_key.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0009_00101acc_gpio_keys_quiesce_key.jsonl`. Chamadas observadas: `<EXTERNAL>::cancel_delayed_work_sync`, `<EXTERNAL>::timer_delete_sync`. Offsets observados nesta função: `0x10/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

11. Função `gpio_keys_suspend`

> Implemente somente a função `undefined gpio_keys_suspend()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0010_00101b04_gpio_keys_suspend.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0010_00101b04_gpio_keys_suspend.jsonl`. Chamadas observadas: `<EXTERNAL>::irq_set_irq_wake`, `<EXTERNAL>::irq_set_irq_type`, `<EXTERNAL>::_dev_err`, `<EXTERNAL>::mutex_lock`, `<EXTERNAL>::mutex_unlock`, `<EXTERNAL>::_dev_warn`. Offsets observados nesta função: `0x8/4B`, `0x8/4B`, `0x1c/4B`, `0x38/4B`, `0x42/1B`, `0x48/4B`, `0x50/8B`, `0x50/8B`, `0x104/4B`, `0x104/4B`, `0x104/4B`, `0x104/4B`, `0x104/4B`, `0x10c/2B`, `0x148/8B`, `0x148/4B`, `0x148/4B`, `0x152/1B`, `0x228/4B`, `0x290/8B`, `0x290/8B`, `0x290/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

12. Função `gpio_keys_show_keys`

> Implemente somente a função `undefined gpio_keys_show_keys()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0011_00101d18_gpio_keys_show_keys.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0011_00101d18_gpio_keys_show_keys.jsonl`. Chamadas observadas: `gpio_keys_attr_show_helper`. Offsets observados nesta função: `0x98/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

13. Função `gpio_keys_attr_show_helper`

> Implemente somente a função `undefined gpio_keys_attr_show_helper()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0012_00101d44_gpio_keys_attr_show_helper.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0012_00101d44_gpio_keys_attr_show_helper.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`, `<EXTERNAL>::bitmap_zalloc`, `<EXTERNAL>::scnprintf`, `<EXTERNAL>::bitmap_free`. Offsets observados nesta função: `0x8/4B`, `0x8/4B`, `0x18/4B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

14. Função `gpio_keys_show_switches`

> Implemente somente a função `undefined gpio_keys_show_switches()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0013_00101e88_gpio_keys_show_switches.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0013_00101e88_gpio_keys_show_switches.jsonl`. Chamadas observadas: `gpio_keys_attr_show_helper`. Offsets observados nesta função: `0x98/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

15. Função `gpio_keys_show_disabled_keys`

> Implemente somente a função `undefined gpio_keys_show_disabled_keys()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0014_00101eb8_gpio_keys_show_disabled_keys.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0014_00101eb8_gpio_keys_show_disabled_keys.jsonl`. Chamadas observadas: `gpio_keys_attr_show_helper`. Offsets observados nesta função: `0x98/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

16. Função `gpio_keys_store_disabled_keys`

> Implemente somente a função `undefined gpio_keys_store_disabled_keys()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0015_00101ee8_gpio_keys_store_disabled_keys.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0015_00101ee8_gpio_keys_store_disabled_keys.jsonl`. Chamadas observadas: `gpio_keys_attr_store_helper`. Offsets observados nesta função: `0x98/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

17. Função `gpio_keys_attr_store_helper`

> Implemente somente a função `undefined gpio_keys_attr_store_helper()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0016_00101f24_gpio_keys_attr_store_helper.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0016_00101f24_gpio_keys_attr_store_helper.jsonl`. Chamadas observadas: `<EXTERNAL>::bitmap_zalloc`, `<EXTERNAL>::bitmap_parselist`, `<EXTERNAL>::bitmap_free`, `<EXTERNAL>::_printk`, `<EXTERNAL>::mutex_lock`, `<EXTERNAL>::cancel_delayed_work_sync`, `<EXTERNAL>::disable_irq`, `<EXTERNAL>::timer_delete_sync`, `<EXTERNAL>::enable_irq`, `<EXTERNAL>::mutex_unlock`. Offsets observados nesta função: `0x8/4B`, `0x8/4B`, `0x8/4B`, `0x8/4B`, `0x18/4B`, `0x28/1B`, `0x48/4B`, `0x58/8B`, `0x104/4B`, `0x104/4B`, `0x108/4B`, `0x108/4B`, `0x150/1B`, `0x150/1B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

18. Função `gpio_keys_show_disabled_switches`

> Implemente somente a função `undefined gpio_keys_show_disabled_switches()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0017_00102248_gpio_keys_show_disabled_switches.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0017_00102248_gpio_keys_show_disabled_switches.jsonl`. Chamadas observadas: `gpio_keys_attr_show_helper`. Offsets observados nesta função: `0x98/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

19. Função `gpio_keys_store_disabled_switches`

> Implemente somente a função `undefined gpio_keys_store_disabled_switches()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0018_00102278_gpio_keys_store_disabled_switches.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0018_00102278_gpio_keys_store_disabled_switches.jsonl`. Chamadas observadas: `gpio_keys_attr_store_helper`. Offsets observados nesta função: `0x98/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

20. Função `gpio_keys_show_GamekeyStatus`

> Implemente somente a função `undefined gpio_keys_show_GamekeyStatus()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0019_001022b8_gpio_keys_show_GamekeyStatus.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0019_001022b8_gpio_keys_show_GamekeyStatus.jsonl`. Chamadas observadas: `<EXTERNAL>::gpiod_get_value_cansleep`, `<EXTERNAL>::gpio_to_desc`, `<EXTERNAL>::gpiod_get_raw_value`, `<EXTERNAL>::_printk`, `<EXTERNAL>::snprintf`. Offsets observados nesta função: `0x8/4B`, `0x8/4B`, `0x18/4B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

21. Função `gpio_keys_store_GamekeyStatus`

> Implemente somente a função `undefined gpio_keys_store_GamekeyStatus()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0020_00102388_gpio_keys_store_GamekeyStatus.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0020_00102388_gpio_keys_store_GamekeyStatus.jsonl`. Chamadas observadas: `<EXTERNAL>::_printk`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

22. Função `gpio_keys_resume`

> Implemente somente a função `undefined gpio_keys_resume()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0021_001023c0_gpio_keys_resume.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0021_001023c0_gpio_keys_resume.jsonl`. Chamadas observadas: `<EXTERNAL>::irq_set_irq_wake`, `<EXTERNAL>::irq_get_irq_data`, `<EXTERNAL>::irq_set_irq_type`, `<EXTERNAL>::_dev_warn`, `<EXTERNAL>::mutex_lock`, `<EXTERNAL>::mutex_unlock`, `gpio_keys_gpio_report_event`, `<EXTERNAL>::input_event`. Offsets observados nesta função: `0x8/4B`, `0x8/4B`, `0x8/4B`, `0x8/4B`, `0x8/4B`, `0x8/4B`, `0x10/1B`, `0x4e/1B`, `0x10c/2B`, `0x148/8B`, `0x228/4B`, `0x290/8B`, `0x290/8B`, `0x290/8B`. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

23. Função `init_module`

> Implemente somente a função `undefined init_module()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0022_001025f4_init_module.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0022_001025f4_init_module.jsonl`. Chamadas observadas: `<EXTERNAL>::__platform_driver_register`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.

24. Função `cleanup_module`

> Implemente somente a função `undefined cleanup_module()` para um módulo Android 16 GKI 6.12.23 out-of-tree em `vendor_dlkm`. Use como fonte primária o pseudocódigo `03_ghidra/exports/gpio_keys_nubia.ko/decompiled/0023_00102624_cleanup_module.c` e o P-Code `03_ghidra/exports/gpio_keys_nubia.ko/pcode/0023_00102624_cleanup_module.jsonl`. Chamadas observadas: `<EXTERNAL>::platform_driver_unregister`. Offsets observados nesta função: nenhum comprovado. Não implemente nenhuma outra função e não invente campos, registradores, constantes, Vendor Hooks ou namespaces. Preserve exatamente o protótipo canônico do Kernel 6.12.23 e nunca use cast para contornar CFI. Faça tratamento estrito com `IS_ERR`, `PTR_ERR` e retornos negativos; use rótulos `goto` em ordem reversa para cleanup; não faça alocações desnecessárias nem aloque em contexto IRQ. Aplique DRY e KISS, mantenha locks e RCU coerentes com o contexto comprovado e use `dev_dbg` ou `pr_debug` nas ramificações críticas úteis para KASAN/KCSAN. Entregue somente a função C e uma lista curta das hipóteses ainda não comprovadas.
