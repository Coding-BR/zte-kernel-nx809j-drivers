# Auditoria Offline de Reconstrucao do NX809J

Dispositivo: **REDMAGIC 11 Pro+ (NX809J)**

Esta auditoria nao usa o smartphone. O resultado maximo permitido e `STATIC_ALIGNED_CANDIDATE`; hardware permanece `DEFERRED`.

Gerado em: `2026-07-15T19:51:02.898491+00:00`

| Driver | Veredito offline | Gates PASS | Bloqueadores |
|---|---|---:|---|
| `zlog_common` | `INCOMPLETE` | 9/10 | missing independent_review.json<br>review targets another candidate SHA-256 |
| `zlog_exception` | `INCOMPLETE` | 9/10 | missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_charger_policy` | `INCOMPLETE` | 9/10 | missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_fingerprint` | `INCOMPLETE` | 9/10 | missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_imem_info` | `INCOMPLETE` | 9/10 | missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_ir` | `INCOMPLETE` | 9/10 | missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_led` | `INCOMPLETE` | 9/10 | missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_misc` | `INCOMPLETE` | 9/10 | missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_power_supply` | `INCOMPLETE` | 9/10 | missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_ramdisk_reboot` | `INCOMPLETE` | 9/10 | missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_reboot_ext` | `INCOMPLETE` | 9/10 | missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_sensor_sensitivity` | `INCOMPLETE` | 9/10 | missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_stats_info` | `INCOMPLETE` | 9/10 | missing independent_review.json<br>review targets another candidate SHA-256 |
| `zte_tpd` | `INCOMPLETE` | 5/10 | 367 Ghidra functions are not mapped<br>reconstruction_map.json is missing<br>missing abi_validation.json<br>report status is not PASS |

## Regra de leitura

`INCOMPLETE` identifica evidencia ausente ou desatualizada; nao prova que o fonte esteja errado. `STATIC_ALIGNED_CANDIDATE` prova que todos os gates offline definidos foram satisfeitos para os hashes registrados, mas nao prova comportamento eletrico.
