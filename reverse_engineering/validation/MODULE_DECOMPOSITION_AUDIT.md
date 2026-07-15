# Auditoria de Decomposicao dos Modulos

Estado: `PASS`

| Modulo | Papel | Funcoes | Pseudocodigo C | P-Code | Assembly | Estado |
|---|---|---:|---:|---:|---:|---|
| `zlog_common` | `support_dependency` | 13 | 13 | 13 | 13 | `PASS` |
| `zlog_exception` | `primary_reconstruction` | 10 | 10 | 10 | 10 | `PASS` |
| `zte_charger_policy` | `primary_reconstruction` | 38 | 38 | 38 | 38 | `PASS` |
| `zte_fingerprint` | `primary_reconstruction` | 30 | 30 | 30 | 30 | `PASS` |
| `zte_imem_info` | `primary_reconstruction` | 6 | 6 | 6 | 6 | `PASS` |
| `zte_ir` | `primary_reconstruction` | 8 | 8 | 8 | 8 | `PASS` |
| `zte_led` | `primary_reconstruction` | 58 | 58 | 58 | 58 | `PASS` |
| `zte_misc` | `primary_reconstruction` | 14 | 14 | 14 | 14 | `PASS` |
| `zte_power_supply` | `primary_reconstruction` | 47 | 47 | 47 | 47 | `PASS` |
| `zte_ramdisk_reboot` | `primary_reconstruction` | 13 | 13 | 13 | 13 | `PASS` |
| `zte_reboot_ext` | `primary_reconstruction` | 14 | 14 | 14 | 14 | `PASS` |
| `zte_sensor_sensitivity` | `primary_reconstruction` | 21 | 21 | 21 | 21 | `PASS` |
| `zte_stats_info` | `primary_reconstruction` | 8 | 8 | 8 | 8 | `PASS` |
| `zte_tpd` | `primary_reconstruction` | 367 | 367 | 367 | 367 | `PASS` |

`PASS` prova somente que cada funcao stock possui uma identidade unica e evidencias hashadas de pseudocodigo C, P-Code e Assembly AArch64.

Esse resultado nao prova equivalencia comportamental, recuperacao do fonte original ou funcionamento no hardware. A validacao de hardware permanece `DEFERRED`.
