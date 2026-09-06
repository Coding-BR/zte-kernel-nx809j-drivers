# Checkpoint: `zte_power_supply_get_battery_info` / cleanup split

Este checkpoint registra a separação dos caminhos de cleanup da reconstrução
de `zte_power_supply_get_battery_info`, validada no snapshot Docker e reexportada
com Ghidra a partir do mesmo `.ko` candidato.

- Driver: `zte_power_supply`
- Stock: `zte_power_supply_get_battery_info@001017fc`
- Fonte SHA-256: `D248845AA071C8146F1FF84F23DF3675BE77FC995445C7E2CBED13CF5D97F5FC`
- Candidato SHA-256: `4D833E9CBD50A431C26A7B602BC80F01E2B5FD1F6FEA0308017C114A730B0BC7`
- Candidato: 1588 bytes / 397 instruções
- Stock: 1588 bytes / 397 instruções
- P-Code: 1319 operações candidatas / 1303 stock

## Gates

| Gate | Resultado |
|---|---|
| INPUT_IDENTITY | PASS |
| MAP_IDENTITY | PASS |
| JOERN_SCOPED | PASS |
| JOERN_SLICE | PASS |
| DOCKER_REPRODUCIBLE | PASS |
| KCFI | PASS |
| ASSEMBLY_RELOCATIONS | FAIL (opcodes/ordenação) |
| CANDIDATE_GHIDRA_PCODE | FAIL (P-Code e C normalizado) |

O ajuste separou a limpeza do caminho de tamanho inválido do caminho de falha
de alocação, removendo a divergência anterior de tamanho e contagem. A
igualdade de bytes ainda não foi demonstrada. O export Ghidra contém o índice
completo e os artefatos da função alvo; o `functions.jsonl` usa nomes de arquivo
estáveis para evitar entradas de cópia inconsistentes no Windows.

Evidências principais: `hard_protocol_report.json`,
`assembly/comparison.json`, `ghidra/semantic_comparison.json`,
`joern/joern_gate_report.json` e `kcfi/comparison.json`.

Estado: `NOT_AUTHORIZED`; não há promoção nem validação em hardware.
