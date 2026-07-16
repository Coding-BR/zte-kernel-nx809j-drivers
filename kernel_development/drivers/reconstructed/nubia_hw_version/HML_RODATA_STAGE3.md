# Evidencia de `.rodata` Stage 3: `hml_config_version_show`

O corpo AArch64 da funcao e identico ao stock: 160 bytes, 40 instrucoes e 12
relocacoes. A unica diferenca estrita e a identidade do alvo anonimo em
`.rodata`.

- candidato: simbolo `hml_config_version`, `.rodata+0x370`, 12 bytes;
- stock: referencia anonima `.rodata+0x394`, 12 bytes;
- bytes em ambos: `000000000200000001000000`;
- valores `s32` little-endian: `{ 0, 2, 1 }`.

O padrao aparece quatro vezes em cada secao. Portanto, a igualdade de bytes e
comprovada, mas nao existe base para afirmar qual das quatro ocorrencias stock
corresponde nominalmente ao simbolo C. O comparador permanece conservador e
mantem a relocacao como nao exata.

Evidencia estruturada:
`reverse_engineering/validation/reconstructed/nubia_hw_version/stage3_rodata_equivalence.json`.
