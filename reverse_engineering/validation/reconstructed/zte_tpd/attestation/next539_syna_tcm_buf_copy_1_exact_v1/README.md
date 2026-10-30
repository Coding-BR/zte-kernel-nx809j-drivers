# syna_tcm_buf_copy_1 — offline exact attestation

Esta atestação cobre a microtarefa 251 na entrada stock `0011e454` (`0x17bcc` no ELF). O objeto AArch64 exato reproduz 640 bytes e 160 instruções; stock e candidato não possuem preâmbulo KCFI válido.

Os dois ciclos canônicos independentes produziram o mesmo módulo. Os gates Joern estrito, comparação AArch64 estrita, KCFI e harness direto ASan/UBSan em dois ciclos passaram. Hardware permanece adiado.
