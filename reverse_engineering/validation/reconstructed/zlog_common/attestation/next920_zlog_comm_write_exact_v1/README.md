# zlog_comm_write — atestação offline exact v1

Status: `CORE_GATES_PASS` / offline-only.

Esta unidade consolida `zlog_comm_write@00100f9c` contra
`reference_modules/full_vendor_boot/zlog_common.ko`. O candidato foi
recompilado em dois ciclos Docker com `nubia-sm8850-kernel-builder:latest`,
`nubia_sm8850_kernel_src`, `nubia_sm8850_kernel_toolchains` e
`clang-r536225`. A entrada candidata correspondente no layout reconstruído é
`00100e74`; essa diferença de layout está registrada nos relatórios de
identidade, sem alterar a seleção da função stock.

Os 8 gates automatizados passaram: identidade de entrada, Docker reprodutível,
assembly/relocations, Ghidra/P-Code, Joern scoped/slice, KCFI e mapa de
reconstrução. A semântica Ghidra passou com normalização comprovada de binding
global por seção (`g_zlog_server` versus `zlog_exact_bss_base`); não foi usado
fallback assembly-only nem fallback de P-Code.

O frontend Joern usa a definição analítica explícita `__user`, registrada no
manifesto, para preservar as funções de interface de usuário no CPG. Isso não
altera a compilação Docker do candidato.

O runner é não-promotor por desenho. A evidência é estática/offline; não houve
execução em Android/NX809J, `insmod`, validação de hardware ou alegação de
equivalência funcional absoluta.
