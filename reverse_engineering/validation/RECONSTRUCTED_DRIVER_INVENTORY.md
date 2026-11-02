# Inventário de reconstrução dos drivers

Raiz: `repo`
Snapshot Docker: `docker`

Este inventário cobre diretórios em `kernel_development/drivers/reconstructed`. A existência de fonte, mapa ou `.ko` não prova equivalência estática/semântica. A validação completa de cada candidato continua sendo feita pelos gates do protocolo.

Drivers encontrados: **24**; com candidato `.ko`: **24**; com stock: **24**; com inventário Ghidra: **24** (1039 funções); presentes no snapshot curado do Docker: **4**.

| Driver | Ghidra | Mapeadas | Cobertura de identidade | Status por função | `.ko` candidato | Docker curated | Achados |
|---|---:|---:|---|---|---|---|---|
| `aw86320` | 37 | 37 | 37/37 | PROMOTED_OFFLINE_EXACT:37 | sim | não | nenhum estrutural |
| `aw9620x` | 79 | 79 | 79/79 | PROMOTED_OFFLINE_EXACT:79 | sim | sim | nenhum estrutural |
| `fp_goodix` | 30 | 30 | 30/30 | PROMOTED_OFFLINE_EXACT:30 | sim | sim | map_candidate_hash_mismatch |
| `ftmmod` | 9 | 9 | 9/9 | CORE_GATES_PASS_UNREVIEWED:9 | sim | não | nenhum estrutural |
| `gpio_keys_nubia` | 24 | 24 | 24/24 | PROMOTED_OFFLINE_EXACT:24 | sim | não | nenhum estrutural |
| `haptic_86938` | 160 | 160 | 160/160 | candidate_hardening_deviation:2, candidate_under_static_validation:158 | sim | não | nenhum estrutural |
| `nubia_hw_version` | 19 | 19 | 19/19 | PROMOTED_OFFLINE_EXACT:19 | sim | não | map_candidate_hash_mismatch |
| `rdbg` | 8 | 8 | 8/8 | candidate_under_static_validation:1, implemented_pending_independent_review:7 | sim | sim | nenhum estrutural |
| `soc_fan` | 15 | 15 | 15/15 | CORE_GATES_PASS_UNREVIEWED:15 | sim | não | nenhum estrutural |
| `zlog_common` | 13 | 13 | 13/13 | PROMOTED_OFFLINE_EXACT:13 | sim | não | map_candidate_hash_mismatch |
| `zlog_exception` | 10 | 10 | 10/10 | PROMOTED_OFFLINE_EXACT:10 | sim | não | nenhum estrutural |
| `zlog_test` | 11 | 11 | 11/11 | PROMOTED_OFFLINE_EXACT:11 | sim | não | nenhum estrutural |
| `zte_charger_policy` | 38 | 38 | 38/38 | promoted_offline_exact:38 | sim | não | nenhum estrutural |
| `zte_fingerprint` | 30 | 30 | 30/30 | PROMOTED_OFFLINE_EXACT:30 | sim | não | nenhum estrutural |
| `zte_imem_info` | 6 | 6 | 6/6 | PROMOTED_OFFLINE_EXACT:6 | sim | não | nenhum estrutural |
| `zte_ir` | 8 | 8 | 8/8 | PROMOTED_OFFLINE_EXACT:8 | sim | não | map_candidate_hash_mismatch |
| `zte_led` | 58 | 58 | 58/58 | PROMOTED_OFFLINE_EXACT:58 | sim | não | nenhum estrutural |
| `zte_misc` | 14 | 14 | 14/14 | PROMOTED_OFFLINE_EXACT:14 | sim | não | nenhum estrutural |
| `zte_power_supply` | 47 | 47 | 47/47 | PROMOTED_OFFLINE_EXACT:47 | sim | não | nenhum estrutural |
| `zte_ramdisk_reboot` | 13 | 13 | 13/13 | promoted_offline_exact:13 | sim | não | nenhum estrutural |
| `zte_reboot_ext` | 14 | 14 | 14/14 | promoted_offline_exact:14 | sim | não | map_candidate_hash_mismatch |
| `zte_sensor_sensitivity` | 21 | 21 | 21/21 | promoted_offline_exact:21 | sim | não | nenhum estrutural |
| `zte_stats_info` | 8 | 8 | 8/8 | PROMOTED_OFFLINE_EXACT:8 | sim | não | nenhum estrutural |
| `zte_tpd` | 367 | 367 | 367/367 | PROMOTED_OFFLINE_EXACT:337, promoted_offline_exact:30 | sim | sim | nenhum estrutural |

## Escopo e leitura

- O inventário listou 24 árvores do repositório; `audit_offline_reconstruction.py --all` cobre a seleção curada `zte_*`/`zlog_*` do Docker e não substitui esta enumeração.
- Estados em `status_counts` são transcritos do mapa por função; não são interpretados como aprovação do driver inteiro.
- `docker_snapshot.curated_directory_present` indica disponibilidade do snapshot para a rotina de build, não resultado de build.
- Revisão independente, teste em hardware e autorização de promoção são gates separados.
