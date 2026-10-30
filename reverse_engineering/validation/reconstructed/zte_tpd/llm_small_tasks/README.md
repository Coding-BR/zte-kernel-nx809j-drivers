# Pacotes para LLM pequena

Esta pasta contem somente as quatro tarefas autorizadas pela rota
`BOUNDED_LLM_WITH_INDEPENDENT_REVIEW` do plano `LLM_DELEGATION_PLAN.json`.

Cada diretório de tarefa contém:

- `PROMPT.md`: instruções copiáveis para a LLM implementadora;
- `CONTRACT.md`: contrato e superfície observada;
- `TASK.json`: hashes e limites da tarefa;
- `SUBMISSION_TEMPLATE.json`: formato obrigatório da resposta;
- `candidate/`: copia do arquivo candidato atual;
- `evidence/`: pseudocódigo, P-Code e Assembly stock hashados.

A LLM pode começar por MP0-MP4 sem editar C. A edição MP7 só pode ser proposta
no arquivo permitido pelo pacote e exige revisão independente, build, KCFI,
Joern, harness, comparação de Assembly e atestação. Nenhum conteúdo desta pasta
prova equivalência ou autoriza teste no smartphone.

Para regenerar os pacotes depois de qualquer alteração no plano:

```powershell
python .\workspace_tools\reconstruction_pipeline\generate_llm_task_packets.py `
  --plan .\reverse_engineering\validation\reconstructed\zte_tpd\LLM_DELEGATION_PLAN.json `
  --output .\reverse_engineering\validation\reconstructed\zte_tpd\llm_small_tasks
```
