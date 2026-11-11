# Correção da chamada em `charger_policy_demo_sts_set`

Data: 2026-11-10 (America/Sao_Paulo)

## Resultado

Corrigi uma chamada direta incorreta no candidato não promovido de `zte_charger_policy`. A relocation AArch64 agora aponta para `charger_policy_status_disable`; a função e três callbacks/setters relacionados passaram a comparação estrita de assembly. O build Docker reproduzível e o KCFI da função também passaram. O módulo completo continua sem promoção.

## Causa e correção

No candidato anterior `08cb726c96f9a822c5d3fa8acb3ead9e67abd1d79a42efcd417128af4f6e602c`, a ilha de assembly continha `BL` fixo (`0x9400000a`) sem relocation. Em `.text+0x13b0`, esse imediato saltava para `.text+0x13d8`: os quatro bytes do preâmbulo KCFI imediatamente antes de `charger_policy_demo_sts_get`, cuja entrada é `.text+0x13dc`. O stock chama `charger_policy_status_disable` na entrada Ghidra `00101378`.

O `.inc` agora usa `R_AARCH64_CALL26` para `charger_policy_status_disable`. No novo candidato, a relocation de `.text+0x13b0` aponta para `.text+0x27a4`, que o manifesto de símbolos do mesmo build identifica como a entrada de `charger_policy_status_disable`. Também alinhei `charger_policy_demo_sts_set_model` ao stock: o retorno de `sscanf` é ignorado.

## Verificações

- Sincronização do snapshot curado: dois arquivos de fonte copiados; a verificação posterior passou sem cópias adicionais. Após atualizar `STATUS.md`, uma nova sincronização de um arquivo também passou e a verificação final ficou limpa.
- Docker NX809J: dois builds limpos e independentes passaram e produziram o mesmo módulo, SHA-256 `915b27b135bdcbe1e61d6ba889fd4985e8562a652d23a773ef1faebee8496e58` (337.168 bytes).
- O assembly stock foi extraído novamente do `.ko` local hashado `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`, usando a mesma pipeline que extraiu o candidato. Comparação estrita: 4/4 PASS — `charger_policy_demo_sts_set`, `charger_policy_status_disable`, `charger_policy_notifier_switch` e `policy_psy_set_property`. Para a função corrigida passaram instruções, relocations, seção e tamanho (276 bytes).
- KCFI: `charger_policy_demo_sts_set` tem type ID `0x4cf999cb` nos dois módulos; seção e tamanho também coincidem.
- A auditoria estrita do módulo inteiro segue `incomplete_or_failed`, com `static_verified: []`. Permanecem diferenças de símbolos indefinidos e conteúdo/layout das seções runtime contra o `.ko` ativo, além da revisão do mapa incompleta.

A comparação exploratória contra a exportação assembly arquivada, cujo manifesto aponta para um caminho de stock em outra instalação, não resolveu três grupos de relocations; o relatório foi preservado em `assembly_comparison_archived_stock.json`. O resultado final usa a extração stock recém-gerada e hash-bound do repositório. A tentativa inicial da auditoria com raiz Docker incorreta também foi preservada como `driver_audit.json` / `.md`.

## Estado do módulo e limites

O novo `.ko` é mantido como `fresh_candidate_unpromoted.ko`. O módulo ativo no repositório e no snapshot Docker permanece em `2f87a9fa003ec14c8d2a4ab42f6cea598b99460cae13363c072ec05699093cec` (331.368 bytes), e o mapa continua vinculado a esse hash. Nenhum teste de host ou no smartphone foi executado neste lote. Esta evidência comprova a correção do callsite selecionado, não a conclusão do driver.

O relatório `driver_audit.json` registra uma invocação inicial com a raiz `curated` incorreta, que terminou antes de compilar. A auditoria efetiva está em `driver_audit_canonical.json` e usa a raiz correta.

## Arquivos de evidência

- `attestation.json`: hashes e resultados hash-bound.
- `driver_audit_canonical.json` / `.md`: auditoria integral e recibos dos dois builds Docker.
- `assembly_comparison.json`: comparação estrita das quatro funções.
- `stock_assembly/manifest.json` e `candidate_assembly/manifest.json`: extrações locais hash-bound do mesmo stock e do candidato.
- `previous_candidate_demo_sts_set.asm`: assembly do candidato anterior com a chamada fixa incorreta.
- `kcfi_stock.json`, `kcfi_candidate.json`, `kcfi_comparison.json`: extração e comparação do type ID.
- `candidate_assembly/manifest.json`: posições de função e assembly/relocations do novo candidato.
- `fresh_candidate_unpromoted.ko`: módulo recém-compilado, não promovido.
- `source_sync_*.json`: dry-runs, aplicações e pós-verificações do snapshot curado.
