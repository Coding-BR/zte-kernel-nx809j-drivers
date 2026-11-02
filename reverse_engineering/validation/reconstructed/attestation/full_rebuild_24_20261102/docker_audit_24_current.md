# Auditoria Independente de Reconstrução de Drivers

Esta auditoria é offline. Ela não executa ADB, fastboot, insmod, rmmod ou escrita de partições.

- Gerado em: `2026-11-02T13:17:09.806816+00:00`
- Run de evidência: `public repository evidence: C:\Users\adria\Desktop\drivers\zte-kernel-nx809j-drivers`
- Rebuild limpo: `sim`
- Manifesto do kernel alvo: `C:\Users\adria\Desktop\drivers\zte-kernel-nx809j-drivers\kernel_development\config\target_kernel.json`

| Driver | Resultado estático | Hardware | Evidência que falta |
|---|---|---|---|
| `aw86320` | `static_verified` | `não executado` | candidate and fresh module SHA-256 differ in allocated build-id metadata and/or non-allocated debug/BTF sections; runtime content, section layout, and modinfo match |
| `aw9620x` | `static_verified` | `não executado` | candidate and fresh module SHA-256 differ in allocated build-id metadata and/or non-allocated debug/BTF sections; runtime content, section layout, and modinfo match |
| `fp_goodix` | `static_verified` | `não executado` | candidate and fresh module SHA-256 differ in allocated build-id metadata and/or non-allocated debug/BTF sections; runtime content, section layout, and modinfo match<br>stock module dependency metadata differs from the current target build; candidate dependency metadata is checked against the target rebuild |
| `ftmmod` | `static_verified` | `não executado` | candidate and fresh module SHA-256 differ in allocated build-id metadata and/or non-allocated debug/BTF sections; runtime content, section layout, and modinfo match |
| `gpio_keys_nubia` | `static_verified` | `não executado` | candidate and fresh module SHA-256 differ in allocated build-id metadata and/or non-allocated debug/BTF sections; runtime content, section layout, and modinfo match |
| `haptic_86938` | `static_verified` | `não executado` | nenhuma |
| `nubia_hw_version` | `static_verified` | `não executado` | candidate and fresh module SHA-256 differ in allocated build-id metadata and/or non-allocated debug/BTF sections; runtime content, section layout, and modinfo match |
| `rdbg` | `static_verified` | `não executado` | nenhuma |
| `soc_fan` | `static_verified` | `não executado` | candidate and fresh module SHA-256 differ in allocated build-id metadata and/or non-allocated debug/BTF sections; runtime content, section layout, and modinfo match |
| `zlog_common` | `static_verified` | `não executado` | candidate and fresh module SHA-256 differ in allocated build-id metadata and/or non-allocated debug/BTF sections; runtime content, section layout, and modinfo match |
| `zlog_exception` | `static_verified` | `não executado` | nenhuma |
| `zlog_test` | `static_verified` | `não executado` | candidate and fresh module SHA-256 differ in allocated build-id metadata and/or non-allocated debug/BTF sections; runtime content, section layout, and modinfo match |
| `zte_charger_policy` | `static_verified` | `não executado` | nenhuma |
| `zte_fingerprint` | `static_verified` | `não executado` | candidate and fresh module SHA-256 differ in allocated build-id metadata and/or non-allocated debug/BTF sections; runtime content, section layout, and modinfo match<br>stock module dependency metadata differs from the current target build; candidate dependency metadata is checked against the target rebuild |
| `zte_imem_info` | `static_verified` | `não executado` | candidate and fresh module SHA-256 differ in allocated build-id metadata and/or non-allocated debug/BTF sections; runtime content, section layout, and modinfo match |
| `zte_ir` | `static_verified` | `não executado` | candidate and fresh module SHA-256 differ in allocated build-id metadata and/or non-allocated debug/BTF sections; runtime content, section layout, and modinfo match |
| `zte_led` | `static_verified` | `não executado` | candidate and fresh module SHA-256 differ in allocated build-id metadata and/or non-allocated debug/BTF sections; runtime content, section layout, and modinfo match |
| `zte_misc` | `static_verified` | `não executado` | candidate and fresh module SHA-256 differ in allocated build-id metadata and/or non-allocated debug/BTF sections; runtime content, section layout, and modinfo match |
| `zte_power_supply` | `static_verified` | `não executado` | nenhuma |
| `zte_ramdisk_reboot` | `static_verified` | `não executado` | candidate and fresh module SHA-256 differ in allocated build-id metadata and/or non-allocated debug/BTF sections; runtime content, section layout, and modinfo match |
| `zte_reboot_ext` | `static_verified` | `não executado` | candidate and fresh module SHA-256 differ in allocated build-id metadata and/or non-allocated debug/BTF sections; runtime content, section layout, and modinfo match |
| `zte_sensor_sensitivity` | `static_verified` | `não executado` | nenhuma |
| `zte_stats_info` | `static_verified` | `não executado` | nenhuma |
| `zte_tpd` | `static_verified` | `não executado` | stock module dependency metadata differs from the current target build; candidate dependency metadata is checked against the target rebuild |

`static_verified` exige cadeia de evidência, build reproduzível, paridade ELF/modinfo/KMI e mapa completo de funções Ghidra para o fonte. `hardware_verified` exige um teste controlado específico do driver, com rollback e logs. Nenhum dos dois, isoladamente, autoriza afirmar equivalência funcional absoluta.
