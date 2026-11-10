# Status: `gpio_keys_nubia`

Estado atual (2026-11-04): **STAGE5_STATIC_PARTIAL**. O lote mais recente
serializa a leitura/escrita de `suspended` entre IRQ e PM com o spinlock já
existente por botão. O candidato tem SHA-256
`71e0d676926830b9c108ef11172057405dfce9dee88d96717630d8381b035fdf` e 242256
bytes. Dois builds Docker limpos coincidiram; o validador reportou
`static_verified`.

A extração fresca cobre 24/24 identidades stock. Na comparação estrita, 20
funções permanecem exatas e quatro têm diferenças esperadas pelo hardening:
`gpio_keys_gpio_isr`, `gpio_keys_gpio_report_event`, `gpio_keys_resume` e
`gpio_keys_suspend`; não há outras diferenças. O corpo original de
`gpio_keys_gpio_report_event` passa a comparação estrita separada. O mapa
registra 20 `PROMOTED_OFFLINE_EXACT` e quatro desvios de hardening revisados.
Equivalência semântica integral continua **UNPROVEN**.

A revisão independente continua pendente. O NX809J está visível no ADB, mas
nenhum módulo foi carregado nem ação GPIO foi disparada neste lote estático.
A janela de shutdown foi revisada estaticamente: permanece possível um evento
tardio, mas não foi encontrado caminho de liberação de memória nesse callback.
Evidência: `attestation/shutdown_window_review_20261110/`. O driver não está
concluído.

## Revisão estática da janela de shutdown — 2026-11-10

- Ghidra, P-Code e Assembly stock mostram `gpio_keys_shutdown` chamando
  `gpio_keys_suspend` sem desabilitar IRQ ou drenar timer/work. A função do
  candidato continua estritamente igual ao stock.
- A ISR GPIO ainda pode enfileirar delayed work e a ISR IRQ-only pode armar o
  timer depois do callback. Isso caracteriza uma janela para evento tardio
  durante o desligamento; não demonstra acesso a memória liberada.
- No kernel fixado, `device_shutdown()` despacha callbacks de shutdown sem
  liberar devres. No detach/unwind, a ordem de devres sincroniza IRQs antes da
  ação `gpio_keys_quiesce_key`, que drena timer/work antes da liberação do input.
- Chamar apenas o quiesce em shutdown permitiria novo enfileiramento por IRQ;
  desabilitar IRQ altera a configuração de wake do caminho suspend. A evidência
  estática não sustenta essa mudança. A observação continua aberta como risco
  operacional baixo; não foi reproduzida em hardware.
- Nenhum fonte ou módulo mudou nesta revisão; rebuild Docker não era necessário.

## Revalidação anterior do estado global de report — 2026-11-04 (histórico)

- O mapa continua cobrindo as 24 identidades stock; o candidato inclui um
  helper adicional para manter o corpo assembly stock sob a entrada protegida.
- A comparação fresca passa 23/24 identidades stock e classifica a única
  diferença como wrapper de `gpio_keys_gpio_report_event`. O corpo preservado
  passa a comparação estrita separada.
- A compilação reproduzível, conteúdo/layout das seções de runtime, `modinfo`,
  imports e mapa passam no pipeline Docker. O pipeline não executa hardware.
- KCFI dos chamadores `gpio_keys_open`, `gpio_keys_gpio_work_func` e
  `gpio_keys_resume` passa 3/3. O wrapper novo só recebe chamadas diretas.
- Evidência hash-bound: `attestation/report_state_serialization_20261104/`.

## Baseline stock-exact revalidado — 2026-11-02 (histórico)

