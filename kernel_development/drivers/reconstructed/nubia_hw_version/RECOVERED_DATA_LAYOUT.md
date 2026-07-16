# Layout recuperado: `nubia_hw_version`

Fonte de verdade: `vendor_dlkm_a/lib/modules/nubia_hw_version.ko`, Ghidra
12.1.2, relocations AArch64 e o DTS live da ROM userdebug NX809J.

## Tabelas constantes

`hw_pcb_gpio_map` ocupa `0xf0` bytes, com stride `0x18` e dez entradas:

| GPIO1 | GPIO2 | ID | Versão |
|---:|---:|---:|---|
| 0 | 0 | 0 | `MB_A` |
| 0 | 2 | 1 | `MB_B` |
| 2 | 0 | 2 | `MB_C` |
| 2 | 2 | 3 | `MB_D` |
| 2 | 1 | 4 | `MB_E` |
| 1 | 2 | 5 | `MB_E1` |
| 1 | 0 | 6 | `MB_F` |
| 0 | 1 | 7 | `MB_F1` |
| 1 | 1 | 8 | `MB_G` |
| 3 | 3 | 9 | `UNKNOW` |

Cada entrada é `{ u32 gpio1, u32 gpio2, u32 hw_id, char version[12] }`.

`hw_rf_band_gpio_map` ocupa `0x8c` bytes, com stride `0x14` e sete entradas:

| GPIO1 | GPIO2 | Banda |
|---:|---:|---|
| 0 | 0 | `COMMON` |
| 0 | 2 | `CHINA` |
| 2 | 0 | `JAPAN` |
| 2 | 2 | `SAUDI` |
| 0 | 1 | `***` |
| 2 | 1 | `***` |
| 1 | 0 | `***` |

As tabelas auxiliares confirmadas por relocations são `V2A`, `V1A`, `V1B`
para carga e `{0, 2, 1}` para HML. O texto `unknow` é OEM e deve ser
preservado até que uma evidência dinâmica prove o contrário.

## Estruturas AArch64

O cabeçalho candidato contém `static_assert` para todos os offsets e tamanhos:

- `nubia_hw_gpio_info`: `pinctrl` em `0x00`, `pull_up` em `0x08`, `pull_down` em `0x10`, tamanho `0x18`;
- PCB: GPIO1 `0x00`, GPIO2 `0x04`, ID `0x08`, string `0x0c`, tamanho `0x18`;
- RF: GPIO1 `0x00`, GPIO2 `0x04`, string `0x08`, tamanho `0x14`.

Não foram observados RCU, locks, MMIO ou Vendor Hooks. Não adicionar padding
ou sincronização especulativa: os alinhamentos são derivados do ELF e das
relocations, não de suposições de datasheet.
