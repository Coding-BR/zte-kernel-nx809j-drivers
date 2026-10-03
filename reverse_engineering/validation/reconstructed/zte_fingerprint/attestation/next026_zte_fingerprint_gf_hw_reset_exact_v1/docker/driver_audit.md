# Auditoria Independente de Reconstrução de Drivers

Esta auditoria é offline. Ela não executa ADB, fastboot, insmod, rmmod ou escrita de partições.

- Gerado em: `2026-09-05T23:52:25.350484+00:00`
- Run de evidência: `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\runs\zte_fingerprint_gf_hw_reset_protocol_20260906`
- Rebuild limpo: `sim`
- Manifesto do kernel alvo: `C:\Users\adria\Desktop\drivers\zte-kernel-nx809j-drivers\kernel_development\config\target_kernel.json`

| Driver | Resultado estático | Hardware | Evidência que falta |
|---|---|---|---|
| `zte_fingerprint` | `incomplete_or_failed` | `não executado` | acquired stock module is missing from the selected evidence source<br>Ghidra export missing: manifest.json<br>Ghidra export missing: functions.jsonl |

`static_verified` exige cadeia de evidência, build reproduzível, paridade ELF/modinfo/KMI e mapa completo de funções Ghidra para o fonte. `hardware_verified` exige um teste controlado específico do driver, com rollback e logs. Nenhum dos dois, isoladamente, autoriza afirmar equivalência funcional absoluta.
