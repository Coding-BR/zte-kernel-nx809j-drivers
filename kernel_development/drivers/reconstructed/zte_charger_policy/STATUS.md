# Status do Driver `zte_charger_policy`

## Estado atual — lote `demo_sts_call_relocation_20261110`

- A revisao do candidato anterior encontrou uma chamada `BL` fixa em `charger_policy_demo_sts_set`: no `.ko` nao promovido `08cb726c96f9a822c5d3fa8acb3ead9e67abd1d79a42efcd417128af4f6e602c`, o salto em `.text+0x13b0` terminava em `.text+0x13d8`, que e o preambulo KCFI imediatamente anterior a `charger_policy_demo_sts_get` em `.text+0x13dc`, e nao `charger_policy_status_disable`.
- A ilha assembly agora declara `R_AARCH64_CALL26, charger_policy_status_disable`. No novo candidato, a relocation no callsite `.text+0x13b0` aponta para `.text+0x27a4`, entrada de `charger_policy_status_disable`. O modelo C tambem passou a ignorar o retorno de `sscanf`, como faz o stock.
- O snapshot curado do Docker canonico foi sincronizado e verificado. Duas builds limpas produziram o mesmo `.ko`: SHA-256 `915b27b135bdcbe1e61d6ba889fd4985e8562a652d23a773ef1faebee8496e58` (337.168 bytes).
- Assembly estrito: 4/4 funcoes passam (`charger_policy_demo_sts_set`, `charger_policy_status_disable`, `charger_policy_notifier_switch` e `policy_psy_set_property`). KCFI de `charger_policy_demo_sts_set`: type ID `0x4cf999cb` igual ao stock; tamanho tambem coincide.
- O candidato permanece nao promovido. O `.ko` ativo e o mapa continuam vinculados ao SHA-256 `2f87a9fa003ec14c8d2a4ab42f6cea598b99460cae13363c072ec05699093cec` (331.368 bytes).
- A auditoria integral ainda retorna `static_verified: []`: imports indefinidos e conteudo/layout runtime diferem do candidato ativo; a revisao do mapa segue incompleta. Nenhum teste de host ou no smartphone foi executado neste lote.
- Evidencias: `reverse_engineering/validation/reconstructed/zte_charger_policy/attestation/demo_sts_call_relocation_20261110/README.md` e `attestation.json`.

## Correção da comparação de assembly — 2026-11-11

- A contagem anterior de 3/38 exatas foi produzida com um manifesto stock que apontava para um caminho absoluto inexistente neste worktree. Sem carregar o ELF stock, o comparador não resolvia offsets de `.rodata`; 29 funções tiveram falsos negativos somente nas relocations.
- O manifesto portátil `reverse_engineering/validation/reconstructed/zte_charger_policy/offline_static/stock_assembly_resolved/manifest.json` mantém os 38 corpos originais e os liga ao módulo stock versionado, SHA-256 `0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c`.
- No `.ko` ativo `2f87a9fa...`, a comparação rebased passa em 32/38 funções; falham `charger_policy_demo_sts_set` e cinco funções de probe/remove/timeout. O mapa agora contém 29 entradas `promoted_offline_exact`, seis `reviewed` não exatas e três `candidate_under_static_validation`.
- No candidato fresh não promovido `915b27b1...`, passam 30/38; falham três funções de cleanup de referência e cinco funções de ciclo de vida. A correção de relocation em `charger_policy_demo_sts_set` agora passa. Os três caminhos de cleanup permanecem sem equivalência semântica estabelecida.
- A auditoria ELF confirma que o delta KMI do candidato fresh é deliberado: ausentes `devm_kfree` e `devm_power_supply_register`; novos `alarm_cancel`, `cancel_delayed_work_sync`, `destroy_workqueue`, `power_supply_register`, `power_supply_unregister`, `zte_misc_unregister_callback` e `alt_cb_patch_nops`. Este último é referenciado por `.rela.altinstructions` gerada para os atomics do gate de teardown. Portanto `undefined_symbols_match` segue falso.
- A auditoria integral do driver continua incompleta (`static_verified: []`); o candidato fresh não foi promovido, a revisão independente e a validação física seguem pendentes. Não houve alteração de C, novo build, teste de host nem teste no aparelho neste lote; o Docker foi usado para as evidências ELF/assembly e para sincronizar os documentos/mapa.
- Evidências hash-bound: `reverse_engineering/validation/reconstructed/zte_charger_policy/attestation/assembly_relocation_rebind_20261111/` e `attestation/kmi_delta_root_cause_20261111/`.

## Auditoria complementar — concorrencia dos campos de estado — 2026-11-11

