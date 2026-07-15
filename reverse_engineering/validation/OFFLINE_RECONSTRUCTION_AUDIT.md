# Auditoria Offline de Reconstrucao do NX809J

Dispositivo: **REDMAGIC 11 Pro+ (NX809J)**

Esta auditoria nao usa o smartphone. O resultado maximo permitido e `STATIC_ALIGNED_CANDIDATE`; hardware permanece `DEFERRED`.

Gerado em: `2026-07-15T19:09:22.881495+00:00`

| Driver | Veredito offline | Gates PASS | Bloqueadores |
|---|---|---:|---|
| `zlog_common` | `INCOMPLETE` | 9/10 | missing independent_review.json<br>review targets another candidate SHA-256 |
| `zlog_exception` | `INCOMPLETE` | 9/10 | missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_charger_policy` | `INCOMPLETE` | 8/10 | candidate_sha256 is missing or targets another artifact<br>stock_sha256 is missing or targets another artifact<br>missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_fingerprint` | `INCOMPLETE` | 8/10 | candidate_sha256 is missing or targets another artifact<br>stock_sha256 is missing or targets another artifact<br>missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_imem_info` | `INCOMPLETE` | 7/10 | candidate_sha256 is missing or targets another artifact<br>stock_sha256 is missing or targets another artifact<br>parity report targets another candidate SHA-256<br>missing independent_review.json |
| `zte_ir` | `INCOMPLETE` | 6/10 | candidate_sha256 is missing or targets another artifact<br>stock_sha256 is missing or targets another artifact<br>no KCFI extraction is tied to the current stock SHA-256<br>no passing per-function KCFI comparison for the current candidate |
| `zte_led` | `INCOMPLETE` | 9/10 | missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_misc` | `INCOMPLETE` | 8/10 | candidate_sha256 is missing or targets another artifact<br>stock_sha256 is missing or targets another artifact<br>missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_power_supply` | `INCOMPLETE` | 8/10 | candidate_sha256 is missing or targets another artifact<br>stock_sha256 is missing or targets another artifact<br>missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_ramdisk_reboot` | `INCOMPLETE` | 7/10 | candidate_sha256 is missing or targets another artifact<br>stock_sha256 is missing or targets another artifact<br>parity report targets another candidate SHA-256<br>missing independent_review.json |
| `zte_reboot_ext` | `INCOMPLETE` | 7/10 | mapping has no evidence: attr_show<br>mapping has no evidence: attr_store<br>mapping has no evidence: boot_nvmem_show<br>mapping has no evidence: boot_nvmem_store |
| `zte_sensor_sensitivity` | `INCOMPLETE` | 7/10 | mapping has no evidence: accel_enable_show<br>mapping has no evidence: accel_enable_store<br>mapping has no evidence: accel_x_axial_show<br>mapping has no evidence: accel_x_axial_store |
| `zte_stats_info` | `INCOMPLETE` | 7/10 | candidate_sha256 is missing or targets another artifact<br>stock_sha256 is missing or targets another artifact<br>parity report targets another candidate SHA-256<br>missing independent_review.json |
| `zte_tpd` | `INCOMPLETE` | 5/10 | 367 Ghidra functions are not mapped<br>reconstruction_map.json is missing<br>missing abi_validation.json<br>report status is not PASS |

## Regra de leitura

`INCOMPLETE` identifica evidencia ausente ou desatualizada; nao prova que o fonte esteja errado. `STATIC_ALIGNED_CANDIDATE` prova que todos os gates offline definidos foram satisfeitos para os hashes registrados, mas nao prova comportamento eletrico.
