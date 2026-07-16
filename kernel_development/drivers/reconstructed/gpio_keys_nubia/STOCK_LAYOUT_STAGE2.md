# `gpio_keys_nubia`: mapa estrutural stock para o stage 2

Estado: **OFFSETS E IMPLEMENTACAO AARCH64 COMPROVADOS NO STAGE 2**.

Este mapa foi derivado do P-Code, pseudocodigo e Assembly AArch64 do modulo
stock com SHA-256
`8cb89f5068195396a5db5fba1c51f2cf6056884dbb00f7ee8af5041ccd6f32b3`.
Os nomes de campos Nubia sao descritivos; os offsets, tamanhos e acessos sao a
fonte de verdade.

## `struct gpio_keys_drvdata`

| Offset | Tamanho | Campo inferido | Evidencia |
|---:|---:|---|---|
| `0x00` | `0x08` | `pdata` | helpers carregam `nbuttons` por `ddata->pdata` |
| `0x08` | `0x08` | `input` | store helper seleciona `keybit`/`swbit` |
| `0x10` | `0x30` | `disable_lock` | `mutex_lock(ddata + 0x10)` |
| `0x40` | `0x08` | `keymap` | alocacao e atribuicao no `probe` |
| `0x48` | flexivel | `data[]` | primeiro botao em `ddata + 0x48` |

Tamanho fixo antes de `data[]`: **`0x48` bytes**.

## `struct gpio_button_data`

| Offset | Tamanho | Campo inferido | Evidencia stock |
|---:|---:|---|---|
| `0x00` | `0x08` | `button` | tipo em `button + 0x18` |
| `0x08` | `0x08` | `input` | `input_event` e `pm_relax` |
| `0x10` | `0x08` | `gpiod` | `gpiod_get_value_cansleep` |
| `0x18` | `0x08` | `code` | `u16` lido pelos helpers |
| `0x20` | `0x28` | `release_timer` (`timer_list`) | `timer_delete_sync(bdata + 0x20)` |
| `0x48` | `0x04` | `release_delay` | inicializacao IRQ-only no `probe` |
| `0x4c` | `0x04` | padding | alinhamento AArch64 de `delayed_work` |
| `0x50` | `0x68` | `work` (`delayed_work`) | callback e `cancel_delayed_work_sync` |
| `0xb8` | `0x04` | `software_debounce` | fallback de `gpiod_set_debounce` |
| `0xbc` | `0x04` | `irq_primary` | ISR e primeiro `disable_irq` |
| `0xc0` | `0x04` | `irq_secondary` | segundo IRQ ligado a `gpion` |
| `0xc4` | `0x04` | `gpios` | `of_get_named_gpio(..., "gpios", 0)` |
| `0xc8` | `0x04` | `gpion` | `of_get_named_gpio(..., "gpion", 0)` |
| `0xcc` | `0x04` | padding | alinhamento de `struct mutex` |
| `0xd0` | `0x30` | `report_lock` (`mutex`) | `__mutex_init(bdata + 0xd0)` |
| `0x100` | `0x04` | `wakeup_trigger_type` | suspend/resume e `irq_set_irq_type` |
| `0x104` | `0x04` | `lock` (`spinlock_t`) | `_raw_spin_lock_irqsave(bdata + 0x104)` |
| `0x108` | `0x01` | `disabled` | helpers sysfs |
| `0x109` | `0x01` | `key_pressed` | ISR IRQ-only |
| `0x10a` | `0x01` | `suspended` | suspend/resume |
| `0x10b` | `0x05` | padding final | stride observado no loop |

Tamanho/stride comprovado: **`0x110` bytes**.

## Implementacao atual

O candidato agora reproduz o stride `0x110` e possui `static_assert` para cada
offset critico. Assim como o stock, ele:

- usa `timer_list` para o release de botoes IRQ-only;
- usa somente `delayed_work` para o debounce GPIO;
- recebe interrupcao pelos GPIOs primario e secundario;
- serializa a leitura combinada de `gpios/gpion` com `report_lock`;
- desabilita/habilita os dois IRQs nos helpers sysfs.

Os callbacks de timer, workqueue, IRQ, quiesce, PM, helpers sysfs e
`GamekeyStatus` possuem paridade estatica por funcao. O `pahole` do objeto
AArch64 confirmou tamanho `0x110` e todos os offsets desta tabela.

## Gates executados

1. `release_timer` migrado para `timer_list`; debounce GPIO usa apenas
   `delayed_work`.
2. `irq_secondary`, `gpios`, `gpion` e `report_lock` posicionados com
   `static_assert(offsetof(...))`.
3. `sizeof(struct gpio_button_data) == 0x110` exigido pelo build AArch64.
4. Helpers, work/ISR, timer e quiesce comparados contra o Assembly stock.
5. Dois builds limpos reproduziveis e harness stage 2 com 18/18 testes.

Ainda nao e permitido promover o `.ko`: `gpio_keys_gpio_report_event` e
`gpio_keys_probe` nao possuem Assembly exato, a superficie de imports diverge e
nao houve validacao controlada no hardware.

## Evidencias de origem

- `offline_static/ghidra_stock/decompiled/0000_0010071c_gpio_keys_probe.c`
- `offline_static/ghidra_stock/decompiled/0004_00101684_gpio_keys_gpio_report_event.c`
- `offline_static/ghidra_stock/decompiled/0009_00101acc_gpio_keys_quiesce_key.c`
- `offline_static/ghidra_stock/decompiled/0012_00101d44_gpio_keys_attr_show_helper.c`
- `offline_static/ghidra_stock/decompiled/0016_00101f24_gpio_keys_attr_store_helper.c`
- `offline_static/stock_assembly/0012_gpio_keys_attr_show_helper_00101d44.asm`
- `offline_static/stock_assembly/0016_gpio_keys_attr_store_helper_00101f24.asm`