- Candidato Docker/repositório/mapa: `95e2b7d8352c3039e154f56f32da8f45e3a513b3706d3ebcb2269886424f14cc`; stock: `8cb89f5068195396a5db5fba1c51f2cf6056884dbb00f7ee8af5041ccd6f32b3`.
- A extração fresca comparou 24/24 identidades: instruções, relocations, seções e tamanhos passaram em todas. As manifests desta extração ligam os resultados aos dois hashes.
- A auditoria canônica Docker continua `static_verified`, com dois builds reproduzíveis. A igualdade de assembly não fecha equivalência C, revisão humana independente ou validação de hardware.
- Evidência atual: `attestation/current_candidate_assembly_review_20261102/`; a comparação `stage5_final_full_assembly_comparison.json` é um checkpoint anterior sem o vínculo hash do candidato atual.

| Item | Estado | Evidencia/Bloqueador |
|---|---|---|
| Stock | IDENTIFICADO | SHA-256 `8cb89f5068195396a5db5fba1c51f2cf6056884dbb00f7ee8af5041ccd6f32b3`; 24 funcoes Ghidra |
| Layout por botao | PASS ESTATICO | stride `0x110` e offsets comprovados por P-Code, Assembly e `static_assert` |
| Build limpo | PASS | duas compilacoes Docker isoladas reproduziveis; candidato SHA-256 `95e2b7d8352c3039e154f56f32da8f45e3a513b3706d3ebcb2269886424f14cc`, 232336 bytes |
| Mapa stock -> fonte | PASS ESTRUTURAL | 24/24 identidades com hashes; assembly fresco do candidato atual 24/24 exato; equivalencia C segue `UNPROVEN` |
| KCFI stage 5 | PASS ESTATICO | 24/24 entradas com presenca, type ID e secao/tamanho correspondentes |
| Assembly stage 5 | PASS | 24/24 instrucoes, relocations, secoes e tamanhos exatos no candidato `95e2b7d…` |
| Joern strict stage 5 | PASS ESTATICO | 24/24 identidades, parsing 0, chamadas nao resolvidas 0; gaps de CPG explicados por 10 comparacoes `.S` exatas |
| `gpio_keys_probe` | PASS EXATO | `3600` bytes, `900` instrucoes, `164` relocacoes e opcodes exatos |
| Harness stage 1 | PASS | 11/11 testes offline de wrappers sysfs e lifecycle |
| Harness stage 2 | PASS | 18/18 testes offline de bitmap, IRQ, timer, quiesce, workqueue e `GamekeyStatus` |
| Harness exato atualizado | PASS | 24/24 contratos host Docker, ligados aos hashes atuais dos `.S` e do fonte C |
| Simbolos ELF | PASS | 24/24 simbolos de texto presentes, nenhum extra e imports indefinidos 63/63 exatos |
| Hardware | DEFERRED | nenhum ADB, fastboot, `insmod`, GPIO ou IRQ executado neste ciclo |

## Avanco do stage 5

- A montagem stock materializada de `gpio_keys_probe` foi recompilada no Docker;
  a ordem `open -> close -> gpio_keys_gpio_report_event` elimina o padding
  artificial e preserva os preambulos KCFI.
- O manifesto stock foi corrigido para apontar ao modulo preservado em
  `reference_modules/full_vendor_boot`, eliminando o caminho obsoleto
  `C:\\Users\\adriano\\...`.
- O mapa estrutural foi regenerado hash-bound para as 24 identidades; o auditor
  final reporta `static_verified`, traceabilidade 24/24 e zero warnings.
- A comparacao final confirma 24/24 corpos com opcodes, tamanhos e relocations
  exatos; KCFI confirma 24/24; os harnesses passam 29/29 testes.
- O gate Joern estrito `stage5_v2` confirma 24/24 identidades, parsing limpo e
  todas as chamadas mapeadas; dez lacunas do CPG foram explicadas por corpos
  `.S` palavra-a-palavra iguais ao Assembly stock, sem relaxar o modo estrito.

## Checkpoint offline da ROM userdebug

- A copia em `vendor_boot` e a copia em `vendor_dlkm_a` possuem os mesmos
  `42728` bytes e SHA-256
  `8cb89f5068195396a5db5fba1c51f2cf6056884dbb00f7ee8af5041ccd6f32b3`.
