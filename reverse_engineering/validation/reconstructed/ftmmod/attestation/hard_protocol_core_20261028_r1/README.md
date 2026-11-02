# FTMMOD hard protocol core — 2026-10-28

Resultado do runner para as nove funções do job
`hard_driver_job.ftmmod_semantic_pair_20261028.json`.

## Gates automatizados

- Ghidra P-Code: `PASS`, 9/9 funções, importações pareadas em `0x100100`;
  bias derivado dos exports: `0x100`.
- Docker: dois builds limpos passaram e produziram módulos byte-idênticos;
  SHA-256 de ambos: `6e5eb9147bf3061779d0f3059cd8efad291b3a859e7f7689a8e52134df0079de`.
- Assembly e relocations: `PASS`, 9/9.
- KCFI: `PASS`, 9/9.
- Joern estrito e slices: `PASS`.
- Identidade do mapa e entradas: `PASS`.
- Estado do protocolo: `CORE_GATES_PASS`.

## Limites

`promotion_authorized` permanece `false`. A auditoria ampla de
`validate_reconstructed_drivers.py` terminou com `static_verified: []`: faltam
os artefatos convencionais de promoção do FTMMOD, incluindo módulo `.ko`
curado, mapa final, export Ghidra no caminho canônico e documento de transição.
O resultado de core comprova somente os gates automatizados listados acima; não
comprova comportamento em hardware nem substitui revisão independente,
harnesses e demais gates de evidência exigidos pelo plano.

Os detalhes reproduzíveis estão nos relatórios JSON, manifests, logs,
comparações e módulos dos dois ciclos preservados nesta pasta.
