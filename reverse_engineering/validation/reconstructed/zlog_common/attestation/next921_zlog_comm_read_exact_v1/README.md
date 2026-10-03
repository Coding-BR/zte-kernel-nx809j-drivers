# zlog_comm_read — atestação offline exact v1

Status: `CORE_GATES_PASS` / offline-only.

Esta unidade consolida `zlog_comm_read@00100f90` contra
`reference_modules/full_vendor_boot/zlog_common.ko`. O candidato foi
recompilado em dois ciclos Docker com `nubia-sm8850-kernel-builder:latest`,
`nubia_sm8850_kernel_src`, `nubia_sm8850_kernel_toolchains` e
`clang-r536225`. A entrada candidata correspondente no layout reconstruído é
`00100e68`; essa diferença de layout está registrada nos relatórios de
identidade, sem alterar a seleção da função stock.

Os 8 gates automatizados passaram: identidade de entrada, Docker reprodutível,
assembly/relocations, Ghidra/P-Code, Joern scoped/slice, KCFI e mapa de
reconstrução. A semântica Ghidra passou sem fallback não-autoritativo.

O frontend Joern usa a definição analítica explícita `__user`, registrada no
manifesto, para preservar a assinatura de interface de usuário no CPG. Isso
não altera a compilação Docker do candidato.

O runner é não-promotor por desenho. A evidência é estática/offline; não houve
execução em Android/NX809J, `insmod`, validação de hardware ou alegação de
equivalência funcional absoluta.
