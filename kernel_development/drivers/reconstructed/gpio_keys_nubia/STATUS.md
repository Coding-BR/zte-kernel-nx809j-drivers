# Status: `gpio_keys_nubia`

Estado: **STAGE1_STATIC_VALIDATED - modulo completo INCOMPLETO**.

Este diretorio contem um scaffold compilavel baseado no `gpio_keys.c` do mesmo
GKI 6.12.23. Ele ainda nao e um candidato seguro para `insmod` ou substituicao
do modulo OEM.

| Item | Estado | Evidencia/Bloqueador |
|---|---|---|
| Stock | IDENTIFICADO | SHA-256 `8cb89f5068195396a5db5fba1c51f2cf6056884dbb00f7ee8af5041ccd6f32b3`; 24 funcoes Ghidra |
| Fonte scaffold | PRESENTE | `gpio_keys_nubia.c`; artefatos de build removidos do diretorio canonico |
| Build limpo | PASS | duas compilacoes reproduziveis; SHA-256 `e1a872ba5d4c3875ed2b92ef6ee949abf1e7bc08ba4c549bc8f228a8bf9f45f8` |
| Mapa stock -> fonte | PARCIAL | 8/24 revisadas; 16/24 ainda `unmapped` |
| KCFI stage 1 | PASS | 8/8 type IDs, secoes e tamanhos iguais ao stock |
| Assembly stage 1 | PASS | 8/8 sequencias AArch64 e relocacoes iguais; `B/BL` local vinculado pelo simbolo resolvido |
| Harness stage 1 | PASS | 11/11 testes offline dos wrappers sysfs e lifecycle |
| Superficie de imports | FAIL | imports stock e scaffold ainda divergem |
| Hardware | DEFERRED | nenhum ADB, fastboot, `insmod`, GPIO ou IRQ executado neste ciclo |

## Funcoes validadas no stage 1

- `init_module` -> `gpio_keys_init`
- `cleanup_module` -> `gpio_keys_exit`
- `gpio_keys_show_keys`
- `gpio_keys_show_switches`
- `gpio_keys_show_disabled_keys`
- `gpio_keys_store_disabled_keys`
- `gpio_keys_show_disabled_switches`
- `gpio_keys_store_disabled_switches`

As microtarefas permanecem `READY_FOR_IMPLEMENTATION`, e nao `PASS`, porque o
atestador atual promove somente a superficie completa do driver. A separacao e
intencional: evidencia parcial nao autoriza declarar o modulo reconstruido.

## Bloqueadores para um modulo carregavel

- O layout stock por botao tem stride observado de `0x110`; o layout completo
  ainda precisa ser reconstruido e comprovado por offsets.
- `GamekeyStatus` e o GPIO secundario `gpion` ainda nao foram implementados.
- Os caminhos stock usam `timer_delete_sync`, `mod_timer`,
  `gpiod_get_raw_value` e APIs OF que ainda divergem do scaffold moderno.
- `probe`, IRQ, debounce, wakeup, suspend/resume e teardown ainda precisam de
  equivalencia por funcao e testes de falha.
- A superficie de simbolos importados precisa coincidir antes de qualquer
  promocao de `.ko`.

## Proxima ordem de trabalho

1. Reconstruir `gpio_keys_attr_show_helper` e
   `gpio_keys_attr_store_helper`, com bitmaps e limites testados.
2. Implementar `gpio_keys_show_GamekeyStatus` e
   `gpio_keys_store_GamekeyStatus`, incluindo `gpion`.
3. Alinhar timer, workqueue, IRQ e `gpio_keys_quiesce_key`.
4. Fechar suspend/resume, open/close, shutdown e `probe`.
5. Repetir build reproduzivel, KCFI, Assembly, imports e harness para 24/24.

Evidencias principais:

- `kernel_development/drivers/reconstructed/gpio_keys_nubia/STOCK_LAYOUT_STAGE2.md`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/driver_audit.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage1_kcfi_comparison.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage1_assembly_comparison.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage1_harness_report.json`

Nao e permitido instalar, publicar como candidato final ou declarar paridade
100% enquanto as 24 microtarefas e os gates completos nao estiverem em `PASS`.
