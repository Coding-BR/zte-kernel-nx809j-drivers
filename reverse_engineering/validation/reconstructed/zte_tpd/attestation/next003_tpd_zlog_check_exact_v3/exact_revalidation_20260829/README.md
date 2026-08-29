# `tpd_zlog_check` exact revalidation v3

Esta atestação registra a revalidação Docker-backed da microtarefa `003_tpd_zlog_check`, função stock `tpd_zlog_check`, entrada `0x00107718`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`; ambos produziram o mesmo módulo de 6.307.336 bytes.
- Comparação AArch64: PASS exato; 43 instruções e símbolo de 172 bytes, com opcode, relocations, seção e tamanho compatíveis.
- KCFI: PASS; type ID `0xc3c3f247` preservado.
- Joern: PASS no inventário estrutural e gate de análise estática.
- Teste direto: PASS; 5 cenários em 2 ciclos Docker com ASan/UBSan e hashes das entradas registrados.

## Limitações

Esta é uma validação offline/estática. O contrato host não substitui o teste em Android/NX809J físico, transporte zlog, SPI, firmware ou inserção do módulo.
