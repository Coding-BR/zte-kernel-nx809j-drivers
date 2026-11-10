# Auditoria Independente de Reconstrução de Drivers

Esta auditoria é offline. Ela não executa ADB, fastboot, insmod, rmmod ou escrita de partições.

- Gerado em: `2026-11-10T19:03:48.632872+00:00`
- Run de evidência: `public repository evidence: C:\w_haptic_remove_c6`
- Rebuild limpo: `sim`
- Manifesto do kernel alvo: `C:\w_haptic_remove_c6\kernel_development\config\target_kernel.json`

| Driver | Resultado estático | Hardware | Evidência que falta |
|---|---|---|---|
| `rdbg` | `incomplete_or_failed` | `não executado` | module parity check failed: undefined_symbols_match<br>mapping 2 is not independently reviewed<br>mapping 3 is not independently reviewed |

`static_verified` exige cadeia de evidência, build reproduzível, paridade ELF/modinfo/KMI e mapa completo de funções Ghidra para o fonte. `hardware_verified` exige um teste controlado específico do driver, com rollback e logs. Nenhum dos dois, isoladamente, autoriza afirmar equivalência funcional absoluta.
