# Status: `fp_goodix`

Estado atual (2026-11-10): **HARDENING_CANDIDATE_STATIC_BUILD_VERIFIED; STRICT_MODULE_PARITY_INCOMPLETE; DYNAMIC_VALIDATION_PENDING**. O `fp_goodix` continua em trabalho estático; não foi carregado nem validado no smartphone.

O baseline stock-exact `fc9a6624521aad6faf2300dfa5589358e882f7eb80dcbf037e54a5e4aaaa9595` e os candidatos de hardening anteriores permanecem preservados como evidência histórica. O source atual `fp_goodix_core.c` tem SHA-256 `ab516de7ada60a4d6798b4aeb9677615dc63ce07c817c633b9d4aa2ff936ee67`. Dois builds Docker NX809J limpos produziram o mesmo módulo `155b696fd615aa907936d5328520393873fb458af38ef428764d38e1ce43f77d` (723944 bytes). Contra o stock, 22/30 funções são assembly-exact e oito diferenças são desvios de hardening declarados; não foram encontradas diferenças fora desse conjunto. O novo desvio em `init_module` inicializa netlink antes de publicar o dispositivo e desfaz recursos se a inicialização falhar. Evidência: `attestation/module_init_netlink_ordering_20261110/`.

Os hardenings registrados cobrem a janela de registro tardio do notifier, IRQ aberto durante remoção, ioctl concorrente com teardown, liberação de GPIO devm e a ordem netlink/probe na inicialização. A auditoria ampla ainda retorna `incomplete_or_failed`: o strict stock-import gate vê `devres_open_group`/`devres_release_group` adicionados e `gpio_free` removido como desvios já declarados, e não concede `static_verified`. A revisão semântica independente e a validação dinâmica controlada permanecem pendentes. ADB não detecta dispositivo conectado; não houve carga do candidato.

Baseline stock-exact revalidado em 2026-11-02: o módulo `fc9a662…` passou comparação AArch64 fresca contra o stock em **30/30 funções**. A extração antiga em `candidate_assembly/` aponta para `13ce11de…`; as rechecagens de 27/30 e 28/30 são de hashes intermediários. A evidência está em `attestation/current_candidate_assembly_review_20261102/`.

| Gate | Estado | Evidencia |
|---|---|---|
| Stock OEM | PASS | SHA-256 `534bdb87c4612ef6b7fe5663a10203179181cf3da1ce407b602b5e4fa8e67562`; binario privado nao publicado |
| Ghidra | PASS | 30 funcoes com pseudocodigo, P-Code e assembly AArch64 completos |
| Fonte | PASS | modulo composto por `fp_goodix_core.c`, `fp_goodix_netlink.c` e `fp_goodix_platform.c` |
| Mapa stock -> fonte | PASS estrutural | 30/30 funções continuam mapeadas; hash do módulo e fonte foram atualizados. Equivalência C continua UNPROVEN e revisão humana independente pendente |
| Call graph | PASS | 30/30 inventario e chamadas stock/candidato coincidentes |
| KCFI | DIFERENÃ‡A CLASSIFICADA / STRICT PRESENCE FAILS | A comparaÃ§Ã£o estrita continua diferente em trÃªs preÃ¢mbulos. RevisÃ£o estÃ¡tica encontrou uma chamada direta `R_AARCH64_CALL26` de `gf_ioctl` por funÃ§Ã£o, corpos byte a byte idÃªnticos e nenhuma referÃªncia ELF indireta ou exportaÃ§Ã£o kernel `__ksymtab` para esses alvos. DecisÃ£o: `KCFI_NOT_APPLICABLE_DIRECT_CALL_ONLY`; nÃ£o Ã© PASS de igualdade estrita. EvidÃªncia: `attestation/kcfi_direct_call_only_review_20261102/`. |
| Assembly | PARCIAL / HARDENING | Comparação fresca contra o stock real: 22/30 exatas; oito diferenças intencionais em `cleanup_module`, `gf_cleanup`, `gf_compat_ioctl`, `gf_open`, `gf_probe`, `gf_release`, `gf_remove` e `init_module`. Nenhuma diferença não classificada. Ver `attestation/module_init_netlink_ordering_20261110/assembly_comparison_stock.json` |
| Host harness | HISTÓRICO | 30/30 cobertas no baseline `fc9a662…`; o candidato hardening atual não teve harness nesta rodada |
| Build GKI/KMI | BUILD PASS / STRICT IMPORT DEVIATION | Dois builds Docker NX809J limpos produziram módulo idêntico, SHA-256 `155b696f…`; o auditor estrito continua marcando as diferenças importadas de hardening e não conclui `static_verified` |
| Microtarefas | HISTÓRICO | As 30 microtarefas foram verificadas no baseline stock-exact; as mudanças hardening atuais não repetiram esses testes |
| Hardware NX809J | DEFERRED | `adb devices -l` confirmou lista vazia; nenhum `insmod`/`rmmod` ou teste no telefone foi executado |

