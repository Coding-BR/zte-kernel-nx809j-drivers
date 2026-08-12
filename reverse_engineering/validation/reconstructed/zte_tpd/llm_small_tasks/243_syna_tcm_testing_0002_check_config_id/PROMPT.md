# Tarefa L2: 243_syna_tcm_testing_0002_check_config_id

Voce e o implementador de uma microtarefa de reconstrucao do kernel Android
GKI. Trabalhe somente na funcao `syna_tcm_testing_0002_check_config_id`. O pacote representa evidencia local
do NX809J; nao use internet, outro aparelho, outro driver ou intuicao para
preencher lacunas.

## Entrada autorizada

- `evidence/decompiled.c` (decompiled_c, SHA-256 `7a7c910dac55cebb6ab456bd8bcb3247ffd88945685c0454e0de14cadfccf2e7`)
- `evidence/pcode.jsonl` (pcode, SHA-256 `510e57c658bda735940d09a5cd326baafd601fe5caf39532b7f41e59b025aae4`)
- `evidence/assembly.asm` (assembly, SHA-256 `4c2415840f055d5736d15c346a9498d9d594709ba70e91c66c54b1ecad6bd422`)

O arquivo candidato atual esta em `candidate/syna_tcm_testing_0002_check_config_id.c`. Ele pode conter uma
tentativa anterior nao atestada. Preserve qualquer comportamento ja provado e
proponha somente a menor alteracao necessaria.

## Limites obrigatorios

- Edite somente `candidate/syna_tcm_testing_0002_check_config_id.c`.
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

1. um patch unificado para `candidate/syna_tcm_testing_0002_check_config_id.c`;
2. uma copia preenchida de `SUBMISSION_TEMPLATE.json`, salva como
   `submission.json`, com `task_id`, hashes dos tres artefatos de evidencia,
   hash do arquivo candidato final, lista de alteracoes e status
   `PATCH_PROPOSED`, `MP_ONLY` ou `BLOCKED`;
3. uma tabela curta ligando cada decisao a um arquivo e localizador de
   evidencia.

O patch ainda precisara de revisão independente L3 e dos gates de build, KCFI,
Joern, harness, Assembly e atestacao. Sua resposta nao pode promover a tarefa.
