# Status do Driver `zte_charger_policy`

Estado: `static_verified` (gates 0-7 PASS; gates 8-10 incompletos).

## Artefato atual

- Arquivo: `zte_charger_policy.ko`
- SHA-256: `e603c3f553c4d4375655dc7c9afe2595c449999c15e60acd5efdd2206309e927`
- Tamanho: `301184` bytes
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
