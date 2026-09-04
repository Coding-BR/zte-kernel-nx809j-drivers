# Auditoria Independente de Reconstrução de Drivers

Esta auditoria é offline. Ela não executa ADB, fastboot, insmod, rmmod ou escrita de partições.

- Gerado em: `2026-09-04T18:07:36.866562+00:00`
- Run de evidência: `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\runs\NX809J-20260711T011653Z`
- Rebuild limpo: `sim`
- Manifesto do kernel alvo: `não fornecido`

| Driver | Resultado estático | Hardware | Evidência que falta |
|---|---|---|---|
| `zte_tpd` | `incomplete_or_failed` | `não executado` | acquired stock module is missing from the selected evidence source<br>current reconstructed .ko is missing<br>Ghidra export missing: manifest.json |

`static_verified` exige cadeia de evidência, build reproduzível, paridade ELF/modinfo/KMI e mapa completo de funções Ghidra para o fonte. `hardware_verified` exige um teste controlado específico do driver, com rollback e logs. Nenhum dos dois, isoladamente, autoriza afirmar equivalência funcional absoluta.
