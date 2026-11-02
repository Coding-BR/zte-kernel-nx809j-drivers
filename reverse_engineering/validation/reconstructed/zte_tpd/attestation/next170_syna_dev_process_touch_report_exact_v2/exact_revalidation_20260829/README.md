# `syna_dev_process_touch_report` exact revalidation v2

Esta atestação registra a revalidação Docker-backed da microtarefa `170_syna_dev_process_touch_report`, função stock `syna_dev_process_touch_report`, entrada `0x00113c74`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`.
- Módulo candidato: 6.307.336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- Comparação AArch64: PASS exato; 335 instruções e símbolo de 1.340 bytes, com opcode, relocations, seção e tamanho compatíveis.
- KCFI: PASS; type ID `0x9f93c40a` preservado.
- Teste direto: PASS; 11 casos em 2 ciclos Docker com ASan/UBSan e hashes das entradas registrados.
- Joern estrito: PASS; função resolvida, parsing limpo e zero bloqueadores.

## Limitações

Esta é uma validação offline/estática. O contrato host não substitui o teste em Android/NX809J físico, transporte de firmware, IRQ, estado do controlador ou inserção do módulo.
