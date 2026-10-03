# syna_tcm_testing_0001_check_device_id — offline exact attestation

Esta atestação cobre a microtarefa 238 na entrada stock `0011d6e4`. O objeto AArch64 exato reproduz a função preservada em 180 bytes e 45 instruções, incluindo relocations e formatos printk. A comparação KCFI confirma `BOTH_NO_VALID_KCFI_PREAMBLE`: o stock não oferece um preâmbulo KCFI standalone válido para esta função direct-call-only, e o candidato preserva essa condição.

O módulo foi compilado em dois ciclos canônicos independentes; Joern estrito, comparação assembly estrita e o harness host ASan/UBSan em dois ciclos passaram. A validação de hardware e integração Android permanece adiada.
