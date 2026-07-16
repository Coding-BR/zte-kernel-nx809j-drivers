# Status: `zte_stats_info`

Estado: **INCOMPLETO - nao autorizado a declarar 100%**.

| Gate | Estado | Evidencia/Bloqueador |
|---|---|---|
| 0-7 | PASS | Build duplo, ABI, imports, KCFI, harness, Ghidra e comparacao AArch64 publicados. |
| 8 - Revisao independente | INCOMPLETO | Outra sessao/LLM ainda deve refazer a auditoria. |
| 9 - Hardware | INCOMPLETO | Familia Netlink e modulo stock exigem sessao controlada com rollback. |
| 10 - Promocao | INCOMPLETO | Depende dos Gates 8 e 9. |

Comprovado para o candidato SHA-256
`22f93083062922e5a2932e387d91db714e123896818e13a2ef853948308349e7`:

- 8/8 funcoes passam no comparador AArch64 de instrucoes normalizadas,
  relocacoes, secao e tamanho do simbolo;
- `zte_taskstats_user_cmd` fecha em 473 instrucoes e 1892 bytes nos dois lados;
- inventario Ghidra 8/8, multiplicidade do grafo de chamadas e tamanhos dos
  corpos coincidem;
- KCFI passa em 3/3 fronteiras indiretas/entry points, incluindo tamanho;
- harness cobre 8/8 funcoes e gera duas copias identicas do teste
  (`7d58b5c9...f246e4`, 26472 bytes);
- dois builds limpos do modulo geram o mesmo SHA-256 do candidato;
- ABI taskstats v10 de 352 bytes, 26 offsets do kernel alvo e 43 imports
  indefinidos foram validados.

O `.ko` curado visa o kernel registrado em
`engenharia/config/target_kernel.json`. O ELF completo nao e declarado
byte-identico ao stock: metadados de build, BTF/debug e vermagic pertencem ao
ambiente reconstruido.

**Regra de promocao:** este modulo permanece `INCOMPLETO`; alinhamento estatico
nao substitui revisao independente nem validacao controlada da familia
`ZTE_TASKSTATS` no aparelho. Consulte
`reverse_engineering/validation/reconstructed/zte_stats_info/STAGE3_OFFLINE_VALIDATION.md`.
