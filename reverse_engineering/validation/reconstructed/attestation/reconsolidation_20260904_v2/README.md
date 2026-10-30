# Reconsolidação estática dos drivers — 2026-09-04

Esta atestação registra a execução da auditoria pública independente usando a
árvore versionada como fonte e o Docker `nubia-sm8850-kernel-builder:latest`
com a toolchain `clang-r536225` como executor. Cada alvo recebeu dois rebuilds
limpos; a promoção só ocorreu quando ambos foram reprodutíveis e passaram os
gates ELF/modinfo/KMI.

## Resultado

Onze módulos estão `static_verified`, incluindo `zte_tpd`. Dez candidatos
foram promovidos para os bytes gerados pelo rebuild determinístico; a
decomposição hash-bound dos dez passou em `172/172` funções. O relatório
completo está em `driver_audit_all_v2.json` e o resumo em
`DRIVER_AUDIT_all_v2.md`; a decomposição está em
`module_decomposition_promoted_v2.json`.

Quatro alvos permanecem sem promoção deliberadamente:

- `zte_imem_info`: os dois ciclos ainda não são reproduzíveis.
- `zte_power_supply`: os dois ciclos ainda não são reproduzíveis.
- `zte_ir`: o rebuild não reproduz todos os símbolos indefinidos stock.
- `zte_led`: o rebuild não reproduz todos os símbolos indefinidos stock.

O lote é estrutural/offline. Não prova equivalência semântica, carga no
Android, validação em hardware ou segurança funcional.
