# aw86320 — atestação estática exata

- Veredito: `STATIC_VERIFIED_OFFLINE`.
- Gates de núcleo: `CORE_GATES_PASS` (8/8).
- Candidate SHA-256: `1e8b30b92fea439507a5e7e3b9fa982ac06a9aef54145250273ad8197ef0ada1` (165.168 bytes).
- Docker: dois builds limpos reproduzíveis; candidato curado e ciclo 2 têm o mesmo hash.
- Assembly/relocações: 37/37 funções. KCFI: 37/37 comparações requeridas.
- Ghidra/P-Code: 37/37 funções; cinco divergências apenas no C textual foram aceitas pela exceção documentada de ilha exata de assembly, com corpo/relocações e shape P-Code coincidentes.
- Joern estrito e slice: PASS; sem chamadas não resolvidas.

O protocolo não autoriza promoção para hardware. Revisão independente e validação controlada no NX809J permanecem pendentes. Não houve carregamento de módulo nem operação de flash. A classificação continua AWINIC/device-vendor; não há alegação de propriedade ZTE/Nubia.

`attestation_manifest.json` lista cada artefato primário com caminho, SHA-256 e tamanho. O relatório completo e os outputs reproduzíveis estão em `reverse_engineering/validation/reconstructed/aw86320/offline_static/hard_protocol_core_iteration5/`.
