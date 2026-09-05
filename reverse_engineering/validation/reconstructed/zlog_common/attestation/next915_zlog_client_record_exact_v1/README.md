# zlog_client_record — atestação offline exact v1

Status: `CORE_GATES_PASS` / offline-only.

Esta unidade consolida `zlog_client_record` contra
`reference_modules/full_vendor_boot/zlog_common.ko`. O candidato foi
recompilado em dois ciclos Docker com `nubia-sm8850-kernel-builder:latest`,
`nubia_sm8850_kernel_src`, `nubia_sm8850_kernel_toolchains` e
`clang-r536225`.

Gates aprovados: identidade de entrada, Docker reprodutível, assembly/relocations,
Ghidra/P-Code, Joern scoped/slice, KCFI e mapa de reconstrução (`8/8`). O
export Ghidra candidato foi preservado junto desta atestação e representa o
mesmo candidato Docker identificado pelo SHA-256 no relatório.

O runner é não-promotor por desenho. A evidência é estática/offline; não houve
execução em Android/NX809J, `insmod`, validação de hardware ou alegação de
equivalência funcional absoluta.
