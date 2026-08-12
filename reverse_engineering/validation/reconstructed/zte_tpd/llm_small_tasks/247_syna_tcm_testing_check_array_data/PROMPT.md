# Tarefa L2: 247_syna_tcm_testing_check_array_data

Voce e o implementador de uma microtarefa de reconstrucao do kernel Android
GKI. Trabalhe somente na funcao `syna_tcm_testing_check_array_data`. O pacote representa evidencia local
do NX809J; nao use internet, outro aparelho, outro driver ou intuicao para
preencher lacunas.

## Entrada autorizada

- `evidence/decompiled.c` (decompiled_c, SHA-256 `daae788f3b27a3df638ac559b3b8cfb30a42014adb018f2519ae34aeca01c62a`)
- `evidence/pcode.jsonl` (pcode, SHA-256 `0b2a27d0c0e13200afa65aad5753a5f3c5b6029f479d8b08f9cff1498c0557d8`)
- `evidence/assembly.asm` (assembly, SHA-256 `4a45c9863a8b94a156d8b81989d21a33d696ff49e6fdcd225f21fd0abea2fe8d`)

O arquivo candidato atual esta em `candidate/syna_tcm_testing_check_array_data.c`. Ele pode conter uma
tentativa anterior nao atestada. Preserve qualquer comportamento ja provado e
proponha somente a menor alteracao necessaria.

## Limites obrigatorios

- Edite somente `candidate/syna_tcm_testing_check_array_data.c`.
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

1. um patch unificado para `candidate/syna_tcm_testing_check_array_data.c`;
2. uma copia preenchida de `SUBMISSION_TEMPLATE.json`, salva como
   `submission.json`, com `task_id`, hashes dos tres artefatos de evidencia,
   hash do arquivo candidato final, lista de alteracoes e status
   `PATCH_PROPOSED`, `MP_ONLY` ou `BLOCKED`;
3. uma tabela curta ligando cada decisao a um arquivo e localizador de
   evidencia.

O patch ainda precisara de revisão independente L3 e dos gates de build, KCFI,
Joern, harness, Assembly e atestacao. Sua resposta nao pode promover a tarefa.
