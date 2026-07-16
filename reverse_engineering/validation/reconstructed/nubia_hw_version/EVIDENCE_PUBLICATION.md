# Publicacao de Evidencias Offline

Os pacotes contem somente analise derivada. Os modulos `.ko` stock nao foram publicados.

| Driver | Estado | Ghidra | Assembly | Arquivos derivados |
|---|---|---:|---:|---:|
| `nubia_hw_version` | `EVIDENCE_READY` | 19 | 19 | 66 |

`EVIDENCE_READY` descreve somente a cadeia hash-bound do binario stock para
Ghidra, P-Code e Assembly AArch64. Nao prova equivalencia da fonte candidata
nem funcionamento no hardware. O candidato permanece `STAGE1_STATIC_PARTIAL`;
consulte `kernel_development/drivers/reconstructed/nubia_hw_version/STATUS.md`.
