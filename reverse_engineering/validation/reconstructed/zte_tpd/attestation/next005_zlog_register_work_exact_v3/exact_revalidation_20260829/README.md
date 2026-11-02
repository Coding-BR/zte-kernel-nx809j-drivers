# `zlog_register_work` exact revalidation v3

Esta atestação registra a revalidação Docker-backed da microtarefa `005_zlog_register_work`, função stock `zlog_register_work`, entrada `0x00107844`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`; ambos produziram o mesmo módulo de 6.307.336 bytes.
- Comparação AArch64: PASS exato; 11 instruções e símbolo de 44 bytes, com opcode, relocations, seção e tamanho compatíveis.
- KCFI: PASS; type ID `0xa607748c` preservado.
- Joern: PASS no inventário estrutural e gate de análise estática.
- Teste direto de contrato compartilhado: PASS; 10 cenários em 2 ciclos Docker com ASan/UBSan, incluindo o ciclo de work lifecycle que chama esta função.

## Limitações

O harness compartilhado não substitui teste em Android/NX809J físico nem executa scheduler, serviço zlog, SPI, firmware ou inserção do módulo.
