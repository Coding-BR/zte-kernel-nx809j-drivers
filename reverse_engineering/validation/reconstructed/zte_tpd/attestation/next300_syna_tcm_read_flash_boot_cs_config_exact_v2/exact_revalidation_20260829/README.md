# `syna_tcm_read_flash_boot_cs_config` exact revalidation v2

Esta atestação registra a revalidação Docker-backed da microtarefa `300_syna_tcm_read_flash_boot_cs_config`, função stock `syna_tcm_read_flash_boot_cs_config`, entrada `0x001254bc`.

## Gates

- Build canônico AArch64 do módulo: PASS em dois ciclos independentes usando `engenharia/curated/zte_tpd`.
- Módulo candidato: 6.307.336 bytes, SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- Comparação AArch64: PASS exato; 343 instruções e símbolo de 1.372 bytes, com opcode, relocations, seção e tamanho compatíveis.
- KCFI: PASS simétrico `BOTH_NO_VALID_KCFI_PREAMBLE` para stock e candidato.
- Teste direto: PASS; 8 casos em 2 ciclos Docker com ASan/UBSan e hashes das entradas registrados.

## Limitações

Esta é uma validação offline/estática. O contrato host não substitui o teste em Android/NX809J físico, transporte de firmware, IRQ, estado do controlador ou inserção do módulo.
