# Status: `gpio_keys_nubia`

Estado: **STAGE3_STATIC_PARTIAL - 23/24 funcoes exatas; modulo completo INCOMPLETO**.

O fonte foi reconstruido exclusivamente a partir do `.ko` stock, pseudocodigo,
P-Code e Assembly AArch64 locais. Ele compila no GKI 6.12.23 com
`clang-r536225`. Nao e candidato autorizado para `insmod` ou substituicao do
modulo OEM enquanto `gpio_keys_probe` e os gates de hardware nao fecharem.

| Item | Estado | Evidencia/Bloqueador |
|---|---|---|
| Stock | IDENTIFICADO | SHA-256 `8cb89f5068195396a5db5fba1c51f2cf6056884dbb00f7ee8af5041ccd6f32b3`; 24 funcoes Ghidra |
| Layout por botao | PASS ESTATICO | stride `0x110` e offsets comprovados por P-Code, Assembly, `pahole` e `static_assert` |
| Build limpo | PASS | duas compilacoes isoladas reproduziveis; SHA-256 `977ed4b75b5d86ca4a363ad9c6d8cd9144765fb2ca2c71b390731d39704eb143` |
| Mapa stock -> fonte | PASS DE RASTREABILIDADE | 24/24 funcoes mapeadas para tokens do fonte; 23 `reviewed`, 1 `mapped_not_exact` |
| KCFI stage 3 | PASS | 21/21 funcoes elegiveis com tipo e secao exatos; 3 helpers diretos nao possuem preambulo independente |
| Assembly stage 3 | PASS PARCIAL | 23/24 com secao, tamanho, instrucoes e relocacoes exatas |
| Harness stage 1 | PASS | 11/11 testes offline de wrappers sysfs e lifecycle |
| Harness stage 2 | PASS | 18/18 testes offline de bitmap, IRQ, timer, quiesce, workqueue e `GamekeyStatus` |
| Simbolos ELF | PASS | 24/24 simbolos de texto presentes, nenhum extra e imports indefinidos 63/63 exatos |
| Hardware | DEFERRED | nenhum ADB, fastboot, `insmod`, GPIO ou IRQ executado neste ciclo |

## Avanco do stage 3

- `gpio_keys_gpio_report_event` agora possui os mesmos 404 bytes, 101
  instrucoes normalizadas e relocacoes do stock.
- O parser DT voltou a superficie stock: sem `linux,input-value`,
  `of_irq_get_byname`, `gpiod_is_active_low` ou `dev_err_probe`.
- A busca Nubia por `label`, `gpios` e `gpion`, os dois pedidos de IRQ, a ordem
  de `report_lock` e as mensagens stock foram reconstruidos no caminho inlined.
- A lista completa de 63 imports indefinidos agora coincide com o modulo OEM.

## Unica funcao restante

`gpio_keys_probe` permanece **mapped_not_exact**. A semantica observada e toda a
superficie de 164 relocacoes estao presentes, mas o candidato mede 3608 bytes e
902 instrucoes contra 3600 bytes e 900 instrucoes no stock. A diferenca atual e
de especializacao/inlining nas duas saidas frias de erro do descritor GPIO; nao
sera escondida com padding, Assembly manual ou declaracao prematura de 100%.

Oito formas C alternativas foram compiladas e rejeitadas de maneira controlada.
Duas igualaram os totais `3600/900/164`, mas falharam em opcodes e na ordem das
relocacoes; a matriz impede que coincidencia de contagem seja tratada como
paridade.

## Proxima ordem de trabalho

1. Reproduzir as duas saidas frias do `probe` sem estado artificial na pilha.
2. Segmentar os helpers inlined por limites de chamada e comparar seus blocos
   basicos antes de testar novas formas C.
3. Reexecutar Assembly 24/24, KCFI, imports, 31 testes Python e ambos harnesses.
4. Repetir dois builds limpos e atualizar a atestacao somente se todos os gates
   estaticos permanecerem verdes.
5. Planejar validacao controlada em hardware separadamente, com rollback.

Evidencias principais:

- `kernel_development/drivers/reconstructed/gpio_keys_nubia/STOCK_LAYOUT_STAGE3.md`
- `kernel_development/drivers/reconstructed/gpio_keys_nubia/PROBE_VARIANT_MATRIX.md`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage3_assembly_comparison.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/probe_variant_matrix.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage3_kcfi_comparison.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage3_symbol_inventory.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage3_harness_report.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage3_driver_audit.json`

Nao e permitido instalar, publicar como candidato final ou declarar paridade
100% enquanto as 24 microtarefas e os gates completos nao estiverem em `PASS`.
