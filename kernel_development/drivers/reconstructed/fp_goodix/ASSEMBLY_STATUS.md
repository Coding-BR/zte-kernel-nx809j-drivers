# Paridade AArch64: `fp_goodix`

Este relatorio usa o modulo OEM como fonte da verdade. O baseline stock-exact permanece em `reverse_engineering/validation/reconstructed/fp_goodix/assembly_comparison.json`; a comparação do candidato hardening atual está em `reverse_engineering/validation/reconstructed/fp_goodix/attestation/lifetime_sync_hardening_20261104/assembly_comparison_build3.json`.

## Resultado

- Funcoes verificadas: 30
- Identidade exata de opcode, relocacao, secao e tamanho no candidato atual: 28/30
- Desvios de hardening intencionais: `gf_remove` e `cleanup_module`; nenhum desvio adicional
- Call graph e KCFI 30/30 e 23 IDs, respectivamente: evidência histórica do baseline `fc9a662…`; não repetida nesta rodada
- Funcoes sem mapeamento stock -> fonte: 0; equivalência semântica total permanece UNPROVEN

| Funcao | Bytes OEM/candidato | Instrucoes OEM/candidato | Relocations OEM/candidato | Diferenca restante |
|---|---:|---:|---:|---|
| `gf_ioctl` | 1436/1436 | 359/359 | 122/122 | exata |
| `gf_open` | 508/508 | 127/127 | 59/59 | exata |
| `gf_parse_dts` | 828/828 | 207/207 | 118/118 | exata |
| `gf_probe` | 1040/1040 | 260/260 | 120/120 | exata |
| `gf_remove` | 340/336 | 85/84 | alterada intencionalmente | teardown do notifier reordenado; chamada de `input_free_device` duplicada removida |
| `cleanup_module` | 88/88 | 22/22 | mesmos alvos, ordem alterada | unregister do platform driver antes de `netlink_exit` |

As comparações de assembly atuais cobrem todas as 30 funções: 28 permanecem exatas e duas diferem pelas alterações de hardening descritas acima. Isso não substitui equivalência semântica, revisão independente ou teste no hardware. O candidato atual mantém riscos abertos de IRQ e `ioctl` durante remoção de plataforma.

## Evidencias canonicas

- `attestation/lifetime_sync_hardening_20261104/assembly_comparison_build3.json`: comparacao atual função a função.
- `attestation/lifetime_sync_hardening_20261104/candidate_assembly_build3/`: assembly extraído do candidato hardening.
- `candidate_assembly/`: assembly do baseline stock-exact anterior.
- `offline_static/stock_assembly/`: assembly OEM hashado.
- `kcfi_comparison.json`: comparacao dos 23 type IDs instrumentados.
- `driver_audit.json`: duas builds limpas, KMI, ELF, aliases e vermagic.
- `microtask_audit.json`: verificacao dos hashes das 30 microtarefas.

Os diretorios `candidate_assembly_pass*` foram usados apenas durante a convergencia e nao fazem parte da evidencia canonica.

## Promoção por fonte Assembly — 2026-08-28

Os quatro corpos difíceis foram promovidos como fontes `.S`, reconstruídos a partir da evidência Assembly stock preservada e recompilados no Docker. O resultado canônico passou 30/30 funções no comparador com o manifesto stock portátil, incluindo bytes, instruções, relocations, seção e tamanho.

