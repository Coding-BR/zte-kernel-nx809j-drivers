# `ram_num_show` — reconstrução candidata

O candidato está em `candidate_under_static_validation`; nenhuma promoção foi
feita.

## Implementação

O callback lê o contexto armazenado em `dev + 0x98`, calcula o endereço do
`struct aw_haptic` como contexto menos `0xa8`, chama `get_ram_num` e imprime o
byte em contexto mais `0x3b4`. Os deslocamentos e a chamada estão confirmados
no Assembly, P-Code e decompilação Ghidra stock.

## Gates automatizados

- Joern scoped e slice: `PASS`.
- Docker, duas compilações limpas: `PASS`, módulo SHA-256
  `96ff8a6425f783dce1885a964a6057b7f1c0b79099bece7980f1dab2f412295d`.
- Assembly/relocations: `PASS`; 19 instruções e 76 bytes correspondem.
- KCFI de entrada: `PASS`, type ID `0xae84bcd4`. Callsite KCFI é não aplicável:
  a função contém zero chamadas indiretas nos dois módulos.
- Ghidra C normalizado, P-Code e tamanho do corpo: `PASS`.
- Resultado do protocolo: `CORE_GATES_PASS`; promoção continua desautorizada
  enquanto faltarem revisão independente e as evidências de runtime exigidas.

O relatório completo e os artefatos ficam nesta pasta. O mapa aponta também
para uma cópia do relatório em `../haptic_ram_num_show_20261029/`.
