# zlog_common_init — atestação offline exact v1

Status: `CORE_GATES_PASS` / offline-only.

Esta unidade consolida o símbolo stock `init_module@00101268` contra a função
fonte `zlog_common_init`; o candidato Ghidra correspondente é o alias
`init_module` no layout reconstruído. O módulo foi recompilado em dois ciclos
Docker com `nubia-sm8850-kernel-builder:latest`, `nubia_sm8850_kernel_src`,
`nubia_sm8850_kernel_toolchains` e `clang-r536225`.

Os 8 gates automatizados passaram: identidade de entrada, Docker reprodutível,
assembly/relocations, Ghidra/P-Code, Joern scoped/slice, KCFI e mapa de
reconstrução. A semântica Ghidra passou sem fallback não-autoritativo.

O runner é não-promotor por desenho. A evidência é estática/offline; não houve
execução em Android/NX809J, `insmod`, validação de hardware ou alegação de
equivalência funcional absoluta.
