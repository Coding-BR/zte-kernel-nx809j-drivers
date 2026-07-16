# Paridade AArch64: `fp_goodix`

Este relatorio usa o modulo OEM como fonte da verdade. A comparacao canonica esta em `reverse_engineering/validation/reconstructed/fp_goodix/assembly_comparison.json`.

## Resultado

- Funcoes verificadas: 30
- Identidade de opcode, relocacao, secao e tamanho: 26
- Call graph equivalente: 30/30
- KCFI equivalente: 23/23 funcoes instrumentadas
- Funcoes sem identidade binaria completa: 4

| Funcao | Bytes OEM/candidato | Instrucoes OEM/candidato | Relocations OEM/candidato | Diferenca restante |
|---|---:|---:|---:|---|
| `gf_ioctl` | 1436/1424 | 359/356 | 122/122 | topologia de blocos, ordem de relocations e 12 bytes |
| `gf_open` | 508/508 | 127/127 | 59/59 | somente sequencia de opcodes |
| `gf_parse_dts` | 828/828 | 207/207 | 118/118 | layout de blocos e ordem de relocations |
| `gf_probe` | 1040/1040 | 260/260 | 120/120 | somente sequencia de opcodes |

Para as quatro funcoes, o conjunto de chamadas, as contagens estruturais indicadas e os type IDs KCFI aplicaveis foram validados. Isso e evidencia forte de proximidade estrutural, mas nao substitui identidade binaria, revisao independente ou teste no hardware.

## Evidencias canonicas

- `assembly_comparison.json`: comparacao funcao a funcao.
- `candidate_assembly/`: assembly do candidato atual.
- `offline_static/stock_assembly/`: assembly OEM hashado.
- `kcfi_comparison.json`: comparacao dos 23 type IDs instrumentados.
- `driver_audit.json`: duas builds limpas, KMI, ELF, aliases e vermagic.
- `microtask_audit.json`: verificacao dos hashes das 30 microtarefas.

Os diretorios `candidate_assembly_pass*` foram usados apenas durante a convergencia e nao fazem parte da evidencia canonica.