- A auditoria estatica encontrou acessos sem sincronizacao comum entre setters de controle/propriedade e timeout_work: status (0x1ec), last_status (0x1f0), policy_disabled (0x1e8), timeout_seconds_runtime (0x1f4), force_discharging_sec (0x1f8) e demo_sts (0x219). O worker e os handlers de estado leem e/ou atualizam esses campos; alguns setters tambem os escrevem e enfileiram trabalho.
- A evidencia Ghidra e o assembly stock dessas funcoes mostram loads/stores ordinarios; a busca dos corpos e das chamadas nao encontrou locks, operacoes exclusivas/atomicas ou barreiras cobrindo esses acessos. Isto confirma o comportamento sem lock no stock, mas nao reproduz uma intercalacao nem demonstra corrupcao em runtime.
- A fonte reconstruida e os candidatos ainda nao promovidos aplicam o gate atomico runtime_stopping e a drenagem de teardown para a corrida de vida util descrita no lote lifetime_sync_atomic_gate_20261110. O .ko ativo continua antigo; mesmo na fonte atual, o gate nao serializa as transicoes normais desses campos.
- A fonte atual coincide com a fonte do snapshot Docker curado (SHA-256 c3da1145c1f06fe42e7bf00972ff1bcab552ac58fb5c3f9919f018123827483b). O .ko ativo e ambos os mapas ainda apontam para 2f87a9fa...; o candidato 915b27b1... continua nao promovido. Como esta revisao nao alterou codigo, nao houve novo build Docker nem teste de host/aparelho.
- Nenhum lock foi adicionado: STATIC_RECONSTRUCTION_PROTOCOL.md proibe inferir locks sem evidencia do stock. Registrar como risco herdado do comportamento stock; qualquer mitigacao exige uma trilha de hardening separada e nao deve ser apresentada como equivalencia estatica.
- Resultado, matriz de acessos e hashes: reverse_engineering/validation/reconstructed/zte_charger_policy/attestation/state_field_sync_audit_20261111/.

## Lote anterior — `lifetime_sync_atomic_gate_20261110`

- Fonte atual: SHA-256 `b4888b64d1533a1badf93c384b2df722455730a83bd258124b9d3d15dd908513`.
- A revisão encontrou uma corrida entre setters sysfs da power supply e a drenagem inicial de `timeout_work`: um callback de propriedade já ativo pode enfileirar trabalho depois do primeiro cancelamento. O unregister da power supply e a segunda drenagem permanecem necessários.
- `runtime_stopping` passou a `atomic_t` no espaço de quatro bytes já reservado do struct: offset 532 e tamanho total 544 permanecem iguais. Os handlers usam `atomic_cmpxchg(0, 0)` como leitura ordenada e o teardown usa `atomic_xchg`; a mudança não altera as ilhas de assembly stock não relacionadas.
- A sincronização para o snapshot curado do Docker NX809J foi aplicada. Duas builds limpas produziram o mesmo candidato não promovido: SHA-256 `08cb726c96f9a822c5d3fa8acb3ead9e67abd1d79a42efcd417128af4f6e602c` (337.144 bytes). O artefato está em `reverse_engineering/validation/reconstructed/zte_charger_policy/attestation/lifetime_sync_atomic_gate_20261110/fresh_candidate_unpromoted.ko`.
- O `.ko` ativo continua no SHA-256 `2f87a9fa003ec14c8d2a4ab42f6cea598b99460cae13363c072ec05699093cec` (331.368 bytes); o mapa continua vinculado a esse candidato ativo. O build novo não foi promovido.
- KCFI dos cinco símbolos públicos: IDs/tipos iguais ao stock (PASS; tamanho do corpo ignorado). Comparação de assembly dos cinco corpos afetados: seções correspondem, mas opcodes e tamanhos diferem intencionalmente; relocations correspondem em 1/5. O gate estrito de assembly é FAIL 5/5 e não declara equivalência.
- Auditoria estrita do módulo: build reproduzível, identidade do kernel/toolchain, `vermagic`, aliases, namespaces e rastreabilidade passam. Paridade de símbolos indefinidos, conteúdo/layout runtime entre candidato ativo antigo e build novo e revisão do mapa permanecem incompletos; o relatório retorna `static_verified: []`.
- Harness de host, teste no smartphone, carregamento do módulo e revisão humana independente não foram executados. O driver permanece incompleto e não deve ser descrito como reconstruído/concluído.
- Evidências deste lote: `reverse_engineering/validation/reconstructed/zte_charger_policy/attestation/lifetime_sync_atomic_gate_20261110/README.md` e `attestation.json`.

## Lote anterior — `power_supply_ref_cleanup_20261110`

