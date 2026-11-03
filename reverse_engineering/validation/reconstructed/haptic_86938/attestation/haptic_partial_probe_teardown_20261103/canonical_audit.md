# Auditoria Offline de Reconstrucao do NX809J

Dispositivo: **REDMAGIC 11 Pro+ (NX809J)**

Esta auditoria nao usa o smartphone. O resultado maximo permitido e `STATIC_ALIGNED_CANDIDATE`; hardware permanece `DEFERRED`.

Gerado em: `2026-11-03T07:48:52.572077+00:00`

| Driver | Veredito offline | Gates PASS | Bloqueadores |
|---|---|---:|---|
| `haptic_86938` | `INCOMPLETE` | 1/10 | no run contains both stock and Ghidra evidence<br>engineering run is missing<br>no assembly manifest found<br>mapping is not reviewed: activate_aw_show |

## Regra de leitura

`INCOMPLETE` identifica evidencia ausente ou desatualizada; nao prova que o fonte esteja errado. `STATIC_ALIGNED_CANDIDATE` prova que todos os gates offline definidos foram satisfeitos para os hashes registrados, mas nao prova comportamento eletrico.
