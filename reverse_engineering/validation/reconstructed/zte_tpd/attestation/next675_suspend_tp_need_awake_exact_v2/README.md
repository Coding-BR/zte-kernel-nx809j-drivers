# `suspend_tp_need_awake` — atestação offline exact v2

Esta unidade consolida `zte_tpd:suspend_tp_need_awake@0011049c` contra
`reference_modules/stock/zte_tpd.ko`. O candidato foi compilado em dois
ciclos Docker reproduzíveis usando a imagem `nubia-sm8850-kernel-builder:latest`,
os volumes `nubia_sm8850_kernel_src` e `nubia_sm8850_kernel_toolchains` e o
toolchain `clang-r536225`.

Os gates estáticos passaram: source sync, build Docker determinístico em dois
ciclos, comparação AArch64 com 20 instruções/80 bytes, relocations de
`tpd_cdev`, KCFI com type ID `0x6fbb3035`, Joern estrito e harness host
ASan/UBSan em dois ciclos. O módulo candidato versionado tem SHA-256
`cde17ecf4a56d898acce6f0efd65754ce0c560f5bb45546cf5159a039adf96a4` e
20.234.792 bytes.

O resultado é `PROMOTED_OFFLINE_EXACT` limitado à função analisada. Não é uma
alegação de equivalência completa do driver nem de comportamento em Android,
NX809J ou hardware físico; esses testes continuam deliberadamente adiados.
