# syna_pal_mem_cpy_0 — offline exact attestation

Esta atestação cobre a microtarefa 242 na entrada stock `0011da1c`, a segunda ocorrência do símbolo stock `syna_pal_mem_cpy`. A implementação C existente reproduz 84 bytes e 21 instruções, incluindo o contrato de ponteiros nulos, o limite mínimo de 16 bytes, a cópia de dois words e as relocations da mensagem de erro.

O módulo foi compilado em dois ciclos canônicos independentes com o mesmo SHA-256. O gate Joern estrito, a comparação AArch64 estrita, o KCFI e o harness direto ASan/UBSan em dois ciclos passaram. O harness cobre cópia de 16 bytes, tamanho maior, tamanho inválido com printk e ponteiros nulos silenciosos. A validação de hardware permanece adiada.
