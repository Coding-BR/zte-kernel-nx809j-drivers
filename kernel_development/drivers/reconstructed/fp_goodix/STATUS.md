# Status: `fp_goodix`

Estado atual (2026-11-04): **HARDENING_CANDIDATE_STATIC_BUILD_VERIFIED; DYNAMIC_VALIDATION_PENDING**. O `fp_goodix` continua em trabalho estático; não está validado no smartphone e não deve ser instalado/promovido.

O baseline stock-exact `fc9a6624521aad6faf2300dfa5589358e882f7eb80dcbf037e54a5e4aaaa9595` e o candidato anterior `3dcb65d6844d895ed794d44f09e400a4caf0d08401c5a8ed4454d5c8ba8eae63` permanecem preservados como evidência histórica. O candidato atual adiciona hardening em IRQ/ioctl, aquisição e liberação de recursos, abertura/fechamento, probe e remoção. Dois builds Docker NX809J limpos produziram o mesmo módulo `756d2e48b902e85ca4e19e7281291ad2895def7922e86750fd2c220ffe030f3a` (723560 bytes). Contra o módulo stock, 23/30 funções são idênticas; as sete diferenças são as alterações de hardening documentadas, sem divergências fora do escopo. Evidência: `attestation/ioctl_irq_resource_group_hardening_20261104/`.

O lote elimina estaticamente os riscos previamente identificados de IRQ durante remoção, ioctl concorrente com teardown e liberação duplicada de GPIO gerenciado. Isso ainda precisa de revisão semântica independente e validação dinâmica controlada. ADB não detecta dispositivo conectado nesta checagem; não houve carga de módulo nem teste de hardware.

Baseline stock-exact revalidado em 2026-11-02: o módulo `fc9a662…` passou comparação AArch64 fresca contra o stock em **30/30 funções**. A extração antiga em `candidate_assembly/` aponta para `13ce11de…`; as rechecagens de 27/30 e 28/30 são de hashes intermediários. A evidência está em `attestation/current_candidate_assembly_review_20261102/`.

| Gate | Estado | Evidencia |
|---|---|---|
| Stock OEM | PASS | SHA-256 `534bdb87c4612ef6b7fe5663a10203179181cf3da1ce407b602b5e4fa8e67562`; binario privado nao publicado |
| Ghidra | PASS | 30 funcoes com pseudocodigo, P-Code e assembly AArch64 completos |
| Fonte | PASS | modulo composto por `fp_goodix_core.c`, `fp_goodix_netlink.c` e `fp_goodix_platform.c` |
| Mapa stock -> fonte | PASS estrutural | 30/30 funções continuam mapeadas; hash do módulo e fonte foram atualizados. Equivalência C continua UNPROVEN e revisão humana independente pendente |
| Call graph | PASS | 30/30 inventario e chamadas stock/candidato coincidentes |
| KCFI | DIFERENÃ‡A CLASSIFICADA / STRICT PRESENCE FAILS | A comparaÃ§Ã£o estrita continua diferente em trÃªs preÃ¢mbulos. RevisÃ£o estÃ¡tica encontrou uma chamada direta `R_AARCH64_CALL26` de `gf_ioctl` por funÃ§Ã£o, corpos byte a byte idÃªnticos e nenhuma referÃªncia ELF indireta ou exportaÃ§Ã£o kernel `__ksymtab` para esses alvos. DecisÃ£o: `KCFI_NOT_APPLICABLE_DIRECT_CALL_ONLY`; nÃ£o Ã© PASS de igualdade estrita. EvidÃªncia: `attestation/kcfi_direct_call_only_review_20261102/`. |
| Assembly | PARCIAL / HARDENING | Comparação fresca contra o stock real: 23/30 exatas; sete diferenças intencionais em `cleanup_module`, `gf_cleanup`, `gf_compat_ioctl`, `gf_open`, `gf_probe`, `gf_release` e `gf_remove`. Nenhuma diferença não classificada. Ver `attestation/ioctl_irq_resource_group_hardening_20261104/assembly_comparison_stock.json` |
| Host harness | HISTÓRICO | 30/30 cobertas no baseline `fc9a662…`; o candidato hardening atual não teve harness nesta rodada |
| Build GKI/KMI | BUILD PASS | Dois builds Docker NX809J limpos produziram módulo idêntico, SHA-256 `756d2e48…`; isso não fecha equivalência semântica nem validação de hardware |
| Microtarefas | HISTÓRICO | As 30 microtarefas foram verificadas no baseline stock-exact; as mudanças hardening atuais não repetiram esses testes |
| Hardware NX809J | DEFERRED | `adb devices -l` confirmou lista vazia; nenhum `insmod`/`rmmod` ou teste no telefone foi executado |

Candidato atual:

- SHA-256 do baseline stock-exact de 2026-11-02: `fc9a6624521aad6faf2300dfa5589358e882f7eb80dcbf037e54a5e4aaaa9595`
- SHA-256 do candidato hardening anterior: `3dcb65d6844d895ed794d44f09e400a4caf0d08401c5a8ed4454d5c8ba8eae63` (719232 bytes)
- SHA-256 do candidato atual com hardening de IRQ/ioctl/recursos: `756d2e48b902e85ca4e19e7281291ad2895def7922e86750fd2c220ffe030f3a` (723560 bytes)
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
