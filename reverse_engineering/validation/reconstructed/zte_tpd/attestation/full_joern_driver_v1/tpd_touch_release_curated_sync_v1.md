# Sincronização do snapshot Docker — `tpd_touch_release`

Estado: `SYNC_VERIFIED`.

O snapshot usado pelo builder em
`C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`
estava uma revisão atrás para `tpd_touch_release.c`: continha o deslocamento
incorreto `+2776` no mutex. A raiz versionada já havia sido corrigida para
`+3216` no commit `d32957e0`.

Foi sincronizado somente esse arquivo no snapshot Docker. Não foram removidos
artefatos de build nem alterados outros arquivos do snapshot.

| Estado | SHA-256 |
|---|---|
| Snapshot antigo | `26d69813658255853f0bb0e0b945260f8b389269dfb7e96fecc86cc426c79621` |
| Raiz versionada após correção | `b7d94231ede3f16c94c3b2368a10ca3485694f441432dc75b18f4cf24f2aa8ba` |
| Snapshot Docker após sincronização | `b7d94231ede3f16c94c3b2368a10ca3485694f441432dc75b18f4cf24f2aa8ba` |

A igualdade foi verificada byte a byte com `Get-FileHash`. Este registro torna
explícita a fronteira entre a fonte versionada e o snapshot compilável; uma
compilação canônica completa ainda deve exigir igualdade da árvore inteira,
como determina `run_zte_tpd_canonical_build.py`.
