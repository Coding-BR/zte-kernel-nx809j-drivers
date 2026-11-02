# Contrato de trabalho: 238_syna_tcm_testing_0001_check_device_id

- Funcao stock: `syna_tcm_testing_0001_check_device_id@0011d6e4`
- Arquivo candidato permitido: `syna_tcm_testing_0001_check_device_id.c`
- Corpo stock: `180` bytes
- Risco de roteamento: `LOW` / score `8`
- Rota: `BOUNDED_LLM_WITH_INDEPENDENT_REVIEW`
- Implementador minimo: `L2_BOUNDED_CODE`
- Revisor minimo: `L3_ADVANCED`

## Superficie observada

- Chamadas diretas: `2`
- Chamadas indiretas: `0`
- Branches condicionais: `6`
- Loads: `10`
- Stores: `8`
- Retornos no pseudocodigo: `2`
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