- Fonte atual: SHA-256 `8c2efe95c8d244873a49283441cacaa8ea9f0cff804b9cddb810fa3e58a6aa51`.
- Candidato `.ko` ativo continua no SHA-256 `2f87a9fa003ec14c8d2a4ab42f6cea598b99460cae13363c072ec05699093cec` (331.368 bytes), anterior à fonte atual; não foi substituído.
- O candidato recém-compilado, ainda não promovido, está em `reverse_engineering/validation/reconstructed/zte_charger_policy/attestation/power_supply_ref_cleanup_20261110/fresh_candidate_unpromoted.ko`: SHA-256 `4465ab8dc3cc09335a0f361ce28e2d6f3fa1602e77d0d89960b647fc5d439760` (331.704 bytes). As duas compilações do protocolo e as duas do snapshot Docker canônico produziram o mesmo hash; identidade kernel/toolchain e `vermagic` NX809J passaram.
- Corrigidos os caminhos de erro nas entradas stock `00101b04`, `00101bd8` e `00102020`: cada chamada que obteve referência agora a libera quando `get_property` falha; o errno/log e o retorno stock são preservados.
- Joern estrito e slices: PASS. KCFI: os IDs/tipos coincidem com tamanho de corpo ignorado; os tamanhos aumentaram pelos caminhos de cleanup. Assembly estrito: FAIL 3/3 em opcodes/tamanho de símbolo, com seção e relocations correspondentes.
- A paridade KMI do módulo permanece incompleta: seis imports inesperados e dois ausentes, iguais ao delta de hardening já descrito no baseline. `power_supply_put` e `zte_power_supply_put` já eram imports usados pelos caminhos stock de sucesso; a correção não adiciona novos imports.
- Equivalência semântica com o stock não estabelecida, pois a correção remove intencionalmente o vazamento. Revisão independente, harness de host e teste no smartphone permanecem pendentes. Nenhum módulo foi carregado no aparelho.
- Gates e hashes: `reverse_engineering/validation/reconstructed/zte_charger_policy/attestation/power_supply_ref_cleanup_20261110/README.md` e `reference_lifetime_review.json`.

## Baseline anterior à correção — lote `lifetime_sync_hardening_20261110`

- Fonte naquele baseline: SHA-256 `ef0ff259425e6851d48f0be467eff7c004f0d13ea2aa3fec35ab60c18c98091d`.
- Candidato daquele baseline: SHA-256 `2f87a9fa003ec14c8d2a4ab42f6cea598b99460cae13363c072ec05699093cec` (331368 bytes), sincronizado entre o repositorio e o snapshot curado do Docker. O mapa declara o mesmo hash.
- Docker canonico NX809J: duas builds limpas produziram o mesmo hash do candidato; identidade do kernel/toolchain, ELF AArch64 relocavel, vermagic do alvo, aliases, namespaces, conteudo das secoes runtime e modinfo passaram.
- CRC de KMI corrigido para a integração: o módulo agora importa `zte_misc_register_callback` com `0x61afab7e`, igual ao export do candidato `zte_misc` (o binário anterior esperava o CRC stock `0x9bec046c`).
- O validador permanece `incomplete_or_failed` somente em `undefined_symbols_match`: o hardening remove `devm_kfree` e `devm_power_supply_register` e importa `alarm_cancel`, `cancel_delayed_work_sync`, `destroy_workqueue`, `power_supply_register`, `power_supply_unregister` e `zte_misc_unregister_callback`. Essa diferenca intencional ainda impede declarar o candidato estaticamente equivalente ao stock.
- Assembly estrito: 3/38 funcoes passam; 35 permanecem `reviewed`, sem alegacao de equivalencia. Seis falham tambem em instrucoes/tamanho e 29 em relocalizacoes.
- KCFI: os cinco IDs comparados para as funcoes de probe, remove, alarme e timeout correspondem ao stock.
- O teardown agora marca `runtime_stopping`, desregistra notifier/callbacks, cancela alarme e drena `timeout_work` enquanto `policy_psy` permanece vivo; remove a fonte de alimentacao e faz uma segunda drenagem para cobrir setters que ja estavam ativos. A inicializacao publica o notifier por ultimo, depois de workqueue e wake source estarem prontos.
- O retry reutiliza a flag de parada e nao importa `enable_delayed_work`, ausente no `Module.symvers` fixado. O harness de host nao foi reexecutado para este novo candidato; o recibo de 2026-11-04 nao e transferido.
- Validacao dinamica/carregamento no smartphone: nao executados. O ADB desconectou durante a inspecao; nenhum candidato foi carregado. Revisao independente permanece pendente.

Recibos hash-bound: `reverse_engineering/validation/reconstructed/zte_charger_policy/attestation/lifetime_sync_hardening_20261110/README.md`, `attestation.json`, `docker_validation.json`, `assembly_comparison.json`, `kcfi_comparison.json` e `module_version_crc_audit.json`. Os recibos `source_sync_kmi_fix*.json` registram a sincronização com o Docker canônico.

