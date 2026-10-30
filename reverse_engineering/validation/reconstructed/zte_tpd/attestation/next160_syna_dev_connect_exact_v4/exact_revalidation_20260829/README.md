# `syna_dev_connect` exact revalidation v4

Esta atestação registra a revalidação Docker-backed da microtarefa `160_syna_dev_connect`, função stock `syna_dev_connect`, entrada `0x00112714`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`.
- Módulo candidato: 6.307.336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- Comparação AArch64: PASS exato; 251 instruções e símbolo de 1.004 bytes, com opcode, relocations, seção e tamanho compatíveis.
- KCFI: PASS; type ID `0xae20471c` preservado.
- Teste direto: PASS; 5 cenários em 2 ciclos, com ASan/UBSan e hashes das entradas registrados.

## Limitações

Esta é uma validação offline/estática. O contrato host não substitui o teste em Android/NX809J físico, transporte de firmware, IRQ, estado do controlador ou inserção do módulo.
