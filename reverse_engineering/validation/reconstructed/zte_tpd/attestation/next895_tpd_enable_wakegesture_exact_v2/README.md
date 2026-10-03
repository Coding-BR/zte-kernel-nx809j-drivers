# `tpd_enable_wakegesture` — atestação offline exact v2

Esta unidade consolida `zte_tpd:tpd_enable_wakegesture@0012bb4c` contra
`reference_modules/stock/zte_tpd.ko`. O candidato foi recompilado em dois
ciclos Docker independentes com `nubia-sm8850-kernel-builder:latest`, os
volumes `nubia_sm8850_kernel_src` e `nubia_sm8850_kernel_toolchains` e o
toolchain `clang-r536225`.

Os gates passaram: build Docker reprodutível, comparação AArch64 de 19
instruções/76 bytes com relocations equivalentes, KCFI, Joern estrito e host
harness ASan/UBSan. O candidato versionado tem SHA-256
`55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce` e
6.307.336 bytes.

O resultado é `PROMOTED_OFFLINE_EXACT` limitado à função analisada. Não há
alegação de equivalência completa do driver ou de comportamento em Android,
NX809J ou hardware físico; a validação de hardware permanece adiada.
