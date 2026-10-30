# `string_change` exact revalidation v2

Esta atestação registra a revalidação Docker-backed da microtarefa `325_string_change`, função stock `string_change`, entrada `0x0012aecc`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`.
- Módulo candidato: 6.307.336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- Comparação AArch64: PASS exato; 388 instruções e símbolo de 1.552 bytes, com opcode, relocations, seção e tamanho compatíveis.
- KCFI: PASS; type ID `0xdac58b52` preservado.
- Teste direto: PASS; 7 casos em 2 ciclos Docker com ASan/UBSan e hashes das entradas registrados.
- Joern estrito: PASS; função resolvida, CPG sem problemas de parsing e zero bloqueadores.

## Limitações

Esta é uma validação offline/estática. O contrato host não substitui o teste em Android/NX809J físico, transporte de firmware, IRQ, estado do controlador ou inserção do módulo.
