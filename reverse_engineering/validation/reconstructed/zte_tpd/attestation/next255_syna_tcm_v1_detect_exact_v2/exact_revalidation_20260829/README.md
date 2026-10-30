# `syna_tcm_v1_detect` exact revalidation v2

Esta atestação registra a revalidação Docker-backed da microtarefa `255_syna_tcm_v1_detect`, função stock `syna_tcm_v1_detect`, entrada `0x0011e914`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`.
- Módulo candidato: 6.307.336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- Comparação AArch64: PASS exato; 309 instruções e símbolo de 1.236 bytes, com opcode, relocations, seção e tamanho compatíveis.
- KCFI: PASS; type ID `0x24cba334` preservado.
- Teste direto: PASS; 9 casos em 2 ciclos Docker com ASan/UBSan e hashes das entradas registrados.

## Limitações

Esta é uma validação offline/estática. O contrato host não substitui o teste em Android/NX809J físico, transporte de firmware, IRQ, estado do controlador ou inserção do módulo.
