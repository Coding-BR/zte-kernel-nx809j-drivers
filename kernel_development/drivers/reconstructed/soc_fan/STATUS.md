# Status: `soc_fan`

Estado: **STATIC_VERIFIED_OFFLINE — 15/15 funções passaram os gates estáticos; revisão humana e hardware seguem pendentes**.

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
## Hardening não-canônico de recursos (2026-11-02)

A análise do stock confirmou que `nb_fan_gpio_proc` adquire GPIO/IRQ sem liberar (`gpio_request` + `request_threaded_irq`, sem `gpio_free`/`free_irq`); `nb_fan_remove` só remove o grupo sysfs. Foi compilada uma variante isolada que troca essas aquisições por `devm_gpio_request` e `devm_request_threaded_irq`. Dois builds Docker reproduzíveis deram SHA-256 `5547e8d2465f481bf9b2fa3d6a1425cb28bf783cb9b4a75e4fdbad66292b91ee`; 14/15 funções mantêm assembly exato, com a diferença declarada apenas em `nb_fan_gpio_proc`. A variante não substitui a reconstrução canônica stock. Auditoria: `reverse_engineering/validation/reconstructed/soc_fan/attestation/lifecycle_resource_hardening_20261102/README.md`.

Continuam abertos, fora do escopo desta variante, os itens de ownership de regulador, kobject, hrtimer e referências OF condicionais descritos em MP4. Não houve validação runtime nem em hardware NX809J.
