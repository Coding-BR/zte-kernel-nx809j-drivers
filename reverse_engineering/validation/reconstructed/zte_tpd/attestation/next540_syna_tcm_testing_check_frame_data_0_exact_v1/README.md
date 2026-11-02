# syna_tcm_testing_check_frame_data_0 — offline exact attestation

Esta atestação cobre a microtarefa 252 na segunda ocorrência stock `0011e6d4` (`0x17e4c` no ELF). O objeto AArch64 exato reproduz 364 bytes e 91 instruções; stock e candidato não possuem preâmbulo KCFI válido.

Os dois ciclos canônicos independentes produziram o mesmo módulo. Os gates Joern estrito, comparação AArch64 estrita, KCFI e harness direto ASan/UBSan em dois ciclos passaram. Hardware permanece adiado.
