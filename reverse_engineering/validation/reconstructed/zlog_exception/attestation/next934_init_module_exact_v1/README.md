# `init_module` — atestação offline exact v1

Esta unidade registra `zlog_exception:init_module@00100ca4` contra
`reference_modules/full_vendor_boot/zlog_exception.ko`. O candidato atual foi
compilado em dois ciclos Docker independentes com
`nubia-sm8850-kernel-builder:latest`, `nubia_sm8850_kernel_src`,
`nubia_sm8850_kernel_toolchains` e `clang-r536225`.

Os gates executáveis aplicáveis passaram: identidade do mapa, Docker
reproduzível, assembly/relocations, KCFI, Joern scoped e Joern slice. O
módulo candidato versionado tem SHA-256
`a38b3fccb92c47ab8203821ae7f9f67d5d1529577512cbafe61d2e6fa75038f5` e
232.552 bytes.

O resultado é `STATIC_ALIGNED_CANDIDATE`, não uma promoção. A exportação Ghidra
candidata disponível é de um módulo anterior e não foi usada como prova de
P-Code fresco; a unidade permanece respaldada por ELF/AArch64, KCFI e Joern.
Android/NX809J e hardware físico continuam não validados.
