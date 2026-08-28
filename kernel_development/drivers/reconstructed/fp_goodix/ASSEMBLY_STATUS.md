# Paridade AArch64: `fp_goodix`

Este relatorio usa o modulo OEM como fonte da verdade. A comparacao canonica esta em `reverse_engineering/validation/reconstructed/fp_goodix/assembly_comparison.json`.

## Resultado

- Funcoes verificadas: 30
- Identidade de opcode, relocacao, secao e tamanho: 26
- Call graph equivalente: 30/30
- KCFI equivalente: 23/23 funcoes instrumentadas
- Funcoes sem identidade binaria completa: 4

| Funcao | Bytes OEM/candidato | Instrucoes OEM/candidato | Relocations OEM/candidato | Diferenca restante |
|---|---:|---:|---:|---|
| `gf_ioctl` | 1436/1424 | 359/356 | 122/122 | topologia de blocos, ordem de relocations e 12 bytes |
| `gf_open` | 508/508 | 127/127 | 59/59 | somente sequencia de opcodes |
| `gf_parse_dts` | 828/828 | 207/207 | 118/118 | layout de blocos e ordem de relocations |
| `gf_probe` | 1040/1040 | 260/260 | 120/120 | somente sequencia de opcodes |

Para as quatro funcoes, o conjunto de chamadas, as contagens estruturais indicadas e os type IDs KCFI aplicaveis foram validados. Isso e evidencia forte de proximidade estrutural, mas nao substitui identidade binaria, revisao independente ou teste no hardware.

## Evidencias canonicas

- `assembly_comparison.json`: comparacao funcao a funcao.
- `candidate_assembly/`: assembly do candidato atual.
- `offline_static/stock_assembly/`: assembly OEM hashado.
- `kcfi_comparison.json`: comparacao dos 23 type IDs instrumentados.
- `driver_audit.json`: duas builds limpas, KMI, ELF, aliases e vermagic.
- `microtask_audit.json`: verificacao dos hashes das 30 microtarefas.

Os diretorios `candidate_assembly_pass*` foram usados apenas durante a convergencia e nao fazem parte da evidencia canonica.

## Rechecagem diagnóstica Docker — 2026-08-28

Duas compilações limpas do snapshot canônico no Docker `nubia-sm8850-kernel-builder:latest`, usando `clang-r536225`, produziram novamente o candidato `D114E25B…` com 730632 bytes. A evidência operacional está em `C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\validation\fp_goodix_recheck_20260828\` e o resumo hashado está em `reverse_engineering/validation/reconstructed/fp_goodix/diagnostic_recheck_20260828.json`.

Foi testada uma variante isolada de `gf_probe` que removeu os sentinelas iniciais de `irq_gpio/reset_gpio`, inicializou `irq_num` e reordenou `pdev`. Ela reproduziu a forma do `stur` de 64 bits observada no stock, mas gerou 258/260 instruções e 1032/1040 bytes; também permaneceu divergente na sequência de `list_add_tail`. O SHA-256 da variante foi `751744CA9913DD006E1D75B793A0B3192ED0176199C22A85DF65385E9E573814`. A variante foi rejeitada e não alterou a fonte canônica.

Conclusão operacional: `gf_ioctl` exige reconstrução de CFG/cases; `gf_open` e `gf_parse_dts` exigem recuperação de idiomática de controle/cleanup; `gf_probe` exige separar inicialização de campos da expansão de lista. Nenhuma das quatro divergências está autorizada para patch pós-link por palavra isolada.

## Protocolo H0-H8 — rechecagem 2026-08-28

O job versionado `workspace_tools/reconstruction_pipeline/hard_driver_job.fp_goodix.example.json` foi executado com Joern pinado, Java 21 e Docker `nubia-sm8850-kernel-builder:latest`/`clang-r536225`. A onda `gf_open@00100de8` passou identidade, mapa, Joern estrito, slice, Docker reproduzível em dois ciclos e KCFI; Assembly continua aberto por ordenação de opcodes. A evidência detalhada está em `reverse_engineering/validation/reconstructed/fp_goodix/protocol_recheck_20260828.json`.

Uma variante isolada de `gf_parse_dts` que inlinha o `pinctrl_select_state` observado no stock manteve 207 instruções e 84 relocations, mas não melhorou a comparação de opcodes. A alteração de fonte foi promovida porque corrigiu a topologia de chamada direta no Joern sem degradar as outras 26 funções; a variante binária isolada permanece apenas como evidência diagnóstica. O protocolo não executou hardware e não autoriza declaração de equivalência total.

## Promoção canônica — 2026-08-28

- Fonte promovida: `fp_goodix_platform.c`, SHA-256 `6ae2f637f74f957c05cf5d94ac18d833c176d8e3ccb520c1eb2157e149045b5d`.
- Candidato canônico normal: SHA-256 `2529e9880e78e05107f231e75da7e2f5e2eef51c2c933d6f285db2507c49a00d`, `730896` bytes.
- Comparação AArch64 com o mesmo extrator stock/candidato: 26/30 funções continuam exatas; as quatro diferenças permanecem delimitadas, sem regressão nas 26 funções fechadas.
- Joern estrito: `gf_parse_dts` agora apresenta a chamada direta a `pinctrl_select_state`; os quatro helpers de cópia do stock são reconciliados explicitamente com as APIs públicas `copy_to_user/copy_from_user`. O slice de dados permanece limitado pelo runtime Windows.
- Evidência: `reverse_engineering/validation/reconstructed/fp_goodix/canonical_direct_promotion_20260828.json`.
