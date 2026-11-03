# Status: `zte_stats_info`

Estado geral: **INCOMPLETO — nao declarar 100%**.

| Gate | Estado | Evidencia/Bloqueador |
|---|---|---|
| 0-7 | PASS historico; revalidacao atual parcial | Os gates completos foram executados no candidato anterior `51894b...`. O snapshot atual `62e8...` passou novamente na comparacao de assembly AArch64 de 8/8 funcoes; build duplo e harness nao foram repetidos para esse hash. |
| 8 - Revisao independente | INCOMPLETO | Revisao de ciclo de vida/sincronizacao desta sessao publicada em `reverse_engineering/validation/reconstructed/zte_stats_info/attestation/lifetime_sync_independent_review_20261103/`. O criterio original pede revisao em outra sessao/LLM; ela continua pendente. |
| 9 - Hardware | INCOMPLETO | Familia Netlink e modulo stock exigem sessao controlada com rollback; nao executada. |
| 10 - Promocao | INCOMPLETO | Depende dos Gates 8 e 9. |

## Snapshot canonico atual — 2026-11-03

- Fonte `zte_stats_info.c`: SHA-256 `9e093b3da29492bf52b2811341879939ca88d68d8604cd650d6393b40703f6e4`.
- Modulo `zte_stats_info.ko`: SHA-256 `62e8d2607d53dd8079bff1340aac4381450599ddc7ed46ab9e2a12794f4f22c1` (328352 bytes).
- `reconstruction_map.json`: SHA-256 `bf85fe9e77c74f8a3452771282d1f61c1c707ff9b67fdadf62e6b7843a1c7913`.
- Fonte, modulo e mapa coincidem com o snapshot Docker curado.
- Comparacao atual: 8/8 funcoes passam em instrucoes normalizadas, relocations, secao e tamanho de simbolo. Dumps e resultado: `reverse_engineering/validation/reconstructed/zte_stats_info/attestation/lifetime_sync_independent_review_20261103/assembly/`.

## Evidencia historica dos gates completos

O rebuild duplo, ABI, imports, KCFI, harness, Ghidra e gates Joern foram atestados para o candidato SHA-256 `51894b326a94465c3189fff6f3c1c72b409f4e9eb23e950ab8654478f1c7cd54` (329608 bytes):

- `zte_taskstats_user_cmd`: 473 instrucoes/1892 bytes.
- Inventario Ghidra 8/8; KCFI 3/3; harness cobre 8/8 funcoes.
- ABI taskstats v10 de 352 bytes, offsets do kernel alvo e imports indefinidos validados.
- O ELF completo nao e declarado byte-identico ao stock; metadados de build, BTF/debug e vermagic pertencem ao ambiente reconstruido.

O hash acima e historico e nao identifica o snapshot atual listado nesta pagina. A revisao atual confirmou a paridade de funcao no modulo `62e8...`, mas nao transfere para ele os resultados de build/harness do binario anterior.

## Riscos stock registrados

A revisao atual nao encontrou desequilibrio estatico nas referencias `task_struct`/`mm_struct`, nem acesso sem lock nas listas por CPU. Registrou dois comportamentos herdados do stock: listeners podem ficar alocados quando o socket fecha sem deregistro explicito; e rollback de uma falha de alocacao numa CPU posterior pode remover uma entrada anterior com o mesmo portid. O modulo tambem nao tem `module_exit`/`genl_unregister_family`; no kernel alvo o unload normal e recusado e o force unload esta desativado. Consulte o relatorio de revisao para escopo e limites.

**Regra de promocao:** o modulo permanece `INCOMPLETO`. Paridade offline, auditoria estaticamente reexecutada e validacao controlada da familia `ZTE_TASKSTATS` no aparelho sao gates distintos.
