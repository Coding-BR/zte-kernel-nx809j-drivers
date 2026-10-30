# `syna_tcm_update_cs_config` exact revalidation v2

Esta atestação registra a revalidação Docker-backed da microtarefa `308_syna_tcm_update_cs_config`, função stock `syna_tcm_update_cs_config`, entrada `0x00127414`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`; ambos produziram o mesmo módulo de 6.307.336 bytes.
- Comparação AArch64: PASS exato; 249 instruções e símbolo de 996 bytes, com opcode, relocations, seção e tamanho compatíveis.
- KCFI: PASS; type ID `0xdd66a5c9` preservado.
- Joern: PASS no inventário estrutural e gate de análise estática.
- Teste direto: PASS; 11 cenários em 2 ciclos Docker com ASan/UBSan e hashes das entradas registrados.

## Limitações

Esta é uma validação offline/estática. O contrato host não substitui o teste em Android/NX809J físico, transporte de firmware, barramento, estado do controlador ou inserção do módulo.
