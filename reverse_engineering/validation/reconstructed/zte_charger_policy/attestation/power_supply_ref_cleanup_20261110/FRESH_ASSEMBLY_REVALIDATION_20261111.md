# Revalidação integral do candidato fresh — 2026-11-11

> **Supersedido para identificar o build atual.** Esta comparação usa o binário `4465…`, associado ao snapshot anterior `494733…`; esse snapshot registra C `8c2efe…` e `charger_policy_demo_sts_set_exact.inc` `9ef177…`. A fonte sincronizada atual é C `c3da11…` e ilha `688a94…`. O validador canônico refez dois builds da fonte atual em `915b…`, e uma extração nova comparou esse binário: 30/38 exatas. Use [a reconciliação atual](current_build_reconciliation_20261111.json) e a [comparação atual](current_build_assembly_comparison_20261111.json); os resultados abaixo permanecem como histórico do artefato `4465…`.

Reextraí e comparei as 38 identidades do `.ko` fresh mais recente do lote de cleanup, SHA-256 `4465ab8dc3cc09335a0f361ce28e2d6f3fa1602e77d0d89960b647fc5d439760`. A fonte atual e o snapshot curado Docker têm o mesmo SHA de fonte C e o mesmo manifesto de 47 arquivos.

O resultado estrito é **29/38 exatas**. As nove diferenças coincidem com o mapa: seis funções já classificadas como `reviewed` e os três caminhos de liberação de referência ainda em `candidate_under_static_validation`. Nas três funções do cleanup, seção e relocations coincidem; opcodes e tamanho divergem pelo `put` adicional no caminho de erro. Os detalhes por identidade estão em `fresh_candidate_full_assembly_comparison_revalidated_20261111.json`.

Na análise feita à época, `915b…` foi tratado como candidato anterior e `4465…` como posterior. A reconciliação posterior da fonte mostrou que essa classificação não representa o build da fonte atual: `915b…` é o hash reproduzido pelo validador canônico depois da sincronização atual, enquanto `4465…` vem do snapshot anterior. O `.ko` ativo `2f87…` continua sem substituição.

Na data desta revalidação não houve novo build, harness ou teste no aparelho. Uma rodada posterior produziu a evidência atual descrita no aviso acima. O estado global continua `incomplete_or_failed`, sem `static_verified` e sem promoção.

## Gate de microtarefas

`verify_driver_microtasks.py --driver zte_charger_policy --curated-root kernel_development/drivers/reconstructed --evidence-root reverse_engineering/validation/reconstructed --git-index` falhou em 38/38 tarefas, com 152 falhas. Os três SHA-256 declarados por tarefa (`compile`, `kcfi`, `test`) não correspondem aos arquivos atualmente versionados; assim, nenhum desses papéis foi aceito e todas as tarefas ficaram sem os três papéis obrigatórios. O resultado completo está em `reverse_engineering/validation/reconstructed/zte_charger_policy/microtask_audit.json`.

Esse gate não muda a comparação independente de assembly 29/38 deste candidato e nenhuma função foi promovida neste recheck. Os estados `PASS` no manifesto `MICROTASKS.json` não são confirmados pelos recibos hash-bound atuais; é necessário regenerar ou revalidar esses recibos antes de usá-los como evidência.
