# `syna_dev_probe` exact revalidation v2

Esta atestação registra a revalidação Docker-backed da microtarefa `157_syna_dev_probe`, função stock `syna_dev_probe`, entrada `0x00112038`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`.
- Módulo candidato: 6.307.336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- Comparação AArch64: PASS exato; 352 instruções e símbolo de 1.408 bytes, com opcode, relocations, seção e tamanho compatíveis.
- KCFI: PASS; type ID `0xc7f8c87c` preservado.
- Teste direto: PASS; 11 cenários em 2 ciclos Docker com ASan/UBSan e hashes das entradas registrados.

## Correção de metadado

O manifesto anterior informava 1.364 bytes. O ELF stock/KCFI autoritativo e o candidato revalidado medem 1.408 bytes; o manifesto foi corrigido junto com esta promoção.

## Limitações

Esta é uma validação offline/estática. O contrato host não substitui o teste em Android/NX809J físico, transporte de firmware, IRQ, estado do controlador ou inserção do módulo.
