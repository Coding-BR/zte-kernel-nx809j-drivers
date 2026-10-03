# Tarefa L2: 326_trim

Voce e o implementador de uma microtarefa de reconstrucao do kernel Android
GKI. Trabalhe somente na funcao `trim`. O pacote representa evidencia local
do NX809J; nao use internet, outro aparelho, outro driver ou intuicao para
preencher lacunas.

## Entrada autorizada

- `evidence/decompiled.c` (decompiled_c, SHA-256 `f77ae823e3d387c1716c7bbdda3cef4cac9d9beae765922f4e3828671a50f517`)
- `evidence/pcode.jsonl` (pcode, SHA-256 `02ca8f24ec1b3d2185cc134066579ab9f67e866e9637de2c41ba211766ebd620`)
- `evidence/assembly.asm` (assembly, SHA-256 `6bca473c86660e49a3b25d24540ecc458f81775010546d4d0874ea733c7417a6`)

O arquivo candidato atual esta em `candidate/trim.c`. Ele pode conter uma
tentativa anterior nao atestada. Preserve qualquer comportamento ja provado e
proponha somente a menor alteracao necessaria.

## Limites obrigatorios

- Edite somente `candidate/trim.c`.
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

1. um patch unificado para `candidate/trim.c`;
2. uma copia preenchida de `SUBMISSION_TEMPLATE.json`, salva como
   `submission.json`, com `task_id`, hashes dos tres artefatos de evidencia,
   hash do arquivo candidato final, lista de alteracoes e status
   `PATCH_PROPOSED`, `MP_ONLY` ou `BLOCKED`;
3. uma tabela curta ligando cada decisao a um arquivo e localizador de
   evidencia.

O patch ainda precisara de revisão independente L3 e dos gates de build, KCFI,
Joern, harness, Assembly e atestacao. Sua resposta nao pode promover a tarefa.
