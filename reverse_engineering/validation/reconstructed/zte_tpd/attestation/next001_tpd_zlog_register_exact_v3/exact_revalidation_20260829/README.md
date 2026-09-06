# `tpd_zlog_register` exact revalidation v3

Esta atestação registra a revalidação Docker-backed da microtarefa `001_tpd_zlog_register`, função stock `tpd_zlog_register`, entrada `0x0010688c`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`; ambos produziram o mesmo módulo de 6.307.336 bytes.
- Comparação AArch64: PASS exato; 66 instruções e símbolo de 264 bytes, com opcode, relocations, seção e tamanho compatíveis.
- KCFI: PASS; type ID `0xd02e5b64` preservado.
- Joern: PASS no inventário estrutural e gate de análise estática.
- Teste direto: PASS; 9 cenários em 2 ciclos Docker com ASan/UBSan e hashes das entradas registrados.

## Correção de metadado

O manifesto anterior informava 224 bytes. O ELF stock/KCFI autoritativo e o candidato revalidado medem 264 bytes; o manifesto foi corrigido junto com esta promoção.

## Limitações

Esta é uma validação offline/estática. O contrato host não substitui o teste em Android/NX809J físico, transporte zlog real, SPI, firmware ou inserção do módulo.
