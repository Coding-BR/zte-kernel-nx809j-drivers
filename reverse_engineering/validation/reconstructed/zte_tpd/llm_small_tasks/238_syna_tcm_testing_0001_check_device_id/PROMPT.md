# Tarefa L2: 238_syna_tcm_testing_0001_check_device_id

Voce e o implementador de uma microtarefa de reconstrucao do kernel Android
GKI. Trabalhe somente na funcao `syna_tcm_testing_0001_check_device_id`. O pacote representa evidencia local
do NX809J; nao use internet, outro aparelho, outro driver ou intuicao para
preencher lacunas.

## Entrada autorizada

- `evidence/decompiled.c` (decompiled_c, SHA-256 `10004b99cd1f752d37166649cb2dce6c3a8f4b0c6f5813f35dc076a71995d74a`)
- `evidence/pcode.jsonl` (pcode, SHA-256 `a405bba78ba9b928c6ce9a9916f90f173f72dfe86e50de9fb44209c0f9d8b152`)
- `evidence/assembly.asm` (assembly, SHA-256 `3705fd4982f619ff65f65a7948d8aa9d3c72432aa3b534f924880d3475158053`)

O arquivo candidato atual esta em `candidate/syna_tcm_testing_0001_check_device_id.c`. Ele pode conter uma
tentativa anterior nao atestada. Preserve qualquer comportamento ja provado e
proponha somente a menor alteracao necessaria.

## Limites obrigatorios

- Edite somente `candidate/syna_tcm_testing_0001_check_device_id.c`.
- Nao altere headers, Makefile, ABI, nomes exportados, outras funcoes,
  configuracao, testes ou arquivos de atestacao.
- Nao invente structs, offsets, tipos, erros, locks ou chamadas que nao estejam
  sustentados pelo P-Code, Assembly ou pseudocodigo.
- Nao declare equivalencia, PASS ou funcionamento no smartphone.
- Se houver qualquer contradicao, pare e devolva `BLOCKED` com a evidencia e o
  endereco/localizador correspondente.
- Mantenha cleanup, tratamento de ponteiros nulos e limites exatamente conforme
  a evidencia observada. Nao introduza alocacao, loop ou log novo sem prova.

## Entrega

Produza apenas:

1. um patch unificado para `candidate/syna_tcm_testing_0001_check_device_id.c`;
2. uma copia preenchida de `SUBMISSION_TEMPLATE.json`, salva como
   `submission.json`, com `task_id`, hashes dos tres artefatos de evidencia,
   hash do arquivo candidato final, lista de alteracoes e status
   `PATCH_PROPOSED`, `MP_ONLY` ou `BLOCKED`;
3. uma tabela curta ligando cada decisao a um arquivo e localizador de
   evidencia.

O patch ainda precisara de revisão independente L3 e dos gates de build, KCFI,
Joern, harness, Assembly e atestacao. Sua resposta nao pode promover a tarefa.
