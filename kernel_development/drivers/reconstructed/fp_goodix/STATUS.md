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
| Assembly | PARCIAL | 28/30 funcoes exatas; duas diferencas delimitadas em `ASSEMBLY_STATUS.md` |
| Host harness | PASS | 30/30 funcoes cobertas; duas compilacoes e duas execucoes reproduziveis |
| Build GKI/KMI | PASS parcial | AArch64 REL, imports, aliases e namespace validados; build Docker reproduzivel, mas a auditoria ainda registra diferenca de dependencias/vermagic stock e o candidato normal nao e o artefato de auditoria KCFLAGS |
| Microtarefas | PASS offline | 30/30 com evidencias separadas de compile, KCFI e teste verificadas por SHA-256 |
| Hardware NX809J | DEFERRED | nenhum `insmod`, `rmmod`, ADB ou fastboot foi executado neste ciclo |

Candidato atual:

- SHA-256: `13ce11deef98d2b2d10ae5b042a2285c3c803e77b6a7c488b1239bff60e445fd`
- tamanho: `730792` bytes
- vermagic: `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k SMP preempt mod_unload modversions aarch64`

Bloqueadores para uma declaracao de equivalencia total:

1. Fechar identidade de opcode de `gf_ioctl` e `gf_parse_dts`.
2. Executar revisao independente do mapa estrutural.
3. Executar o protocolo controlado no NX809J com rollback e logs.

Nao declarar este driver "100% reconstruido" ou "hardware validado" enquanto esses tres itens permanecerem abertos.

Rechecagem Docker e promoção canônica em 2026-08-28:

- A fonte `fp_goodix_platform.c` foi atualizada para reproduzir a chamada direta a `pinctrl_select_state` observada no stock; o hash está registrado no `reconstruction_map.json`.
- O candidato normal canônico foi recompilado de forma reproduzível no Docker e promovido com SHA-256 `1ab0da939bf2a5664824dff50aa913a922c18ef45238f513a30b7163e348500c`.
- `gf_ioctl` teve a condição `power_offset` reescrita na forma de branch equivalente ao stock; a rechecagem isolada não causou regressão nos 26 símbolos fechados, mas a função ainda diverge na comparação final de opcodes/tamanho.
- O protocolo completo passou identidade, mapa, Joern estrito e KCFI (com `ignore_size` explícito para a diferença conhecida de `gf_ioctl`); o slice ficou limitado pelo runtime Windows após exceder o tempo prático.
- Evidência detalhada: `reverse_engineering/validation/reconstructed/fp_goodix/canonical_direct_promotion_20260828.json` e `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\validation\hard_protocol_fp_goodix_full8_20260828\`.

Rechecagem e promoção de `gf_probe` em 2026-08-28:

- O Docker reproduziu `gf_probe` com identidade integral: 1040 bytes, 260 instruções e relocações equivalentes.
- A correção usa a ordem de inicialização observada, gravação zero-extend de 64 bits no par de sentinelas e `list_add` para a topologia `CONFIG_LIST_HARDENED` do stock.
- O módulo canônico foi recompilado no snapshot `kernel-docker-workspace\\engenharia\\curated\\fp_goodix` com SHA-256 `68338a7bec5eba35fd11456bf4a73c482bb191e3661ee5b529df2b1b4b8d6a2f`; o recheck completo ficou em 27/30 funções exatas, sem regressão nas três funções ainda abertas.
- Evidência: `reverse_engineering/validation/reconstructed/fp_goodix/probe_initialization_list_add_promotion_20260828.json`.

Rechecagem e promoção de `gf_open` em 2026-08-28:

- A variante com rótulo comum de unlock/return, argumento de IRQ materializado a partir de `device_entry` e ordem de stores observada no stock reproduziu `gf_open` exatamente: 508 bytes, 127 instruções e relocations equivalentes.
- O módulo canônico foi recompilado independentemente no Docker; o recheck completo passou 28/30 funções, removendo `gf_open` sem regressão nas 27 funções anteriormente exatas.
- O harness host passou de forma reproduzível, cobrindo 30 funções.
- Evidência: `reverse_engineering/validation/reconstructed/fp_goodix/gf_open_exact_promotion_20260828.json`.
