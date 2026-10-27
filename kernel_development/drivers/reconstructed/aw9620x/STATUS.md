# Status de reconstrução do driver `aw9620x`

Estado: `STATIC_VERIFIED_OFFLINE_CORE`. Os oito gates automatizados do protocolo passaram; a promoção segue bloqueada porque não houve revisão independente nem validação em hardware. O protocolo registrou `promotion_authorized: false`.

- Stock: `reference_modules/full_vendor_boot/aw9620x.ko`, SHA-256 `3211fdc4b97aabe3c0db8f06f3ec07da8c3c382a6273412adb089940e9d4b532`.
- Candidato: `aw9620x.ko`, 270608 bytes, SHA-256 `415ecdadac15591b3bddebea79514c142cc92e612cc586f26eba93622259f2f0`.
- 79/79 funções: assembly e relocações PASS; 79/79 comparações KCFI PASS; 79/79 funções Ghidra/P-Code PASS.
- Joern estrito e slice PASS; 877 chamadas no grafo, sem chamadas não resolvidas nem divergências mapeadas.
- Docker: dois builds limpos e reproduzíveis, com o mesmo SHA-256; candidato sincronizado com o workspace curado do Docker.
- Modo: ilhas de assembly exatas e dados ELF rastreados. Isto não é recuperação de implementação C nem prova de equivalência comportamental.
- `.init.eh_frame` foi preservado na evidência stock e omitido do candidato por incompatibilidade de relocalização PREL32 para `.exit.text` detectada pelo modpost.
- Revisão independente, harness de host, sanitizadores, evidência de barramento/registro e execução controlada em hardware seguem pendentes ou sem validação nesta atestação.

A atestação está em `reverse_engineering/validation/reconstructed/aw9620x/attestation/next001_aw9620x_exact_static_v1/`. O relatório detalhado está em `reverse_engineering/validation/reconstructed/aw9620x/offline_static/hard_protocol_core_iteration7/hard_protocol_report.json`.
