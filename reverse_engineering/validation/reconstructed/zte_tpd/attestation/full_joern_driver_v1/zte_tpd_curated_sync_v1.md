# Sincronização atual da fonte com o Docker — `zte_tpd`

Estado: `SYNC_VERIFIED`.

O verificador `sync_zte_tpd_curated_source.py` confirmou igualdade da árvore
de entradas do Kbuild entre a raiz principal e
`C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\zte_tpd`.
Antes da confirmação, três arquivos tinham ficado atrasados no snapshot após
correções já publicadas; eles foram sincronizados sem remover artefatos de
build:

| Arquivo | Hash anterior no snapshot | Hash final em ambos |
|---|---|---|
| `tpd_touch_release.c` | `26d69813658255853f0bb0e0b945260f8b389269dfb7e96fecc86cc426c79621` | `b7d94231ede3f16c94c3b2368a10ca3485694f441432dc75b18f4cf24f2aa8ba` |
| `change_tp_state.c` | `b1bdd0ae041100893999e49f7df929912c14e22f2dfcaecf9fdfe4a348df7f90` | `e465f10f60cc7c3a60f740a646075edb3961ebd917998c998e67e36c16c9eb9d` |
| `tp_edge_report_limit_write.c` | `de6c2da9a2886d8a388bd418a780d5c9836b1a190f70e22c387aafb9cc6d3ea7` | `888bcd600d1b5c11f951547305baaf66ba540ec5b0eb901515a4f19d4d7a6237` |

O hash final de `tpd_touch_release.c` foi confirmado dentro do container
`nubia-sm8850-kernel-builder:latest` com `sha256sum`. A checagem final da
árvore retornou `missing=0`, `unexpected=0`, `content_mismatch=0`.

Esta sincronização não equivale a uma compilação canônica nova: o builder
continua exigindo igualdade completa da árvore, além dos gates de assembly,
KCFI, Joern, testes e hardware.
