# Auditoria Independente de Reconstrução de Drivers

Esta auditoria é offline. Ela não executa ADB, fastboot, insmod, rmmod ou escrita de partições.

- Gerado em: `2026-10-29T02:59:56.272675+00:00`
- Run de evidência: `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\runs\rdbg_init_module_curated_final_v23_20261029`
- Rebuild limpo: `sim`
- Manifesto do kernel alvo: `C:\Users\adria\Desktop\drivers\zte-kernel-nx809j-drivers\kernel_development\config\target_kernel.json`

| Driver | Resultado estático | Hardware | Evidência que falta |
|---|---|---|---|
| `rdbg` | `incomplete_or_failed` | `não executado` | module parity check failed: vermagic_accepted<br>module parity check failed: candidate_matches_fresh<br>current reconstructed .ko is missing |

`static_verified` exige cadeia de evidência, build reproduzível, paridade ELF/modinfo/KMI e mapa completo de funções Ghidra para o fonte. `hardware_verified` exige um teste controlado específico do driver, com rollback e logs. Nenhum dos dois, isoladamente, autoriza afirmar equivalência funcional absoluta.
