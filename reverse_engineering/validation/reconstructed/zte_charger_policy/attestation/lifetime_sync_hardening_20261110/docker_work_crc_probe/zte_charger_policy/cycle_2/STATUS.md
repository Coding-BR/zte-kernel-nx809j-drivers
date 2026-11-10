# Status do Driver `zte_charger_policy`

## Estado atual — lote `lifetime_sync_hardening_20261110`

- Fonte atual: SHA-256 `ef0ff259425e6851d48f0be467eff7c004f0d13ea2aa3fec35ab60c18c98091d`.
- Candidato: SHA-256 `a94a1e26ae3b424cc135b1ab0e3e378c4778dcd996a2b1e6ea64fd349862adbd` (331368 bytes), sincronizado entre o repositorio e o snapshot curado do Docker. O mapa declara o mesmo hash.
- Docker canonico NX809J: duas builds limpas produziram o mesmo hash do candidato; identidade do kernel/toolchain, ELF AArch64 relocavel, vermagic do alvo, aliases, namespaces, conteudo das secoes runtime e modinfo passaram.
- O validador permanece `incomplete_or_failed` somente em `undefined_symbols_match`: o hardening remove `devm_kfree` e `devm_power_supply_register` e importa `alarm_cancel`, `cancel_delayed_work_sync`, `destroy_workqueue`, `power_supply_register`, `power_supply_unregister` e `zte_misc_unregister_callback`. Essa diferenca intencional ainda impede declarar o candidato estaticamente equivalente ao stock.
- Assembly estrito: 3/38 funcoes passam; 35 permanecem `reviewed`, sem alegacao de equivalencia. Seis falham tambem em instrucoes/tamanho e 29 em relocalizacoes.
- KCFI: os cinco IDs comparados para as funcoes de probe, remove, alarme e timeout correspondem ao stock.
- O teardown agora marca `runtime_stopping`, desregistra notifier/callbacks, cancela alarme e drena `timeout_work` enquanto `policy_psy` permanece vivo; remove a fonte de alimentacao e faz uma segunda drenagem para cobrir setters que ja estavam ativos. A inicializacao publica o notifier por ultimo, depois de workqueue e wake source estarem prontos.
- O retry reutiliza a flag de parada e nao importa `enable_delayed_work`, ausente no `Module.symvers` fixado. O harness de host nao foi reexecutado para este novo candidato; o recibo de 2026-11-04 nao e transferido.
- Validacao dinamica/carregamento no smartphone: nao executados. O ADB desconectou durante a inspecao; nenhum candidato foi carregado. Revisao independente permanece pendente.

Recibos hash-bound: `reverse_engineering/validation/reconstructed/zte_charger_policy/attestation/lifetime_sync_hardening_20261110/README.md`, `attestation.json`, `docker_validation.json`, `assembly_comparison.json` e `kcfi_comparison.json`.

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

O modulo atual e o snapshot Docker curado compartilham SHA-256 1dc77ef1d5755fb218d9fcffefd6b078ca0ffcca679cffa6aff4029c184442c4 (344928 bytes), mas o hash anterior registrado neste status era diferente. As atestacoes de gates anteriores nao sao transferidas automaticamente para esta imagem; uma revalidacao completa do binario atual continua pendente. Veja a auditoria de vida util e sincronizacao (../../../../reverse_engineering/validation/reconstructed/zte_charger_policy/attestation/lifetime_sync_risk_audit_20261103/README.md).
