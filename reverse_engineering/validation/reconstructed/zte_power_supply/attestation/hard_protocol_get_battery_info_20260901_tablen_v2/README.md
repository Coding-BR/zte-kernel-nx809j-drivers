# Checkpoint: `zte_power_supply_get_battery_info` / `tab_len`

Este pacote registra uma tentativa controlada de reconstrução do alvo
`zte_power_supply_get_battery_info`, usando o snapshot reconstruído do
repositório, Docker e exportação Ghidra do mesmo módulo candidato.

## Identidade

- Driver: `zte_power_supply`
- Função stock: `zte_power_supply_get_battery_info@001017fc`
- Função candidata: `zte_power_supply_get_battery_info`
- Stock SHA-256: `2ae6f7615c9a4fea48a84fb2595d2f52dd049c11749b7cd2a3d9037dfcd813e8`
- Fonte SHA-256: `D248845AA071C8146F1FF84F23DF3675BE77FC995445C7E2CBED13CF5D97F5FC`
- Candidato Docker SHA-256: `C16A383685F797CE89123BB396C2EB23E30617A0FD5B81AD1AD584275C4CB42E`
- Candidato Ghidra MD5: `fbcbeff4ec47b5b42ae7d9b3206f048b`

## Protocolo

Docker `nubia-sm8850-kernel-builder:latest`, toolchain `clang-r536225`, dois
ciclos reproduzíveis, Joern pinado e Ghidra 12.1.2 com Java 21.

| Gate | Resultado |
|---|---|
| INPUT_IDENTITY | PASS |
| MAP_IDENTITY | PASS |
| JOERN_SCOPED | PASS |
| JOERN_SLICE | PASS |
| DOCKER_REPRODUCIBLE | PASS |
| KCFI | PASS |
| ASSEMBLY_RELOCATIONS | FAIL |
| CANDIDATE_GHIDRA_PCODE | FAIL |

O ajuste testado introduziu `tab_len` local e separou os incrementos de
`list++` no preenchimento das tabelas OCV, alinhando a forma observada no
upstream/stock. A distância de tamanho melhorou de 1576/394 para 1588/398
(stock: 1588/397 bytes/instruções). Relocations e sequência de chamadas
semânticas ficaram alinhadas, mas a igualdade de instruções, bytes e P-Code
continua não demonstrada.

## Evidência

- Relatório principal: `hard_protocol_report.json`
- Assembly: `assembly/comparison.json`
- Ghidra/P-Code: `ghidra/semantic_comparison.json`
- KCFI: `kcfi/comparison.json`
- Joern: `joern/joern_gate_report.json`
- Auditoria Docker: `docker/driver_audit.json`

## Estado

`NOT_AUTHORIZED`: este checkpoint é diagnóstico e não promove a função. O
próximo passo é testar a forma de cleanup/controle de índice contra o CFG stock
e, se a igualdade de assembly continuar impossível por C, avaliar uma ilha
`.S` limitada somente a esta função, preservando o contrato C e os símbolos do
módulo.
