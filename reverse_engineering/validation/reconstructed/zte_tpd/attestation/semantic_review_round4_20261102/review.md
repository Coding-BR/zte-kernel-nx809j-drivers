# Revisão semântica do zte_tpd — rodada 4

## Mutex do caminho de atualização

A análise encontrou uma omissão na fonte C de `syna_tcm_do_fw_update_ex`: o contexto local era zerado, mas seu mutex em `+0x50` não recebia `mutex_init`, embora `syna_tcm_update_flash_block` o bloqueie no caminho otimizado. O pseudocódigo Ghidra stock chama `__mutex_init` (entrada `00125c18`, linha 67), e a montagem exata preserva a relocação para `__mutex_init` (linha 87).

Adicionei `mutex_init(access.mutex)` depois da validação de parâmetros e atualizei o hash da fonte em `reconstruction_map.json`. O Makefile filtra `syna_tcm_do_fw_update_ex.c` e usa `syna_tcm_do_fw_update_ex_exact.S`; portanto, a montagem já compilada continuava inicializando corretamente o mutex. A correção alinha o espelho C ao comportamento stock e protege uma futura compilação por C.

## Alertas de lifetime e sincronização

Foram revisados 18 call sites do Joern: 14 de lifetime e 4 de sincronização, em `syna_tcm_read_flash_area`, `syna_tcm_read_flash_boot_cs_config` e `syna_tcm_update_flash_block`. Não encontrei caminho local confirmado com vazamento, double free ou mutex sem unlock. Os buffers temporários convergem em limpeza comum; as saídas do caminho otimizado liberam o mutex em ramos mutuamente exclusivos. O Ghidra stock mostra a mesma estrutura de cleanup e unlock.

Os alertas Joern identificam chamadas que merecem análise e não provam vulnerabilidades por si sós. Concorrência com remoção do dispositivo e interleavings de teardown continuam fora desta revisão estática.

## Build Docker canônico

O sincronizador copiou um arquivo e removeu zero arquivos obsoletos. O builder confirmou igualdade dos 848 insumos Kbuild, passou nos dois ciclos independentes e produziu módulos idênticos de SHA-256 `5c464fbd0b21907b80b1941f183f32b406ad080bc4ce9d58a6482e987c18b4eb` (6291200 bytes). O `vermagic` corresponde ao kernel alvo `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`.

Relatórios: `canonical_build_report.json` e `docker_sync_plan.json`. Os quatro logs de build/limpeza foram incluídos e seus hashes conferidos contra o relatório canônico. A reconstrução permanece estática; execução no Android/NX809J e revisão humana independente não foram feitas. O mapa global continua `PARTIAL_SOURCE_MAP`.

## Próximo lote

Seguir pelos alertas ainda não revisados em `syna_ioctl` e `string_change`, recuperando primeiro os caminhos de chamada e as evidências Ghidra/assembly antes de alterar código.
