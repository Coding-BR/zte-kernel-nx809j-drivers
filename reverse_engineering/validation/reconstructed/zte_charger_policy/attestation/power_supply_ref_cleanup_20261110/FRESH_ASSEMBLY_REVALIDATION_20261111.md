# Revalidação integral do candidato fresh — 2026-11-11

Reextraí e comparei as 38 identidades do `.ko` fresh mais recente do lote de cleanup, SHA-256 `4465ab8dc3cc09335a0f361ce28e2d6f3fa1602e77d0d89960b647fc5d439760`. A fonte atual e o snapshot curado Docker têm o mesmo SHA de fonte C e o mesmo manifesto de 47 arquivos.

O resultado estrito é **29/38 exatas**. As nove diferenças coincidem com o mapa: seis funções já classificadas como `reviewed` e os três caminhos de liberação de referência ainda em `candidate_under_static_validation`. Nas três funções do cleanup, seção e relocations coincidem; opcodes e tamanho divergem pelo `put` adicional no caminho de erro. Os detalhes por identidade estão em `fresh_candidate_full_assembly_comparison_revalidated_20261111.json`.

Isso resolve a ambiguidade entre dois módulos fresh citados em relatórios anteriores: `915b…` é o candidato da etapa de relocation de `demo_sts`; `4465…` é o candidato posterior que inclui o cleanup de referências. A revalidação atual usa apenas `4465…`. O `.ko` ativo `2f87…` não foi substituído.

Nenhuma fonte de produção mudou; não houve novo build, harness ou teste no aparelho. O estado global permanece `incomplete_or_failed`, sem `static_verified` e sem promoção. Consulte [audit JSON](fresh_candidate_full_assembly_revalidation_20261111.json) para os hashes e gates restantes.

## Gate de microtarefas

`verify_driver_microtasks.py --driver zte_charger_policy --curated-root kernel_development/drivers/reconstructed --evidence-root reverse_engineering/validation/reconstructed --git-index` falhou em 38/38 tarefas, com 152 falhas. Os três SHA-256 declarados por tarefa (`compile`, `kcfi`, `test`) não correspondem aos arquivos atualmente versionados; assim, nenhum desses papéis foi aceito e todas as tarefas ficaram sem os três papéis obrigatórios. O resultado completo está em `reverse_engineering/validation/reconstructed/zte_charger_policy/microtask_audit.json`.

Esse gate não muda a comparação independente de assembly 29/38 deste candidato e nenhuma função foi promovida neste recheck. Os estados `PASS` no manifesto `MICROTASKS.json` não são confirmados pelos recibos hash-bound atuais; é necessário regenerar ou revalidar esses recibos antes de usá-los como evidência.
