# syna_tcm_testing_0100_check_data — offline exact attestation

Esta atestação cobre a microtarefa 248 na entrada stock `0011e01c` (`0x17794` no ELF). O objeto AArch64 exato reproduz 484 bytes e 121 instruções, incluindo o preâmbulo KCFI stock `0xa33285f2`, os oito testes de bit e as chamadas a `_printk`.

Os dois ciclos canônicos independentes produziram o mesmo módulo. Os gates Joern estrito, comparação AArch64 estrita, KCFI e harness direto ASan/UBSan em dois ciclos passaram. Hardware permanece adiado.