Candidato atual:

- SHA-256 do baseline stock-exact de 2026-11-02: `fc9a6624521aad6faf2300dfa5589358e882f7eb80dcbf037e54a5e4aaaa9595`
- SHA-256 do candidato hardening anterior: `3dcb65d6844d895ed794d44f09e400a4caf0d08401c5a8ed4454d5c8ba8eae63` (719232 bytes)
- SHA-256 do candidato atual com hardening de IRQ/ioctl/recursos e inicialização netlink ordenada: `155b696fd615aa907936d5328520393873fb458af38ef428764d38e1ce43f77d` (723944 bytes)
- vermagic: `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k SMP preempt mod_unload modversions aarch64`

Reauditoria Docker â€” 2026-11-02:

- O snapshot `engenharia/curated/fp_goodix` foi alinhado ao repositÃ³rio no `Makefile`, mapa e candidato; os trÃªs agora apontam ao candidato `fc9a6624521aad6faf2300dfa5589358e882f7eb80dcbf037e54a5e4aaaa9595`.
- `validate_reconstructed_drivers.py --driver fp_goodix --rebuild --strict` passou usando o manifesto do kernel versionado, dois builds Docker limpos e identidade da fonte confirmada. O resultado Ã© `static_verified`, sem validaÃ§Ã£o em hardware.
- O SHA-256 integral do candidato nÃ£o Ã© idÃªntico ao rebuild: o `.note.gnu.build-id` alocado e seÃ§Ãµes nÃ£o alocadas de BTF/debug diferem. O conteÃºdo de cÃ³digo/dados alocados, o layout das seÃ§Ãµes alocadas e `modinfo` coincidem; o check estrito de bytes de todas as seÃ§Ãµes carregÃ¡veis permanece falso pelo build ID. A diferenÃ§a de metadados `depends` do stock para o target foi preservada no relatÃ³rio.
- O comparador KCFI estrito continua reprovando trÃªs presenÃ§as e permanece registrado como diferenÃ§a. A revisÃ£o de aplicabilidade foi concluÃ­da: cada funÃ§Ã£o tem uma Ãºnica relocation `R_AARCH64_CALL26` recebida de `gf_ioctl`, as chamadas stock preservadas no Ghidra sÃ£o diretas, nÃ£o hÃ¡ referÃªncias ELF indiretas nem exportaÃ§Ãµes kernel `__ksymtab` para esses alvos e os corpos sÃ£o byte a byte idÃªnticos. A reauditoria Docker produziu `static_verified`, com os checks de fonte, KMI, mapa e build reproduzÃ­vel aprovados. A classificaÃ§Ã£o nÃ£o altera o resultado estrito nem fecha os gates semÃ¢ntico e de hardware.
- A verificaÃ§Ã£o do manifesto no Ã­ndice do Git passou 30/30 microtarefas.

Bloqueadores para uma declaracao de equivalencia total:

