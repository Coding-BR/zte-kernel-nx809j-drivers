# Auditoria Independente de Reconstrução de Drivers

Esta auditoria é offline. Ela não executa ADB, fastboot, insmod, rmmod ou escrita de partições.

- Gerado em: `2026-11-02T12:29:26.484651+00:00`
- Run de evidência: `public repository evidence: C:\Users\adria\Desktop\drivers\zte-kernel-nx809j-drivers`
- Rebuild limpo: `sim`
- Manifesto do kernel alvo: `C:\Users\adria\Desktop\drivers\zte-kernel-nx809j-drivers\kernel_development\config\target_kernel.json`

| Driver | Resultado estático | Hardware | Evidência que falta |
|---|---|---|---|
| `zte_tpd` | `static_verified` | `não executado` | stock module dependency metadata differs from the current target build; candidate dependency metadata is checked against the target rebuild |

`static_verified` exige cadeia de evidência, build reproduzível, paridade ELF/modinfo/KMI e mapa completo de funções Ghidra para o fonte. `hardware_verified` exige um teste controlado específico do driver, com rollback e logs. Nenhum dos dois, isoladamente, autoriza afirmar equivalência funcional absoluta.