- As duas copias sao o mesmo artefato, nao builds independentes para analise
  diferencial.
- O ELF identifica Android clang `19.0.1` (`r536225`) e o caminho de compilacao
  `../soc-repo/drivers/vendor/common/nubia_gpio_keys/gpio_keys_nubia.c`.
- O modulo nao contem DWARF, BTF nem uma linha de comando de compilacao capaz de
  recuperar os tipos C e os limites inline perdidos.
- Variantes adicionais sustentadas por C foram compiladas isoladamente; nenhuma
  superou o Stage 4. O checkpoint completo esta em
  `PROBE_OFFLINE_CHECKPOINT_STAGE5.md`.

## Estado da funcao critica

`gpio_keys_probe` esta **exata no gate estatico**: `3600/900/164`, opcodes e
relocations ordenadas correspondentes ao stock. A equivalencia semantica ainda
nao e afirmada sem revisao independente e teste no hardware.

## Proxima ordem de trabalho

1. Obter revisao independente do mapeamento e da equivalencia estrutural.
2. Executar Joern/revisao humana de seguranca.
3. Executar validacao de hardware separada, autorizada e com rollback.
4. Manter os artefatos Docker e a atestacao vinculados ao hash do candidato.

Evidencias principais:

- `kernel_development/drivers/reconstructed/gpio_keys_nubia/STOCK_LAYOUT_STAGE4.md`
- `kernel_development/drivers/reconstructed/gpio_keys_nubia/PROBE_BASIC_BLOCK_AUDIT_STAGE4.md`
- `kernel_development/drivers/reconstructed/gpio_keys_nubia/PROBE_VARIANT_MATRIX.md`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage4_assembly_comparison.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/probe_cfg_stage4.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage4_kcfi_comparison.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage4_symbol_inventory.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage4_promoted_candidate_verification.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage5_final_driver_audit.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage5_final_full_assembly_comparison.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage5_final_kcfi_comparison.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage5_final_stage1_harness_report.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage5_final_stage2_harness_report.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/joern_gate_stage5_v2/joern_gate_summary.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/microtask_promotion_stage5_v4.json`
- `reverse_engineering/validation/reconstructed/gpio_keys_nubia/stage5_exact_host_harness_report.json`

O `.ko` curado e um **candidato parcial para analise offline**. Nao e permitido
declara-lo 100% reconstruido enquanto os gates restantes nao estiverem em
`PASS` com evidencia verificavel.

## Auditoria estática de vida útil e sincronização — 2026-11-03

O candidato `95e2b7d8352c3039e154f56f32da8f45e3a513b3706d3ebcb2269886424f14cc`
continua ligado ao módulo, fonte, mapa e snapshot Docker atuais. A comparação
hash-bound passa 24/24 funções contra o stock. No kernel alvo, o devres libera
em ordem inversa: as IRQs são sincronizadas primeiro, a ação
`gpio_keys_quiesce_key` drena timer/work depois, e o input device gerenciado é
desregistrado/liberado mais tarde. Não foi encontrado UAF estático no caminho
normal de detach ou no unwind do probe.

Permanecem abertos dois riscos potenciais herdados do stock: o cache global
`nb_key_is_need_report.stat_rec` é acessado por worker/open/resume sob locks
diferentes, e a flag `suspended` é lida pelo IRQ enquanto PM a escreve sem lock
comum. O callback shutdown chama suspend, mas não drena timer/work; isso fica
registrado como janela de shutdown, sem evidência de memória liberada nesse
callback. Nenhum desses pontos foi reproduzido em hardware.

Esta auditoria não mudou fonte nem módulo; o rebuild Docker não era necessário.
O estado permanece **STAGE5_STATIC_PARTIAL / INCOMPLETO**. Revisão humana
independente, segurança e validação GPIO no aparelho continuam pendentes.
Evidência: `reverse_engineering/validation/reconstructed/gpio_keys_nubia/attestation/lifetime_sync_risk_audit_20261103/`.
