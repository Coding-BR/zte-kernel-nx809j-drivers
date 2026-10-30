# syna_tcm_testing_full_raw — offline exact attestation

Esta atestação cobre a microtarefa 250 na entrada stock `0011e214` (`0x1798c` no ELF). O objeto AArch64 exato reproduz 576 bytes e 144 instruções, incluindo o preâmbulo KCFI `0x81c04a92`, dispatch do production test, callbacks de limite, limpeza gerenciada e relocations stock.

Os dois ciclos canônicos independentes produziram o mesmo módulo. Os gates Joern estrito, comparação AArch64 estrita, KCFI e harness direto ASan/UBSan em dois ciclos passaram. Hardware permanece adiado.
