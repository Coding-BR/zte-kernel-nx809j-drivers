# zlog_reset_client — atestação offline exact v1

Status: `CORE_GATES_PASS` / offline-only.

Esta unidade consolida `zlog_reset_client@00100ac0` contra
`reference_modules/full_vendor_boot/zlog_common.ko`. O candidato foi
recompilado em dois ciclos Docker com `nubia-sm8850-kernel-builder:latest`,
`nubia_sm8850_kernel_src`, `nubia_sm8850_kernel_toolchains` e
`clang-r536225`. A entrada candidata correspondente no layout reconstruído é
`00100da8`; essa diferença de layout está registrada nos relatórios de
identidade, sem alterar a seleção da função stock.

Os 8 gates automatizados passaram: identidade de entrada, Docker reprodutível,
assembly/relocations, Ghidra/P-Code, Joern scoped/slice, KCFI e mapa de
reconstrução. Como a função é um island AArch64 declarado `assembly_only`, o
relatório registra explicitamente a exceção estreita de decompilação Ghidra:
nomes de símbolos/layout do compilador não são autoridade quando corpo,
opcodes, relocations, shape P-Code, KCFI e identidade do módulo passam.

O runner é não-promotor por desenho. A evidência é estática/offline; não houve
execução em Android/NX809J, `insmod`, validação de hardware ou alegação de
equivalência funcional absoluta.
