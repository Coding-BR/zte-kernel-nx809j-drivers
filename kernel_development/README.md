# Desenvolvimento local dos drivers / Local driver development

Fontes, Kbuilds, harnesses e candidatos reconstruídos para o **REDMAGIC 11
Pro+ (NX809J)**, Android 16 GKI 6.12.23. A compilação é local; GitHub Actions
não compila kernel nem módulos.

## `zte_ir`

- Caminho canônico: `drivers/zte_ir/`
- Espelho de compatibilidade: `drivers/reconstructed/zte_ir/`
- Fonte canônico: `zte_ir.c`
- Candidato: `zte_ir.ko`
- SHA-256: `1a1d1362729f91510ec7dca7ffb1c4865105abef8c3ded90f7c8b00a6d8d4ffc`
- Estado: O0–O9 `PASS`; O10 e hardware pendentes.

Os dois diretórios devem conter exatamente o mesmo `zte_ir.c`, `zte_ir.ko`,
mapa e harness. O artefato histórico `zte_ir_reconstructed.ko` não é o
candidato canônico.

## Build local

O ambiente reproduzível está em `../reproducible_environment/`. Antes de
publicar qualquer `.ko`, execute build duplo, KMI, KCFI, harness e auditoria
offline com os scripts em `../workspace_tools/reconstruction_pipeline/`.

Consulte `drivers/zte_ir/README.md` para os comandos e
`drivers/zte_ir/GUIA_TESTE_CONTROLADO_OUTRO_AMBIENTE.md` para o protocolo de
hardware e rollback.

---

This directory contains reconstructed sources, Kbuild files, host harnesses,
and candidates for **REDMAGIC 11 Pro+ (NX809J)** on Android 16 GKI 6.12.23.
Builds run locally; GitHub Actions does not compile the kernel or modules.

For `zte_ir`, `drivers/zte_ir/` is canonical and
`drivers/reconstructed/zte_ir/` is a compatibility mirror. Both must carry the
same source, candidate hash, traceability map, and harness. Current status is
O0–O9 `PASS`, with independent review and hardware validation pending.
