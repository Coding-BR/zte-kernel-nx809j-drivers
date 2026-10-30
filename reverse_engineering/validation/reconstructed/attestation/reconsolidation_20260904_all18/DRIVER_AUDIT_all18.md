# Auditoria Independente de Reconstrução de Drivers

Esta auditoria é offline. Ela não executa ADB, fastboot, insmod, rmmod ou escrita de partições.

- Gerado em: `2026-09-04T19:16:39.017794+00:00`
- Run de evidência: `public repository evidence: C:\Users\adria\Desktop\drivers\zte-kernel-nx809j-drivers`
- Rebuild limpo: `sim`
- Manifesto do kernel alvo: `C:\Users\adria\Desktop\drivers\zte-kernel-nx809j-drivers\kernel_development\config\target_kernel.json`

| Driver | Resultado estático | Hardware | Evidência que falta |
|---|---|---|---|
| `zlog_common` | `static_verified` | `não executado` | nenhuma |
| `zlog_exception` | `static_verified` | `não executado` | nenhuma |
| `zlog_test` | `static_verified` | `não executado` | nenhuma |
| `zte_charger_policy` | `static_verified` | `não executado` | nenhuma |
| `zte_fingerprint` | `static_verified` | `não executado` | nenhuma |
| `zte_imem_info` | `static_verified` | `não executado` | nenhuma |
| `zte_ir` | `static_verified` | `não executado` | nenhuma |
| `zte_led` | `static_verified` | `não executado` | nenhuma |
| `zte_misc` | `static_verified` | `não executado` | nenhuma |
| `zte_power_supply` | `static_verified` | `não executado` | nenhuma |
| `zte_ramdisk_reboot` | `static_verified` | `não executado` | nenhuma |
| `zte_reboot_ext` | `static_verified` | `não executado` | nenhuma |
| `zte_sensor_sensitivity` | `static_verified` | `não executado` | nenhuma |
| `zte_stats_info` | `static_verified` | `não executado` | nenhuma |
| `zte_tpd` | `static_verified` | `não executado` | nenhuma |
| `fp_goodix` | `static_verified` | `não executado` | nenhuma |
| `gpio_keys_nubia` | `static_verified` | `não executado` | nenhuma |
| `nubia_hw_version` | `static_verified` | `não executado` | nenhuma |

`static_verified` exige cadeia de evidência, build reproduzível, paridade ELF/modinfo/KMI e mapa completo de funções Ghidra para o fonte. `hardware_verified` exige um teste controlado específico do driver, com rollback e logs. Nenhum dos dois, isoladamente, autoriza afirmar equivalência funcional absoluta.
