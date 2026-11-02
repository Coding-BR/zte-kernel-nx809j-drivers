# syna_tcm_testing_trx_trx_short — offline exact attestation

Esta atestação cobre a microtarefa 245 na entrada stock `0011dafc`. O objeto AArch64 exato reproduz 488 bytes e 122 instruções, incluindo os dois destinos de helpers internos, a relocação local `.bss+0x960` e o type ID KCFI `0x81c04a92`.

O módulo foi compilado em dois ciclos canônicos independentes com o mesmo SHA-256. Os gates Joern estrito, comparação AArch64 estrita, KCFI e harness direto ASan/UBSan em dois ciclos passaram. Hardware permanece adiado.