## Revisao suplementar — retry de `probe_work` — 2026-11-10

A implementacao do kernel fixado mostra que `cancel_delayed_work_sync()` desabilita temporariamente o trabalho, espera a execucao terminar e o reabilita. A fonte reconstruida agenda `probe_work` no probe inicial e, em falha, pelo proprio worker; nao foi encontrado outro produtor. A suspeita de que o retry ativo escaparia durante essa drenagem nao se confirmou. Nenhuma alteracao de fonte ou candidato resultou daquela revisao de retry. Os hashes citados ali pertencem ao baseline anterior à correção de power_supply_ref_cleanup_20261110. Evidencia: `reverse_engineering/validation/reconstructed/zte_charger_policy/attestation/retry_teardown_race_review_20261110/`.

## Lote anterior — `lifetime_sync_hardening_20261104` (substituido)

O candidato anterior tinha SHA-256 `37ec41388d9e6a971f15e4222e6685a926b362f7a5eff36eddd8128d5a865f6a`. Seus recibos e o harness de host permanecem em `reverse_engineering/validation/reconstructed/zte_charger_policy/attestation/lifetime_sync_hardening_20261104/`; nao os atribuir ao candidato atual.

As secoes seguintes preservam historicos de candidatos anteriores. Os seus hashes e gates nao devem ser atribuidos ao binario atual. Revisao independente, paridade estrita de imports e validacao em hardware continuam incompletas.

## Artefato anterior ao lote

- Arquivo: `zte_charger_policy.ko`
- SHA-256: 1dc77ef1d5755fb218d9fcffefd6b078ca0ffcca679cffa6aff4029c184442c4
- Tamanho: 344928 bytes
- Kernel alvo: `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`

## Evidencias aprovadas para o candidato anterior

- Build limpa e reproduzivel em Docker: PASS.
- Imports, aliases, namespaces e KMI: PASS.
- Ghidra: inventario e multiplicidade de chamadas `38/38`.
- KCFI: `35/35` assinaturas utilizaveis; tres funcoes diretas possuem N/A explicito.
- Layout `struct charger_policy_info`: 544 bytes, protegido por `static_assert`.
- Harness de host: duas builds e execucoes reproduziveis, cobertura `38/38`.
- Microtarefas: `38/38` atestadas e hashes recalculados.

## Correcoes historicas relevantes

- Removido alias OF ausente no modulo stock.
- Recuperada a tabela stock de quatro estados pelas relocacoes ELF.
- Corrigida a consulta de estado/temperatura no handler de timeout.
- Restaurada a chamada indireta dos handlers com assinatura KCFI correta.
- Corrigidos os tipos `const void *` dos callbacks `zte_misc`.
- Corrigidos os atrasos de workqueue e o reset de `running_discharging`.
- Adicionados caminhos de erro e logs observados no pseudocodigo stock.

## Limites registrados para o candidato anterior

Nao existe validacao supervisionada deste candidato no smartphone. O modulo nao deve ser chamado de "100% reconstruido" e nao deve ser carregado automaticamente. Ainda faltam revisao independente (gate 8), teste controlado em hardware (gate 9) e promocao final (gate 10).

Consulte `validation/zte_charger_policy/cycle_validation.json` e o guia de harness antes de qualquer teste fisico.

## Auditoria de vida util/sincronizacao — 2026-11-03

O probe agenda probe_work para 5 segundos depois; falhas podem reagendar esse trabalho. A remocao desregistra o notifier e libera policy, mas nao cancela nem drena probe_work ou o timeout_work recorrente e nao destroi suas workqueues. Um unbind durante a janela inicial ou durante retry pode deixar um callback acessar policy apos devm_kfree; o caminho de timeout tem o mesmo risco. O pseudocodigo Ghidra e o assembly stock confirmam a mesma ordem de agendamento e liberacao. E um risco estatico herdado do stock; nenhuma falha foi reproduzida em runtime.

Naquele retrato de 2026-11-03, o modulo e o snapshot Docker curado compartilhavam SHA-256 1dc77ef1d5755fb218d9fcffefd6b078ca0ffcca679cffa6aff4029c184442c4 (344928 bytes), mas o hash anterior registrado neste status era diferente. As atestacoes de gates anteriores nao sao transferidas automaticamente para esta imagem; uma revalidacao completa do binario atual continua pendente. Veja a auditoria de vida util e sincronizacao (../../../../reverse_engineering/validation/reconstructed/zte_charger_policy/attestation/lifetime_sync_risk_audit_20261103/README.md).
