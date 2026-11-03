# ZTE TPD: `tpd_set_screen_off_awake` — evidência cfix

Pacote estático do candidato cfix gerado em 2 de novembro de 2026. A função stock tem entrada `0x0012ca1c`; a exportação Ghidra do candidato registra a função em `0x00141900`.

## Identidades

- Módulo stock: SHA-256 `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Fonte C: SHA-256 `ffea4d2b065d384dac9206447bd76cc5fa45a09a19f2a8bf56523f46b897a7e7`.
- Módulo candidato: SHA-256 `a1d70b9f690df1b8c12962fd9e99b933496bcb5471a3919fe4e60b0bc2b95db4` (6,384,880 bytes).
- Exportação Ghidra: MD5 `31f846df387626b04661fd4492889a4e`, correspondente ao módulo candidato acima.

## Gates deste cfix

- Build canônico Docker: passou em 2 de 2 ciclos.
- Comparação AArch64 com relocations: passou para 3 funções; zero falhas.
- KCFI: comparação de callsite passou; 1 callsite indireto no candidato e 1 no stock, com slot, type ID e trap correspondentes.
- Harness host com ASan/UBSan: passou em 72 casos e 576 verificações; binário reproduzível; mutação de controle foi detectada.
- Ghidra: manifesto, registro da função, pseudocódigo e P-Code foram preservados para o mesmo módulo candidato.

Os relatórios completos e os assembly de stock/candidato acompanham este pacote. `SHA256SUMS` fixa a identidade de cada arquivo.

## Limite de promoção

Este pacote registra evidência do cfix. A decisão registrada para a execução anterior `o5` é `NOT_AUTHORIZED` e referencia outro módulo (`49f1dfe7…`). Ela não promove este cfix. Por isso, esta publicação não altera o mapa de reconstrução nem declara a função promovida. Execução em hardware NX809J permanece fora do escopo.
