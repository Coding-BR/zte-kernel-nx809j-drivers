# `gpio_keys_nubia`: checkpoint estrutural stage 3

Estado: **23/24 FUNCOES AARCH64 EXATAS; `gpio_keys_probe` AINDA PARCIAL**.

Este documento complementa `STOCK_LAYOUT_STAGE2.md`. Os offsets e o stride
documentados no stage 2 permanecem inalterados e foram novamente impostos por
`static_assert` durante o build AArch64.

## Invariantes preservadas

| Estrutura/campo | Valor stock |
|---|---:|
| `offsetof(gpio_keys_drvdata, data)` | `0x48` |
| `sizeof(gpio_button_data)` | `0x110` |
| `release_timer` | `0x20` |
| `delayed_work` | `0x50` |
| `software_debounce` | `0xb8` |
| IRQ primario/secundario | `0xbc` / `0xc0` |
| `gpios` / `gpion` | `0xc4` / `0xc8` |
| `report_lock` | `0xd0` |
| `wakeup_trigger_type` | `0x100` |
| `spinlock_t` | `0x104` |

## Paridade recuperada

`gpio_keys_gpio_report_event` foi reconstruida com o CFG stock para:

- leitura combinada de `gpios` e `gpion`;
- supressao de estado repetido;
- inversao especial do codigo `0x0f` em `EV_SW`;
- caminhos separados para `EV_ABS` e eventos de estado;
- sincronizacao final por `input_sync`.

O comparador stage 3 confirma secao, tamanho de 404 bytes, opcodes normalizados
e relocacoes exatas para essa funcao.

## Superficie do `probe`

O candidato agora reproduz as 164 relocacoes do stock, incluindo:

- `irq_of_parse_and_map` e parser DT sem propriedades modernas adicionais;
- `devm_gpio_request_one`, `devm_fwnode_gpiod_get_index` e `_dev_err`;
- busca vendor por `label`, `gpios` e `gpion`;
- `gpiod_set_debounce`, IRQ primaria e IRQ secundaria opcional;
- mensagens vendor e inicializacao tardia de `report_lock`.

Ainda existem duas instrucoes AArch64 extras no tratamento frio de erro. O
arquivo permanece `mapped_not_exact`; paridade de imports ou tamanho proximo
nao substitui identidade do CFG.

## Gates do checkpoint

- Assembly: 23/24 exatas.
- KCFI: 21/21 funcoes elegiveis.
- Imports: 63/63 exatos.
- Simbolos de texto: 24/24, nenhum extra.
- Harnesses: 11/11 e 18/18.
- Testes da esteira: 31/31.
- Builds isolados: dois hashes `977ed4b75b5d86ca4a363ad9c6d8cd9144765fb2ca2c71b390731d39704eb143`.

Nenhuma validacao dinamica foi executada neste checkpoint.
