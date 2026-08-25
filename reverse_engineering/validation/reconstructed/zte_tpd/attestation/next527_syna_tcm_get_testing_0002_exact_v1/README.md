# syna_tcm_get_testing_0002 — offline exact attestation

Esta atestação cobre a microtarefa 239 na entrada stock `0011d79c`. O objeto AArch64 exato reproduz o retorno de `&test_0002` em 12 bytes e 3 instruções, com as relocations `R_AARCH64_ADR_PREL_PG_HI21` e `R_AARCH64_ADD_ABS_LO12_NC` e type ID KCFI `0x2b399469`.

O módulo foi compilado em dois ciclos canônicos independentes; Joern estrito, comparação assembly estrita, KCFI e o harness host ASan/UBSan em dois ciclos passaram. A validação de hardware permanece adiada.
