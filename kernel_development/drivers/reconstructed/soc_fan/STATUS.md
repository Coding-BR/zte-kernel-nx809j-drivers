# Status: `soc_fan`

# Status: `soc_fan`

Estado atual: **HARDENED_CANDIDATE_BUILD_VERIFIED** — a variante de ciclo de vida altera intencionalmente 5/15 funções stock. Dois builds Docker limpos são reproduzíveis; revisão independente e hardware continuam pendentes. A seção de baseline abaixo descreve o source antigo `eac22d90ae92b3e29f1d6254c4ef9f3e30d8bc6a25f745c60e8d6c5129ae0688`, não esta variante.

## Baseline stock-exact histórica

| Gate | Estado | Evidência |
|---|---|---|
| Módulo OEM | PASS | SHA-256 `4da6fb10051f99abf84552f6f0dd7ef2dc21f331871ec9988ce2e922e0012793`; `reference_modules/full_vendor_boot/soc_fan.ko` |
| Ghidra stock | PASS | 15 funções com pseudocódigo, P-Code e assembly; `reverse_engineering/validation/reconstructed/soc_fan/offline_static/ghidra_stock/soc_fan.ko/` |
| Protocolo central R41 | PASS | 8/8 gates automáticos para 15 funções; `reverse_engineering/validation/reconstructed/soc_fan/attestation/soc_fan_data_tables_20261028_r41/hard_protocol_report.json` |
| Dados ELF R42 | PASS | seção `.data` de 448 bytes idêntica; 8 objetos e 19 relocations com offsets/alvos coincidentes; `reverse_engineering/validation/reconstructed/soc_fan/attestation/soc_fan_metadata_parity_20261028_r42/data_tables_comparison.json` |
| Build Docker R42 | PASS | dois builds limpos, ambos SHA-256 `828b4e6e2307fb28edfb6cbf4de451998fe85bf159eeaa2a2f4fdd5b0e34fd3a`; imagem `nubia-sm8850-kernel-builder:latest`, Clang `clang-r536225` |
| Metadados/ABI do módulo | PASS | aliases, namespace PWM, licença, tipo ELF e imports coincidem; vermagic corresponde ao kernel alvo. O candidato conserva os campos stock `built_with`, descrição e softdep |
| Artefato canônico | PASS | `soc_fan.ko`, SHA-256 `828b4e6e2307fb28edfb6cbf4de451998fe85bf159eeaa2a2f4fdd5b0e34fd3a`, 284296 bytes |
| Seções executáveis contra R41 | PASS | `.text`, `.data` e `.rodata` do candidato R42 são byte a byte iguais ao candidato R41 que passou os gates centrais |
| Mapa stock → fonte | PASS — 15/15 funções aprovadas em revisão offline de segunda passada; instruções, relocations, seção e tamanho coincidem, sem normalizações. Revisão feita por agente Codex; não houve segundo revisor humano. | reverse_engineering/validation/reconstructed/soc_fan/attestation/independent_mapping_review_20261102/mapping_review.json |
| Comparação semântica estrita | O comparador C/P-Code continua inconclusivo para alguns casos; a comparação de assembly AArch64, relocations e limites confirma as 15 funções compiladas em instruções. Isso não prova comportamento em runtime. | reverse_engineering/validation/reconstructed/soc_fan/attestation/independent_mapping_review_20261102/assembly_comparison.json |
| Hardware NX809J | DEFERRED | nenhum teste em dispositivo foi executado; comportamento runtime permanece sem prova |

Auditoria canônica Docker de 2026-11-02: static_verified; dois builds limpos concluídos (return code 0), nenhum erro e um aviso de build-id/debug/BTF. Conteúdo de runtime, layout de seções e modinfo coincidem com o candidato. Relatório: reverse_engineering/validation/reconstructed/soc_fan/attestation/independent_mapping_review_20261102/docker_audit_canonical_20261102.json.

A revisão offline por agente e a auditoria estática passaram. Não houve segundo revisor humano nem execução em hardware NX809J; equivalência comportamental em runtime continua sem prova. Não declarar equivalência funcional completa.
## Variante isolada anterior de hardening de recursos (2026-11-02; evidência histórica)

A análise do stock confirmou que `nb_fan_gpio_proc` adquire GPIO/IRQ sem liberar (`gpio_request` + `request_threaded_irq`, sem `gpio_free`/`free_irq`); `nb_fan_remove` só remove o grupo sysfs. Foi compilada uma variante isolada que troca essas aquisições por `devm_gpio_request` e `devm_request_threaded_irq`. Dois builds Docker reproduzíveis deram SHA-256 `5547e8d2465f481bf9b2fa3d6a1425cb28bf783cb9b4a75e4fdbad66292b91ee`; 14/15 funções mantêm assembly exato, com a diferença declarada apenas em `nb_fan_gpio_proc`. Essa variante isolada foi superada pela variante de ciclo de vida descrita abaixo. Auditoria: `reverse_engineering/validation/reconstructed/soc_fan/attestation/lifecycle_resource_hardening_20261102/README.md`.

Na variante histórica, ownership de regulador, kobject e hrtimer ainda não estavam tratados. A referência OF condicional e a validação runtime/hardware permanecem abertas.

## Variante atual: hardening do ciclo de vida (2026-11-02)

Source SHA-256 `4ea8a7b3b09786454460405f3bcaac8c51342ae9c92ec6d31de2571634a408b1`; cópia Docker sincronizada com o mesmo hash. O teardown agora remove/draina sysfs, cancela hrtimer, tenta desligar o fan, drena enables do regulador e limpa drvdata/kobject/global antes do devres liberar IRQ, GPIO, regulador e memória. O probe usa `devm_regulator_get` e faz rollback dos objetos não gerenciados em falha.

Dois builds limpos com imagem `nubia-sm8850-kernel-builder:latest`, Clang `clang-r536225` e kernel NX809J produziram o mesmo `soc_fan.ko`: SHA-256 `5554b8d8c1fb1183a5ea8807f97563690254a1ed1c3811affb1c470c2de7f54b`, 289760 bytes. Artefato sincronizado em `engenharia/curated/soc_fan/soc_fan.ko`; mapa atualizado com o hash.

O auditor marcou a variante como incompleta contra a baseline stock porque os símbolos e seções executáveis diferem intencionalmente e os cinco desvios ainda não têm revisão independente; por isso a promoção automática estrita foi recusada. O build reproduzível passou e a cópia foi registrada explicitamente como variante hardened. Relatório: `reverse_engineering/validation/reconstructed/soc_fan/attestation/soc_fan_lifecycle_hardening_20261102/driver_audit.json`; sincronização: `reverse_engineering/validation/reconstructed/soc_fan/attestation/soc_fan_lifecycle_hardening_20261102/candidate_sync.json`; revisão do lote: `reverse_engineering/validation/reconstructed/soc_fan/attestation/soc_fan_lifecycle_hardening_20261102/lifecycle_hardening_review.json`.

Limites: falha de `regulator_disable` é registrada e o teardown segue sem garantia de desligamento físico; `CONFIG_OF_DYNAMIC` não foi confirmado; equivalência runtime não foi provada; hardware NX809J não foi testado.
