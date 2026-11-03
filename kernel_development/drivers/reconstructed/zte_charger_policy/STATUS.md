# Status do Driver `zte_charger_policy`

Estado: gates 0-7 foram aprovados historicamente para um artefato anterior; o modulo atual aguarda revalidacao hash-bound. Gates 8-10 incompletos.

## Artefato atual

- Arquivo: `zte_charger_policy.ko`
- SHA-256: 1dc77ef1d5755fb218d9fcffefd6b078ca0ffcca679cffa6aff4029c184442c4
- Tamanho: 344928 bytes
- Kernel alvo: `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`

## Evidencias aprovadas

- Build limpa e reproduzivel em Docker: PASS.
- Imports, aliases, namespaces e KMI: PASS.
- Ghidra: inventario e multiplicidade de chamadas `38/38`.
- KCFI: `35/35` assinaturas utilizaveis; tres funcoes diretas possuem N/A explicito.
- Layout `struct charger_policy_info`: 544 bytes, protegido por `static_assert`.
- Harness de host: duas builds e execucoes reproduziveis, cobertura `38/38`.
- Microtarefas: `38/38` atestadas e hashes recalculados.

## Correcoes relevantes

- Removido alias OF ausente no modulo stock.
- Recuperada a tabela stock de quatro estados pelas relocacoes ELF.
- Corrigida a consulta de estado/temperatura no handler de timeout.
- Restaurada a chamada indireta dos handlers com assinatura KCFI correta.
- Corrigidos os tipos `const void *` dos callbacks `zte_misc`.
- Corrigidos os atrasos de workqueue e o reset de `running_discharging`.
- Adicionados caminhos de erro e logs observados no pseudocodigo stock.

## Limites

Nao existe validacao supervisionada deste candidato no smartphone. O modulo nao deve ser chamado de "100% reconstruido" e nao deve ser carregado automaticamente. Ainda faltam revisao independente (gate 8), teste controlado em hardware (gate 9) e promocao final (gate 10).

Consulte `validation/zte_charger_policy/cycle_validation.json` e o guia de harness antes de qualquer teste fisico.

## Auditoria de vida util/sincronizacao — 2026-11-03

O probe agenda probe_work para 5 segundos depois; falhas podem reagendar esse trabalho. A remocao desregistra o notifier e libera policy, mas nao cancela nem drena probe_work ou o timeout_work recorrente e nao destroi suas workqueues. Um unbind durante a janela inicial ou durante retry pode deixar um callback acessar policy apos devm_kfree; o caminho de timeout tem o mesmo risco. O pseudocodigo Ghidra e o assembly stock confirmam a mesma ordem de agendamento e liberacao. E um risco estatico herdado do stock; nenhuma falha foi reproduzida em runtime.

O modulo atual e o snapshot Docker curado compartilham SHA-256 1dc77ef1d5755fb218d9fcffefd6b078ca0ffcca679cffa6aff4029c184442c4 (344928 bytes), mas o hash anterior registrado neste status era diferente. As atestacoes de gates anteriores nao sao transferidas automaticamente para esta imagem; uma revalidacao completa do binario atual continua pendente. Veja a auditoria de vida util e sincronizacao (../../../../reverse_engineering/validation/reconstructed/zte_charger_policy/attestation/lifetime_sync_risk_audit_20261103/README.md).
