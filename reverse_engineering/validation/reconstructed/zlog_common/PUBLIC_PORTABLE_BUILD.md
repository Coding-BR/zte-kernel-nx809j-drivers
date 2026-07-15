# Auditoria Independente de Reconstrução de Drivers

Esta auditoria é offline. Ela não executa ADB, fastboot, insmod, rmmod ou escrita de partições.

- Gerado em: `2026-07-15T19:03:51.056787+00:00`
- Run de evidência: `C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia\runs\NX809J-20260715T181940Z-zlog-common-offline`
- Rebuild limpo: `True`

| Driver | Resultado estático | Hardware | Evidência que falta |
|---|---|---|---|
| `zlog_common` | `static_verified` | `não executado` | nenhuma |

`static_verified` exige cadeia de evidência, build reproduzível, paridade ELF/modinfo/KMI e mapa completo de funções Ghidra para o fonte. `hardware_verified` exige um teste controlado específico do driver, com rollback e logs. Nenhum dos dois, isoladamente, autoriza afirmar equivalência funcional absoluta.
