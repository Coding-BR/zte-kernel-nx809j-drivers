# Auditoria Offline de Reconstrucao do NX809J

Dispositivo: **REDMAGIC 11 Pro+ (NX809J)**

Esta auditoria nao usa o smartphone. O resultado maximo permitido e `STATIC_ALIGNED_CANDIDATE`; hardware permanece `DEFERRED`.

Gerado em: `2026-07-30T19:45:21.534152+00:00`

| Driver | Veredito offline | Gates PASS | Bloqueadores |
|---|---|---:|---|
| `zte_tpd` | `INCOMPLETE` | 2/10 | run validation manifest is missing<br>no assembly manifest found<br>mapping is not reviewed: _inline_copy_from_user<br>mapping is not reviewed: cancel_report_lcd_state_delayed_work |

## Regra de leitura

`INCOMPLETE` identifica evidencia ausente ou desatualizada; nao prova que o fonte esteja errado. `STATIC_ALIGNED_CANDIDATE` prova que todos os gates offline definidos foram satisfeitos para os hashes registrados, mas nao prova comportamento eletrico.
