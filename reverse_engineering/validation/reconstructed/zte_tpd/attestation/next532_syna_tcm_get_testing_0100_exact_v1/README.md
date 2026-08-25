# syna_tcm_get_testing_0100 — offline exact attestation

Esta atestação cobre a microtarefa 244 na entrada stock `0011daec`. O getter reproduz 12 bytes e 3 instruções, incluindo o endereço relativo de `test_0100` e o type ID KCFI `0x2b399469`.

O módulo foi compilado em dois ciclos canônicos independentes com o mesmo SHA-256. O gate Joern estrito, a comparação AArch64 estrita, KCFI e o harness direto ASan/UBSan em dois ciclos passaram. O harness valida identidade do ponteiro retornado e acesso ao objeto. Hardware permanece adiado.