- `gf_ioctl_exact.S`: SHA-256 `acbe2b2a4846c2302a55f10a2836b969f9064c648652410a9d2343dd95f40d94`.
- `gf_parse_dts_exact.S`: SHA-256 `0479e6c8b548f6df14a2a0983fc8e10e739ea577365fe5c6693514270b8f5da5`.
- `fp_goodix_inline_exact.S`: SHA-256 `dfbcaa1cbc453d01b8cda0d46cffdc544eaeddcbf5af7d6471996ed9874ac625`.
- `fp_goodix_exact_rodata.S`: SHA-256 `4bf1c320dbf4b923175dd06a07f0ece8f88ed6739b28c8f903fa29555a128a5c`.
- Módulo baseline stock-exact de 2026-11-02: SHA-256 `fc9a6624521aad6faf2300dfa5589358e882f7eb80dcbf037e54a5e4aaaa9595`, 721560 bytes.
- KCFI: 23 type IDs stock correspondem, mas o comparador estrito de presença registra três candidatos extras. O host harness valida a referência C e não executa os corpos Assembly no kernel.
- Auditoria offline geral: `static_verified`; dois rebuilds Docker limpos e independentes são reprodutíveis. A atestação 2026-11-02 compara conteúdo/layout de código e dados alocados e `modinfo`; o check estrito de bytes de todas as seções carregáveis permanece falso pelo `.note.gnu.build-id` alocado, registrado separadamente de BTF/debug não alocados.
- A atestação completa está em `reverse_engineering/validation/reconstructed/fp_goodix/attestation/gf_ioctl_parse_exact_v1/`.

Este resultado fecha a identidade estática das funções, mas não prova equivalência semântica, revisão independente, carregamento seguro nem funcionamento no NX809J. Diferenças de metadados/dependências do artefato stock permanecem registradas na auditoria ABI.

## Reauditoria Docker — 2026-11-02

- O comando padrão agora encontra `kernel_development/config/target_kernel.json` mesmo quando a fonte auditada é o snapshot Docker; o manifesto escolhe o output volume preparado e evita tentar compilar usando uma árvore de fonte sem `include/generated`.
- Snapshot Docker, mapa e `.ko` foram alinhados à fonte versionada. O rebuild estrito passou com identidade do kernel validada e dois ciclos limpos.
- SHA integral candidato/rebuild difere no `.note.gnu.build-id` alocado e em seções não alocadas de BTF/debug. Conteúdo de código/dados alocados, layout e `modinfo` coincidem; o check estrito de bytes de todas as seções carregáveis permanece falso. Não declarar identidade binária integral.
- Os dois relatórios KCFI estritos falham nos mesmos três casos. O classificador preserva o resultado como pendente, com evidência de sobreposição dos preâmbulos stock e chamadas diretas Ghidra; referências indiretas ainda não foram descartadas.
- Evidência: `reverse_engineering/validation/reconstructed/fp_goodix/attestation/full_driver_audit_20261102/`.

## Rechecagem diagnóstica Docker — 2026-08-28

