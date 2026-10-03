# syna_tcm_testing_check_array_data — offline exact attestation

Esta atestação cobre a microtarefa 247 na entrada stock `0011df64`. O objeto AArch64 exato reproduz 180 bytes e 45 instruções, incluindo a chamada ao checker `syna_tcm_testing_0100_check_data` e o controle de offsets esperado. O stock e o candidato não possuem preâmbulo KCFI válido.

O módulo foi compilado em dois ciclos canônicos independentes com o mesmo SHA-256. Os gates Joern estrito, comparação AArch64 estrita, KCFI e harness direto ASan/UBSan em dois ciclos passaram. Hardware permanece adiado.
