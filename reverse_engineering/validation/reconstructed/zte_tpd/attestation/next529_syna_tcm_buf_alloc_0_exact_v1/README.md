# syna_tcm_buf_alloc_0 — offline exact attestation

Esta atestação cobre a microtarefa 241 na entrada stock `0011d940`, a segunda ocorrência do símbolo stock `syna_tcm_buf_alloc`. O objeto AArch64 exato reproduz 220 bytes e 55 instruções, incluindo instruções, relocations, strings de printk e o comportamento KCFI `BOTH_NO_VALID_KCFI_PREAMBLE` observado nos dois módulos.

O módulo foi compilado em dois ciclos canônicos independentes com o mesmo SHA-256. O gate Joern estrito, a comparação AArch64 estrita, o KCFI e o harness direto ASan/UBSan em dois ciclos passaram. O harness cobre cinco grupos: buffer existente acima do limite, alocação bem-sucedida, dispositivo gerenciado ausente, substituição de buffer e falha de `kmalloc`. A validação de hardware permanece adiada.
