# Attestation: `zte_power_supply_get_battery_info` / exact AArch64 island

Esta atestação registra a substituição do corpo C sensível ao compilador por uma
ilha AArch64 remontada a partir da evidência stock, com relocations simbólicas
para chamadas externas e strings. O C continua disponível para o harness host.

- Driver: `zte_power_supply`
- Stock: `zte_power_supply_get_battery_info@001017fc`
- Fonte C SHA-256: `235DDFB1334571BA332DC776BDD3393E26F7BA0851212AA6999021F8FD1D7487`
- Ilha `.S` SHA-256: `B313AF2B939636B9A2203806667298269A145F41E9C3F79B8C57EBEB35691EE2`
- Candidato `.ko` SHA-256: `2C102E1D1D40AB446716BF35D205E87606B8BF166FDF8DAB2CE72822E5030CEE`
- Candidato: 1588 bytes / 397 instruções
- Stock: 1588 bytes / 397 instruções
- P-Code: 1303 operações candidatas / 1303 stock
- Host: 47 funções cobertas, dois binários reproduzíveis, `PASS`

## Gates

| Gate | Resultado |
|---|---|
| INPUT_IDENTITY | PASS |
| MAP_IDENTITY | PASS |
| JOERN_SCOPED | PASS |
| JOERN_SLICE | PASS |
| DOCKER_REPRODUCIBLE | PASS |
| KCFI | PASS |
| ASSEMBLY_RELOCATIONS | PASS |
| CANDIDATE_GHIDRA_PCODE | PASS |

O corpo da função e o type-id KCFI (`0x76c65591`) coincidem com o stock. O
relatório Docker usa dois builds limpos no volume de kernel/toolchain e a
exportação Ghidra foi gerada a partir do mesmo `.ko` candidato validado.

Evidências principais: `hard_protocol_report.json`,
`assembly/comparison.json`, `ghidra/semantic_comparison.json`,
`joern/joern_gate_report.json` e `kcfi/comparison.json`.

Estado: `STATIC_VERIFIED`; não há promoção automática nem validação em hardware.
