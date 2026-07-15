# Decomposicao Reproduzivel dos Modulos Stock

Este documento define o padrao obrigatorio para decompor os modulos reconstruidos
do NX809J. A finalidade e preservar a prova estatica por funcao sem confundir a
saida do decompilador com o codigo-fonte original.

## Decisao de arquitetura

Cada funcao recebe a identidade estavel `nome@entrada_ghidra`. O indice liga essa
identidade a quatro origens independentes:

1. inventario ELF/Ghidra do modulo stock;
2. pseudocodigo C individual produzido pelo decompilador;
3. P-Code integral produzido pelo Ghidra;
4. Assembly AArch64 extraido diretamente do ELF stock.

O candidato reconstruido tambem e vinculado por SHA-256, mas nao e declarado
equivalente ao stock. Os artefatos grandes nao sao duplicados. Cada modulo recebe
um `FUNCTION_EVIDENCE_INDEX.jsonl` que aponta para os arquivos existentes e
registra SHA-256, tamanho e metadados de faixa.

## Escopo atual

O contrato em
`reverse_engineering/validation/MODULE_DECOMPOSITION_TARGETS.json` cobre todo
diretorio em `kernel_development/drivers/reconstructed/` que possui um candidato
`.ko`: 14 modulos. `zlog_common` e classificado como dependencia de suporte; os
demais sao alvos primarios.

`gpio_keys_nubia` e `nubia_hw_version` possuem stock e exports Ghidra preservados,
mas permanecem como alvos futuros porque ainda nao existe candidato reconstruido
publicado. Eles nao podem ser silenciosamente contabilizados como completos.

## Contrato por funcao

Para cada registro de `functions.jsonl`, o verificador exige:

- identidade `nome@entry` unica, inclusive quando nomes se repetem;
- decompilacao concluida sem `decompiler_error`;
- arquivo C individual existente, nao vazio e coberto por SHA-256;
- P-Code JSONL valido, nao vazio e coberto por SHA-256;
- registro Assembly com `found=true` e `complete=true`;
- endereco Ghidra igual ao endereco do registro Assembly;
- arquivo Assembly existente, nao vazio e com hash/tamanho exatos;
- bijecao entre inventario, C decompilado, P-Code e Assembly.

O verificador tambem exige ELF64 little-endian, `ET_REL` e maquina AArch64 para
stock e candidato. O MD5 registrado pelo Ghidra e conferido contra o stock, mas
SHA-256 permanece como identidade autoritativa.

## Geracao inicial ou atualizacao controlada

Execute somente depois de publicar exports Ghidra e Assembly completos:

```powershell
python .\workspace_tools\reconstruction_pipeline\validate_module_decomposition.py --write
```

Esse comando gera, para cada modulo:

```text
reverse_engineering/validation/reconstructed/<modulo>/offline_static/
  FUNCTION_EVIDENCE_INDEX.jsonl
  MODULE_DECOMPOSITION_MANIFEST.json
```

E tambem gera os relatorios globais:

```text
reverse_engineering/validation/MODULE_DECOMPOSITION_AUDIT.json
reverse_engineering/validation/MODULE_DECOMPOSITION_AUDIT.md
```

## Verificacao sem alterar arquivos

```powershell
python .\workspace_tools\reconstruction_pipeline\validate_module_decomposition.py --check
```

Para um unico modulo:

```powershell
python .\workspace_tools\reconstruction_pipeline\validate_module_decomposition.py `
  --check --driver zte_ir
```

O modo `--check` recalcula todos os hashes e compara os indices byte a byte. Um
arquivo ausente, um JSONL invalido, um hash divergente, uma funcao duplicada ou
uma camada sem correspondencia encerra a verificacao com codigo diferente de
zero.

## Ordem correta da esteira

1. Adquirir o `.ko` stock e registrar cadeia de custodia.
2. Executar Ghidra Headless com o script versionado do repositorio.
3. Preservar inventario, pseudocodigo C, P-Code, calls, symbols e strings.
4. Extrair Assembly AArch64 por funcao diretamente do stock.
5. Publicar a evidencia derivada com `publish_offline_evidence.py`.
6. Executar `validate_module_decomposition.py --write`.
7. Executar novamente com `--check` antes do commit.
8. Implementar e atestar as microtarefas; o indice nao substitui testes.
9. Executar build dupla, KMI/KCFI, revisao independente e hardware controlado.

## O que PASS significa

`PASS` significa somente que a decomposicao estatica esta completa, integra,
hashada e navegavel por funcao. Ele nao prova:

- recuperacao do codigo-fonte C original;
- nomes, macros ou tipos que o compilador removeu;
- semantica eletrica de registradores MMIO;
- equivalencia comportamental entre stock e candidato;
- seguranca de carga ou funcionamento no smartphone.

Essas propriedades continuam dependentes de mapas revisados, probes ABI,
microtarefas, KCFI, harnesses, revisao independente e validacao dinamica. Sem
essas provas, o estado geral do driver permanece `INCOMPLETE` e o hardware
permanece `DEFERRED`.
