# syna_tcm_get_testing_0500 — offline exact attestation

Esta atestação cobre a microtarefa 249 na entrada stock `0011e204` (`0x1797c` no ELF). O objeto AArch64 exato reproduz 12 bytes e 3 instruções (`ADRP/ADD/RET`), com o preâmbulo KCFI stock `0x2b399469` e relocation para `test_0500`.

Os dois ciclos canônicos independentes produziram o mesmo módulo. Os gates Joern estrito, comparação AArch64 estrita, KCFI e harness direto ASan/UBSan em dois ciclos passaram. Hardware permanece adiado.
