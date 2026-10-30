# syna_tcm_buf_copy_0 — offline exact attestation

Esta atestação cobre a microtarefa 246 na entrada stock `0011dce4`. O objeto AArch64 exato reproduz 640 bytes e 160 instruções do segundo duplicado stock `syna_tcm_buf_copy`, incluindo resize, cópia, locks e relocations de rodata. O stock e o candidato não possuem preâmbulo KCFI válido.

O módulo foi compilado em dois ciclos canônicos independentes com o mesmo SHA-256. Os gates Joern estrito, comparação AArch64 estrita, KCFI e harness direto ASan/UBSan em dois ciclos passaram. Hardware permanece adiado.