Duas compilações limpas do snapshot canônico no Docker `nubia-sm8850-kernel-builder:latest`, usando `clang-r536225`, produziram novamente o candidato `D114E25B…` com 730632 bytes. A evidência operacional está em `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\validation\fp_goodix_recheck_20260828\` e o resumo hashado está em `reverse_engineering/validation/reconstructed/fp_goodix/diagnostic_recheck_20260828.json`.

Foi testada uma variante isolada de `gf_probe` que removeu os sentinelas iniciais de `irq_gpio/reset_gpio`, inicializou `irq_num` e reordenou `pdev`. Ela reproduziu a forma do `stur` de 64 bits observada no stock, mas gerou 258/260 instruções e 1032/1040 bytes; também permaneceu divergente na sequência de `list_add_tail`. O SHA-256 da variante foi `751744CA9913DD006E1D75B793A0B3192ED0176199C22A85DF65385E9E573814`. A variante foi rejeitada e não alterou a fonte canônica.

Conclusão operacional: `gf_ioctl` exige reconstrução de CFG/cases; `gf_open` e `gf_parse_dts` exigem recuperação de idiomática de controle/cleanup; `gf_probe` exige separar inicialização de campos da expansão de lista. Nenhuma das quatro divergências está autorizada para patch pós-link por palavra isolada.

## Protocolo H0-H8 — rechecagem 2026-08-28

O job versionado `workspace_tools/reconstruction_pipeline/hard_driver_job.fp_goodix.example.json` foi executado com Joern pinado, Java 21 e Docker `nubia-sm8850-kernel-builder:latest`/`clang-r536225`. A onda `gf_open@00100de8` passou identidade, mapa, Joern estrito, slice, Docker reproduzível em dois ciclos e KCFI; Assembly continua aberto por ordenação de opcodes. A evidência detalhada está em `reverse_engineering/validation/reconstructed/fp_goodix/protocol_recheck_20260828.json`.

Uma variante isolada de `gf_parse_dts` que inlinha o `pinctrl_select_state` observado no stock manteve 207 instruções e 84 relocations, mas não melhorou a comparação de opcodes. A alteração de fonte foi promovida porque corrigiu a topologia de chamada direta no Joern sem degradar as outras 26 funções; a variante binária isolada permanece apenas como evidência diagnóstica. O protocolo não executou hardware e não autoriza declaração de equivalência total.

## Promoção canônica — 2026-08-28

- Fonte promovida: `fp_goodix_platform.c`, SHA-256 `6ae2f637f74f957c05cf5d94ac18d833c176d8e3ccb520c1eb2157e149045b5d`.
- Fonte adicional promovida: `fp_goodix_core.c`, SHA-256 `e3b3b339189690be3e3589b449df4488c82fece029a69ef68ba5b907702df11c`; a condição de energia de `gf_ioctl` agora segue a forma de branch observada no stock.
- Candidato canônico normal: SHA-256 `1ab0da939bf2a5664824dff50aa913a922c18ef45238f513a30b7163e348500c`, `730720` bytes.
- Comparação AArch64 com o mesmo extrator stock/candidato: 27/30 funções exatas; `gf_probe` foi fechado sem regressão, restando `gf_ioctl`, `gf_open` e `gf_parse_dts`.
- Joern estrito: `gf_parse_dts` agora apresenta a chamada direta a `pinctrl_select_state`; os quatro helpers de cópia do stock são reconciliados explicitamente com as APIs públicas `copy_to_user/copy_from_user`. O slice de dados permanece limitado pelo runtime Windows.
- Evidência: `reverse_engineering/validation/reconstructed/fp_goodix/canonical_direct_promotion_20260828.json`.
- Rechecagem isolada: `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\validation\fp_goodix_power_promoted_recheck_20260828\`; 30/30 extraídos, quatro bloqueadores conhecidos, host harness PASS/reprodutível. A comparação isolada de `gf_ioctl` passou relocations e manteve somente `symbol_size/instructions` divergentes.

## Promoção canônica de `gf_open` — 2026-08-28

- Fonte promovida: `fp_goodix_core.c`, SHA-256 `d12c977c8ad16131e96b745872e751d3ea304c5ca7c7434599ce7d400cf04de2`.
- Comparação isolada: `gf_open` passou 508/508 bytes, 127/127 instruções, 59/59 relocations e identidade de seção.
- Recheck do módulo completo: 30 funções extraídas, 28 exatas; divergências restantes somente em `gf_ioctl` e `gf_parse_dts`.
- Host harness: PASS, reprodutível, 30 funções cobertas.
- Evidência: `reverse_engineering/validation/reconstructed/fp_goodix/gf_open_exact_promotion_20260828.json`.

## Promoção canônica de `gf_probe` — 2026-08-28

- Variante isolada: `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\validation\fp_goodix_probe_list_add_variant_20260828\`.
- Resultado isolado: 1040/1040 bytes, 260/260 instruções, relocações equivalentes; o comparador passou integralmente.
- Recheck do módulo completo: 30 funções extraídas, 27 exatas; divergências restantes somente em `gf_ioctl`, `gf_open` e `gf_parse_dts`.
- Host harness: PASS, reprodutível, 30 funções cobertas. Evidência: `reverse_engineering/validation/reconstructed/fp_goodix/probe_initialization_list_add_promotion_20260828.json`.
