# zlog_comm_create_ctrl_dev — atestação offline exact v1

Status: `CORE_GATES_PASS` / offline-only.

Esta unidade consolida `zlog_comm_create_ctrl_dev@0010136c` contra
`reference_modules/full_vendor_boot/zlog_common.ko`. O candidato foi
recompilado em dois ciclos Docker com `nubia-sm8850-kernel-builder:latest`,
`nubia_sm8850_kernel_src`, `nubia_sm8850_kernel_toolchains` e
`clang-r536225`. A entrada candidata correspondente no layout reconstruído é
`00104124`; essa diferença de layout está registrada nos relatórios de
identidade, sem alterar a seleção da função stock.

Os 8 gates automatizados passaram: identidade de entrada, Docker reprodutível,
assembly/relocations, Ghidra/P-Code, Joern scoped/slice, KCFI e mapa de
reconstrução. A função é chamada direta e não exige preâmbulo KCFI; os demais
gates permanecem obrigatórios. A semântica Ghidra passou sem fallback
não-autoritativo.

O frontend Joern registra as definições analíticas `__init` e `noinline` no
manifesto para preservar a assinatura da função; isso não altera a compilação
Docker do candidato.

O runner é não-promotor por desenho. A evidência é estática/offline; não houve
execução em Android/NX809J, `insmod`, validação de hardware ou alegação de
equivalência funcional absoluta.
