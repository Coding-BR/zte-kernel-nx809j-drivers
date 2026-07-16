# Auditoria Independente de Reconstrução de Drivers

Esta auditoria é offline. Ela não executa ADB, fastboot, insmod, rmmod ou escrita de partições.

- Gerado em: `2026-07-16T01:14:38.748025+00:00`
- Run de evidência: `C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z`
- Rebuild limpo: `True`

| Driver | Resultado estático | Hardware | Evidência que falta |
|---|---|---|---|
| `gpio_keys_nubia` | `incomplete_or_failed` | `não executado` | module parity check failed: vermagic_accepted<br>module parity check failed: undefined_symbols_match<br>module parity check failed: candidate_matches_fresh |

`static_verified` exige cadeia de evidência, build reproduzível, paridade ELF/modinfo/KMI e mapa completo de funções Ghidra para o fonte. `hardware_verified` exige um teste controlado específico do driver, com rollback e logs. Nenhum dos dois, isoladamente, autoriza afirmar equivalência funcional absoluta.
