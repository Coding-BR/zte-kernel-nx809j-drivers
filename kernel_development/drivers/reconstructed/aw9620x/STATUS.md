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

## Reauditoria Docker — 2026-11-02

- Dois builds limpos do snapshot Docker passaram com SHA-256 idêntico: `bfc9ba96f24489c51f232a04f2cdaff23b9fd5a99b5ddb2e1796a0683348a125`. O candidato existente e a fonte do repositório continuam em `415ecdadac15591b3bddebea79514c142cc92e612cc586f26eba93622259f2f0`.
- Conteúdo/layout de código e dados alocados, `modinfo`, imports, aliases, namespace, vermagic alvo, mapa de 79 funções e identidade do kernel passaram. O SHA integral difere no build-id e em metadados de debug/BTF; isso não é igualdade binária integral.
- O `candidate_sha256` foi adicionado ao mapa e sincronizado no Docker; ambos agora vinculam o candidato `415ec...f2f0`.
- O snapshot Docker não contém `functions/*.S`: são 79 cópias byte-idênticas dos arquivos Assembly da raiz, não referenciadas pelo Makefile/Kbuild nem pelas fontes. Os 81 objetos-fonte da lista composta existem na raiz tanto no repositório quanto no Docker; o build estrito confirmou o snapshot. Mantive as cópias como suplementares no repositório, sem duplicá-las no snapshot de build.
- Esta reauditoria não altera `promotion_authorized: false`. Revisão independente, harness/sanitizadores e validação controlada em hardware permanecem pendentes; os 79 corpos estão no modo `assembly_only`, não em implementação C semântica.
- Evidência: `reverse_engineering/validation/reconstructed/aw9620x/attestation/full_driver_audit_20261102/`.
