# `tp_ghost_check` exact revalidation v3

Esta atestação registra a revalidação Docker-backed da microtarefa `101_tp_ghost_check`, função stock `tp_ghost_check`, entrada `0x0010f400`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`.
- Módulo candidato: 6.307.336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- Comparação AArch64: PASS exato; 328 instruções e símbolo de 1.312 bytes, com opcode, relocations, seção e tamanho compatíveis.
- KCFI: PASS; type ID `0x2fad8a96` preservado.
- Teste direto: PASS; 11 cenários em 2 ciclos Docker com ASan/UBSan e hashes das entradas registrados.

## Correção de metadado

O manifesto anterior informava 1.272 bytes. O ELF stock/KCFI autoritativo e o candidato revalidado medem 1.312 bytes; o manifesto foi corrigido junto com esta promoção.

## Limitações

Esta é uma validação offline/estática. O contrato host não substitui o teste em Android/NX809J físico, transporte de firmware, IRQ, estado do controlador ou inserção do módulo.
