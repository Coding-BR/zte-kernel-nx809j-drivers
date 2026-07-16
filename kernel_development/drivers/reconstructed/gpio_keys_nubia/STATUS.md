# Status: `gpio_keys_nubia`

Estado: **STAGE2_STATIC_PARTIAL - 22/24 funcoes exatas; modulo completo INCOMPLETO**.

O fonte foi reconstruido a partir do `.ko` stock, pseudocodigo, P-Code e
Assembly Ghidra. Ele compila no GKI 6.12.23 com Clang `clang-r536225`, mas ainda
nao e candidato seguro para `insmod` ou substituicao do modulo OEM.

| Item | Estado | Evidencia/Bloqueador |
|---|---|---|
| Stock | IDENTIFICADO | SHA-256 `8cb89f5068195396a5db5fba1c51f2cf6056884dbb00f7ee8af5041ccd6f32b3`; 24 funcoes Ghidra |
| Layout por botao | PASS ESTATICO | stride `0x110` e offsets AArch64 comprovados por `pahole`, Assembly e `static_assert` |
| Build limpo | PASS | duas compilacoes isoladas reproduziveis; SHA-256 `749c54aa3f6ab530ef68f2cb2f71b39f8cdc5b3d9b81989663c66fb8ade28b85` |
| Mapa stock -> fonte | PARCIAL | 22/24 `reviewed`; 2/24 `mapped_not_exact`; zero funcoes sem alvo no fonte |
| KCFI stage 2 | PASS PARCIAL | 20/20 funcoes elegiveis exatas; os dois helpers diretos de bitmap nao possuem preambulo KCFI proprio |
| Assembly stage 2 | PASS PARCIAL | 22/24 com secao, tamanho, instrucoes e relocacoes exatas |
| Harness stage 1 | PASS | 11/11 testes offline de wrappers sysfs e lifecycle |
| Harness stage 2 | PASS | 18/18 testes offline de bitmap, IRQ, timer, quiesce, workqueue e `GamekeyStatus` |
| Superficie de imports | FAIL | `gpio_keys_probe` ainda usa uma superficie moderna diferente da stock |
| Hardware | DEFERRED | nenhum ADB, fastboot, `insmod`, GPIO ou IRQ executado neste ciclo |

## Superficie exata no stage 2

- Lifecycle e PM: `init_module`, `cleanup_module`, `gpio_keys_shutdown`,
  `gpio_keys_open`, `gpio_keys_close`, `gpio_keys_suspend`, `gpio_keys_resume`.
- IRQ e debounce: `gpio_keys_gpio_work_func`, `gpio_keys_gpio_isr`,
  `gpio_keys_irq_timer`, `gpio_keys_irq_isr`, `gpio_keys_quiesce_key`.
- Sysfs: os oito wrappers do stage 1, `gpio_keys_attr_show_helper`,
  `gpio_keys_attr_store_helper`, `gpio_keys_show_GamekeyStatus` e
  `gpio_keys_store_GamekeyStatus`.

Paridade estatica por funcao nao promove automaticamente as microtarefas nem o
modulo inteiro. Testes em hardware e todos os gates continuam obrigatorios.

## Duas funcoes restantes

- `gpio_keys_gpio_report_event`: comportamento e tamanho stock de `0x194` bytes
  reconstruidos, mas a ordem dos blocos AArch64 e relocacoes ainda diverge.
- `gpio_keys_probe`: layout `0x110` mapeado, mas o candidato tem 3524 bytes
  contra 3600 no stock e ainda difere na leitura OF, pedidos GPIO/IRQ, logs e
  tratamento de erro. A superficie de imports tambem nao coincide.

## Proxima ordem de trabalho

1. Fechar a arvore de blocos de `gpio_keys_gpio_report_event` sem alterar a
   semantica ja comprovada.
2. Reconstruir `gpio_keys_probe` por sub-blocos: parser DT, GPIO primario,
   `gpion`, debounce, IRQ primaria/secundaria e rollback.
3. Repetir imports, KCFI, Assembly, dois builds limpos e harness para 24/24.
4. Somente depois preparar um teste controlado no hardware com rollback.

Evidencias principais:

- `kernel_development/drivers/reconstructed/gpio_keys_nubia/STOCK_LAYOUT_STAGE2.md`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage2_assembly_comparison.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage2_kcfi_comparison.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage2_harness_report.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage2_driver_audit.json`

Nao e permitido instalar, publicar como candidato final ou declarar paridade
100% enquanto as 24 microtarefas e os gates completos nao estiverem em `PASS`.
