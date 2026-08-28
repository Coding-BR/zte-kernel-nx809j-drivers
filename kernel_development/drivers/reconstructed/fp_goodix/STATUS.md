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
| Assembly | PASS estrutural | 30/30 funcoes exatas no comparador AArch64 com relocacoes, secoes e tamanhos |
| Host harness | PASS | 30/30 funcoes cobertas; duas compilacoes e duas execucoes reproduziveis |
| Build GKI/KMI | PASS parcial | AArch64 REL, imports, aliases e namespace validados; build Docker reproduzivel, mas a auditoria ainda registra diferenca de dependencias/vermagic stock e o candidato normal nao e o artefato de auditoria KCFLAGS |
| Microtarefas | PASS offline | 30/30 com evidencias separadas de compile, KCFI e teste verificadas por SHA-256 |
| Hardware NX809J | DEFERRED | nenhum `insmod`, `rmmod`, ADB ou fastboot foi executado neste ciclo |

Candidato atual:

- SHA-256: `7c2772bf16112e80b4311ec686696156f46adf985d67fac9ae257ef7cc70241d`
- tamanho: `721008` bytes
- vermagic: `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k SMP preempt mod_unload modversions aarch64`

Bloqueadores para uma declaracao de equivalencia total:

1. Executar revisao independente do mapa estrutural.
2. Executar o protocolo controlado no NX809J com rollback e logs.
3. Demonstrar equivalencia semantica e comportamento de hardware; os gates estaticos nao bastam.

Nao declarar este driver "100% reconstruido" ou "hardware validado" enquanto esses tres itens permanecerem abertos.

Promoção Assembly exata — 2026-08-28:

- `gf_ioctl`, `gf_parse_dts`, `_inline_copy_to_user` e `_inline_copy_from_user` foram materializados como fontes Assembly AArch64 com relocations de nível-fonte e alvos de chamada explícitos. Não houve transplante pós-link.
- O candidato foi recompilado a partir de `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\fp_goodix` no Docker `nubia-sm8850-kernel-builder:latest` com `clang-r536225`.
- Comparação canônica: 30/30 funções exatas; KCFI: 23/23 type IDs instrumentados; host harness: PASS reproduzível em dois ciclos, cobrindo a API C de referência.
- Evidência versionada: `reverse_engineering/validation/reconstructed/fp_goodix/attestation/gf_ioctl_parse_exact_v1/`.
- A auditoria ABI mantém diferenças de metadados/dependências do artefato stock; imports, aliases, ELF, KMI e vermagic alvo foram verificados. O host harness não executa os corpos Assembly no kernel nem substitui validação no NX809J.
- A auditoria offline geral, com dois rebuilds limpos no Docker e flags determinísticas para C/Assembler, classificou o driver como `static_verified`; os dois ciclos produziram SHA-256 `7c2772bf16112e80b4311ec686696156f46adf985d67fac9ae257ef7cc70241d`.

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
