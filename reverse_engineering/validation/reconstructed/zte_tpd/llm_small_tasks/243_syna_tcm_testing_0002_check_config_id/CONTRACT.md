# Contrato de trabalho: 243_syna_tcm_testing_0002_check_config_id

- Funcao stock: `syna_tcm_testing_0002_check_config_id@0011da70`
- Arquivo candidato permitido: `syna_tcm_testing_0002_check_config_id.c`
- Corpo stock: `120` bytes
- Risco de roteamento: `LOW` / score `4`
- Rota: `BOUNDED_LLM_WITH_INDEPENDENT_REVIEW`
- Implementador minimo: `L2_BOUNDED_CODE`
- Revisor minimo: `L3_ADVANCED`

## Superficie observada

- Chamadas diretas: `1`
- Chamadas indiretas: `0`
- Branches condicionais: `5`
- Loads: `4`
- Stores: `2`
- Retornos no pseudocodigo: `3`
- Offsets candidatos: `1`

## Ordem de prova

1. MP0: identidade e hashes.
2. MP1: chamadas, assinatura e retorno.
3. MP2: loads/stores, limites e efeitos.
4. MP3: branches, erros e cleanup.
5. MP4: oracle de testes host-only.
6. MP7: patch mínimo, somente após MP0-MP4 aprovadas.
7. MP8: revisão por agente diferente; qualquer divergência bloqueia.

Este contrato orienta a tarefa; nao substitui a evidencia nem concede PASS.