1. Executar revisao independente do mapa estrutural.
2. Executar o protocolo controlado no NX809J com rollback e logs.
3. Demonstrar equivalencia semantica e comportamento de hardware; os gates estaticos nao bastam.

Nao declarar este driver "100% reconstruido" ou "hardware validado" enquanto esses tres itens permanecerem abertos.

PromoÃ§Ã£o Assembly exata â€” 2026-08-28:

- `gf_ioctl`, `gf_parse_dts`, `_inline_copy_to_user` e `_inline_copy_from_user` foram materializados como fontes Assembly AArch64 com relocations de nÃ­vel-fonte e alvos de chamada explÃ­citos. NÃ£o houve transplante pÃ³s-link.
- O candidato foi recompilado a partir de `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated\fp_goodix` no Docker `nubia-sm8850-kernel-builder:latest` com `clang-r536225`.
- ComparaÃ§Ã£o canÃ´nica: 30/30 funÃ§Ãµes exatas; KCFI: 23/23 type IDs instrumentados; host harness: PASS reproduzÃ­vel em dois ciclos, cobrindo a API C de referÃªncia.
- EvidÃªncia versionada: `reverse_engineering/validation/reconstructed/fp_goodix/attestation/gf_ioctl_parse_exact_v1/`.
- A auditoria ABI mantÃ©m diferenÃ§as de metadados/dependÃªncias do artefato stock; imports, aliases, ELF, KMI e vermagic alvo foram verificados. O host harness nÃ£o executa os corpos Assembly no kernel nem substitui validaÃ§Ã£o no NX809J.
- A auditoria offline geral, com dois rebuilds limpos no Docker e flags determinÃ­sticas para C/Assembler, classificou o driver como `static_verified`; os dois ciclos produziram SHA-256 `fc9a6624521aad6faf2300dfa5589358e882f7eb80dcbf037e54a5e4aaaa9595`.

Rechecagem Docker e promoÃ§Ã£o canÃ´nica em 2026-08-28:

