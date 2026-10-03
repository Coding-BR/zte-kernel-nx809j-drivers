# Reconsolidação dos drivers difíceis — 2026-09-04

Esta atestação registra a correção da não reprodutibilidade em
`zte_imem_info` e `zte_power_supply`. A causa foi localizada nos objetos
Assembly: os `.S` exact islands não recebiam o mapa de caminho de debug e
gravavam `cycle_1`/`cycle_2` no DWARF. O protocolo foi corrigido com
`asflags-y += -fdebug-prefix-map=$(src)=/...` nos Makefiles.

## Resultado

Os dois drivers passaram em dois rebuilds Docker limpos, reproduziram bytes
idênticos e foram promovidos somente após os gates AArch64, aliases,
namespaces, símbolos indefinidos e vermagic. A decomposição publicada passou
em `53/53` funções. O relatório bruto está em `driver_audit_hard_v3.json` e o
índice de decomposição em `module_decomposition_hard_v2.json`.

`zte_ir` e `zte_led` continuam sem promoção: seus rebuilds são reproduzíveis,
mas não reproduzem a superfície de símbolos indefinidos stock
(`alt_cb_patch_nops`, `mem_alloc_profiling_key`, `noop_llseek` para `zte_ir`, e
`mem_alloc_profiling_key` para `zte_led`).

O resultado é estrutural/offline e não prova equivalência semântica, carga no
Android, validação em hardware ou segurança funcional.
