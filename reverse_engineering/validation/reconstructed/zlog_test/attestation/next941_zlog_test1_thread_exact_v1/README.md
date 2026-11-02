# `zlog_test1_thread` — atestação offline exact v1

Esta unidade registra `zlog_test:zlog_test1_thread@00100800` contra
`reference_modules/full_vendor_boot/zlog_test.ko`. O candidato atual foi
compilado em dois ciclos Docker independentes com
`nubia-sm8850-kernel-builder:latest`, `nubia_sm8850_kernel_src`,
`nubia_sm8850_kernel_toolchains` e `clang-r536225`.

Os gates executáveis aplicáveis passaram: identidade do mapa, Docker
reproduzível, assembly/relocations, KCFI, Joern scoped e Joern slice. O
módulo candidato versionado tem SHA-256
`c779578131ef0131fd4ceb9e77d10332a3ae063bc29adc96a477dd3e7238251a` e
159.584 bytes.

O perfil de compilador sensível não foi promovido nesta unidade: a exportação
Ghidra candidata disponível é de um módulo anterior, com identidade diferente,
e não foi usada como P-Code fresco. O resultado é
`STATIC_ALIGNED_CANDIDATE`, respaldado por ELF/AArch64, relocations, KCFI e
Joern. Android/NX809J e hardware físico continuam não validados.
