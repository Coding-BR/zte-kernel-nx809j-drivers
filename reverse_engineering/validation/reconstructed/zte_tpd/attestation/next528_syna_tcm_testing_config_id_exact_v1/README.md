# syna_tcm_testing_config_id — offline exact attestation

Esta atestação cobre a microtarefa 240 na entrada stock `0011d7ac`. O objeto AArch64 exato reproduz 404 bytes e 101 instruções, incluindo as 20 relocations, strings printk e type ID KCFI `0x81c04a92`.

O módulo foi compilado em dois ciclos canônicos independentes; Joern estrito, comparação assembly estrita, KCFI e o harness direto ASan/UBSan em dois ciclos passaram. O harness cobre cinco grupos de casos: entradas nulas, falha de app-info, dual firmware, cópia/pass e mismatch/falha de alocação. Hardware permanece adiado.
