# Status: `fp_goodix`

Estado: **STATIC_VERIFIED_OFFLINE - ainda nao equivalente a 100%**.

| Gate | Estado | Evidencia |
|---|---|---|
| Stock OEM | PASS | SHA-256 `534bdb87c4612ef6b7fe5663a10203179181cf3da1ce407b602b5e4fa8e67562`; binario privado nao publicado |
| Ghidra | PASS | 30 funcoes com pseudocodigo, P-Code e assembly AArch64 completos |
| Fonte | PASS | modulo composto por `fp_goodix_core.c`, `fp_goodix_netlink.c` e `fp_goodix_platform.c` |
| Mapa stock -> fonte | PASS estrutural | 30/30 funcoes com hashes; `semantic_equivalence: UNPROVEN`; revisao independente nao executada |
| Call graph | PASS | 30/30 inventario e chamadas stock/candidato coincidentes |
| KCFI | PASS | 23/23 type IDs instrumentados coincidentes; 7 funcoes sem preambulo KCFI independente |
| Assembly | PARCIAL | 26/30 funcoes exatas; quatro diferencas delimitadas em `ASSEMBLY_STATUS.md` |
| Host harness | PASS | 30/30 funcoes cobertas; duas compilacoes e duas execucoes reproduziveis |
| Build GKI/KMI | PASS parcial | AArch64 REL, imports, aliases e namespace validados; build Docker reproduzivel, mas a auditoria ainda registra diferenca de dependencias/vermagic stock e o candidato normal nao e o artefato de auditoria KCFLAGS |
| Microtarefas | PASS offline | 30/30 com evidencias separadas de compile, KCFI e teste verificadas por SHA-256 |
| Hardware NX809J | DEFERRED | nenhum `insmod`, `rmmod`, ADB ou fastboot foi executado neste ciclo |

Candidato atual:

- SHA-256: `2529e9880e78e05107f231e75da7e2f5e2eef51c2c933d6f285db2507c49a00d`
- tamanho: `730896` bytes
- vermagic: `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k SMP preempt mod_unload modversions aarch64`

Bloqueadores para uma declaracao de equivalencia total:

1. Fechar identidade de opcode de `gf_ioctl`, `gf_open`, `gf_parse_dts` e `gf_probe`.
2. Executar revisao independente do mapa estrutural.
3. Executar o protocolo controlado no NX809J com rollback e logs.

Nao declarar este driver "100% reconstruido" ou "hardware validado" enquanto esses tres itens permanecerem abertos.

Rechecagem Docker e promoção canônica em 2026-08-28:

- A fonte `fp_goodix_platform.c` foi atualizada para reproduzir a chamada direta a `pinctrl_select_state` observada no stock; o hash está registrado no `reconstruction_map.json`.
- O candidato normal canônico foi recompilado de forma reproduzível no Docker e promovido com SHA-256 `2529e9880e78e05107f231e75da7e2f5e2eef51c2c933d6f285db2507c49a00d`.
- O protocolo completo passou identidade, mapa, Joern estrito e KCFI (com `ignore_size` explícito para a diferença conhecida de `gf_ioctl`); o slice ficou limitado pelo runtime Windows após exceder o tempo prático.
- Evidência detalhada: `reverse_engineering/validation/reconstructed/fp_goodix/canonical_direct_promotion_20260828.json` e `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\validation\hard_protocol_fp_goodix_full8_20260828\`.
