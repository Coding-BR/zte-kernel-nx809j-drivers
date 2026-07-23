# Auditoria Offline de Reconstrucao do NX809J

Dispositivo: **REDMAGIC 11 Pro+ (NX809J)**

Esta auditoria nao usa o smartphone. O resultado maximo permitido e `STATIC_ALIGNED_CANDIDATE`; hardware permanece `DEFERRED`.

Gerado em: `2026-07-23T18:49:35.599826+00:00`

| Driver | Veredito offline | Gates PASS | Bloqueadores |
|---|---|---:|---|
| `zte_tpd` | `INCOMPLETE` | 6/10 | report status is not PASS<br>no passing per-function KCFI comparison for the current candidate<br>no current passing double-clean build audit<br>offline parity failed: complete recoverable KCFI surface |

## Regra de leitura

`INCOMPLETE` identifica evidencia ausente ou desatualizada; nao prova que o fonte esteja errado. `STATIC_ALIGNED_CANDIDATE` prova que todos os gates offline definidos foram satisfeitos para os hashes registrados, mas nao prova comportamento eletrico.
