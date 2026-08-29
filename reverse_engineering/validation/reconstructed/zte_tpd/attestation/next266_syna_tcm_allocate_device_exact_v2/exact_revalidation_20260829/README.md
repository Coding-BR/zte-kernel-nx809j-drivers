# `syna_tcm_allocate_device` exact revalidation v2

Esta atestação registra a revalidação Docker-backed da microtarefa `266_syna_tcm_allocate_device`, função stock `syna_tcm_allocate_device`, entrada `0x00121124`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`.
- Módulo candidato: 6.307.336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- Comparação AArch64: PASS exato; 362 instruções e símbolo de 1.448 bytes, com opcode, relocations, seção e tamanho compatíveis.
- KCFI: PASS; type ID `0x6dc86eaa` preservado.
- Teste direto: PASS; 4 casos em 2 ciclos Docker com ASan/UBSan e hashes das entradas registrados.

## Limitações

Esta é uma validação offline/estática. O contrato host não substitui o teste em Android/NX809J físico, transporte de firmware, IRQ, estado do controlador ou inserção do módulo.
