# `tpd_set_one_key` — atestação offline exact v2

Esta unidade consolida `zte_tpd:tpd_set_one_key@0012befc` contra
`reference_modules/stock/zte_tpd.ko`. O candidato foi recompilado em dois
ciclos Docker independentes com `nubia-sm8850-kernel-builder:latest`, os
volumes `nubia_sm8850_kernel_src` e `nubia_sm8850_kernel_toolchains` e o
toolchain `clang-r536225`.

Os gates passaram: build Docker reprodutível, comparação AArch64 de 24
instruções/96 bytes com relocations equivalentes, KCFI compatível com a
ausência de preâmbulo KCFI válido no stock, Joern estrito e host harness
ASan/UBSan. O candidato versionado tem SHA-256
`a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3` e
6.307.336 bytes.

O resultado é `PROMOTED_OFFLINE_EXACT` limitado à função analisada. Não há
alegação de equivalência completa do driver ou de comportamento em Android,
NX809J ou hardware físico; a validação de hardware permanece adiada.
