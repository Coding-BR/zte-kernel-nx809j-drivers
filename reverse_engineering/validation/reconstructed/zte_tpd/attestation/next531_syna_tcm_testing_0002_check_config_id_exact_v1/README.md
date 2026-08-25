# syna_tcm_testing_0002_check_config_id — offline exact attestation

Esta atestação cobre a microtarefa 243 na entrada stock `0011da70`. O objeto AArch64 exato reproduz 120 bytes e 30 instruções, incluindo o loop bounded de comparação, os retornos, a relocação de `printk` e a string de mismatch com newline final.

O módulo foi compilado em dois ciclos canônicos independentes com o mesmo SHA-256. O gate Joern estrito, a comparação AArch64 estrita, o KCFI e o harness direto ASan/UBSan em dois ciclos passaram. O C modificado existente foi preservado e não foi incluído no commit; o Makefile usa o objeto exato para esta função. Hardware permanece adiado.