- A fonte `fp_goodix_platform.c` foi atualizada para reproduzir a chamada direta a `pinctrl_select_state` observada no stock; o hash estÃ¡ registrado no `reconstruction_map.json`.
- O candidato normal canÃ´nico foi recompilado de forma reproduzÃ­vel no Docker e promovido com SHA-256 `1ab0da939bf2a5664824dff50aa913a922c18ef45238f513a30b7163e348500c`.
- `gf_ioctl` teve a condiÃ§Ã£o `power_offset` reescrita na forma de branch equivalente ao stock; a rechecagem isolada nÃ£o causou regressÃ£o nos 26 sÃ­mbolos fechados, mas a funÃ§Ã£o ainda diverge na comparaÃ§Ã£o final de opcodes/tamanho.
- O protocolo completo passou identidade, mapa, Joern estrito e KCFI (com `ignore_size` explÃ­cito para a diferenÃ§a conhecida de `gf_ioctl`); o slice ficou limitado pelo runtime Windows apÃ³s exceder o tempo prÃ¡tico.
- EvidÃªncia detalhada: `reverse_engineering/validation/reconstructed/fp_goodix/canonical_direct_promotion_20260828.json` e `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\validation\hard_protocol_fp_goodix_full8_20260828\`.

Rechecagem e promoÃ§Ã£o de `gf_probe` em 2026-08-28:

- O Docker reproduziu `gf_probe` com identidade integral: 1040 bytes, 260 instruÃ§Ãµes e relocaÃ§Ãµes equivalentes.
- A correÃ§Ã£o usa a ordem de inicializaÃ§Ã£o observada, gravaÃ§Ã£o zero-extend de 64 bits no par de sentinelas e `list_add` para a topologia `CONFIG_LIST_HARDENED` do stock.
- Registro histórico: o recheck do candidato `68338a7bec5eba35fd11456bf4a73c482bb191e3661ee5b529df2b1b4b8d6a2f` passou 27/30. Para o candidato canônico atual `fc9a662…`, a comparação fresca de 2026-11-02 passou 30/30; ver `attestation/current_candidate_assembly_review_20261102/`.
- EvidÃªncia: `reverse_engineering/validation/reconstructed/fp_goodix/probe_initialization_list_add_promotion_20260828.json`.

Rechecagem e promoÃ§Ã£o de `gf_open` em 2026-08-28:

- A variante com rÃ³tulo comum de unlock/return, argumento de IRQ materializado a partir de `device_entry` e ordem de stores observada no stock reproduziu `gf_open` exatamente: 508 bytes, 127 instruÃ§Ãµes e relocations equivalentes.
- O mÃ³dulo canÃ´nico foi recompilado independentemente no Docker; o recheck completo passou 28/30 funÃ§Ãµes, removendo `gf_open` sem regressÃ£o nas 27 funÃ§Ãµes anteriormente exatas.
- O harness host passou de forma reproduzÃ­vel, cobrindo 30 funÃ§Ãµes.
- EvidÃªncia: `reverse_engineering/validation/reconstructed/fp_goodix/gf_open_exact_promotion_20260828.json`.

## Lifetime/synchronization risk audit — 2026-11-03

A static audit found two OEM-inherited teardown risks: `gf_remove` unregisters the current panel cookie before draining delayed work that can create a new registration, and an open-time IRQ is freed by last-file release rather than by platform remove. `zte_fp_exit` also tears down netlink before unregistering the platform driver. The current candidate's exact assembly review confirms the stock order; neither race was reproduced. Source/map remain unchanged; see the [lifetime/synchronization audit](../../../../reverse_engineering/validation/reconstructed/fp_goodix/attestation/lifetime_sync_risk_audit_20261103/README.md). Any correction must be declared as a hardening deviation, rebuilt in canonical Docker, and reviewed. Independent human review and hardware validation remain pending.

## Module-init netlink ordering hardening — 2026-11-10

Stock Ghidra/P-Code and AArch64 assembly show `init_module` calling `platform_driver_register` before `netlink_init`. The probe can create the character-device node during driver registration; an immediate open can request the IRQ and reach `sendnlmsg` while its `nl_sk` is still null. The source now initializes netlink first, then registers the platform driver. If either setup step fails, it returns an error and unwinds the socket, class, and character-device registration in reverse order.

The target Docker build produced two identical modules (`155b696f…`, 723944 bytes). Fresh comparison against stock has 22/30 exact functions and eight classified hardening deviations; comparison against the previous candidate shows only `init_module` changed. Its KCFI type ID remains `0x6fbb3035`; the symbol-size change is expected for the new control flow. The source and module hashes match the canonical Docker curated snapshot.

The overall strict audit remains `incomplete_or_failed` because this candidate intentionally differs from stock imports (`devres_open_group`, `devres_release_group`, and `gpio_free`) and the full driver has not received independent review. No host harness, KCSAN, module load/unload, or phone test was run. ADB was empty. Do not claim full semantic equivalence or hardware validation.

## Panel phandle reference review — 2026-11-10

The static review of `goodixfp_drm_get_pannel` checked the pinned NX809J kernel API and effective Docker build configuration. The API documentation says `of_parse_phandle()` returns a node with an incremented reference and calls for `of_node_put()` when finished. In this target build, `CONFIG_OF_DYNAMIC` is unset; `include/linux/of.h` therefore defines `of_node_put()` as an empty inline function. `of_drm_find_panel()` does not consume the node reference, but no reference count is retained or leaked in this fixed NX809J configuration. This is not classified as a runtime leak for the target. Source and module were left unchanged, preserving the existing 336-byte stock assembly match. If a future target enables `CONFIG_OF_DYNAMIC`, add `of_node_put(panel_np)` after the panel lookup and recheck parity. Evidence: `attestation/panel_phandle_reference_review_20261110/`. ADB was rechecked and listed no devices; dynamic phone validation remains pending.
