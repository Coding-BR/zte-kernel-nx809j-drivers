# Auditoria Independente de Reconstrução de Drivers

Esta auditoria é offline. Ela não executa ADB, fastboot, insmod, rmmod ou escrita de partições.

- Gerado em: `2026-10-28T19:35:25.702161+00:00`
- Run de evidência: `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\validation\rdbg_probe_20261028\docker_curated_evidence`
- Rebuild limpo: `sim`
- Manifesto do kernel alvo: `não fornecido`

| Driver | Resultado estático | Hardware | Evidência que falta |
|---|---|---|---|
| `rdbg` | `incomplete_or_failed` | `não executado` | acquired stock module is missing from the selected evidence source<br>current reconstructed .ko is missing<br>Ghidra export missing: manifest.json |

`static_verified` exige cadeia de evidência, build reproduzível, paridade ELF/modinfo/KMI e mapa completo de funções Ghidra para o fonte. `hardware_verified` exige um teste controlado específico do driver, com rollback e logs. Nenhum dos dois, isoladamente, autoriza afirmar equivalência funcional absoluta.
