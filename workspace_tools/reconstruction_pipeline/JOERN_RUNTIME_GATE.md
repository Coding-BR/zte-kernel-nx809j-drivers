# Gate Joern na Esteira de Reconstrucao NX809J

Este documento define a integracao operacional do Joern com a esteira Ghidra,
Assembly, P-Code, dicionario KCFI e harness. A arquitetura conceitual completa
permanece em
[`PIPELINE_DUAL_GHIDRA_JOERN.md`](../../reverse_engineering/docs/PIPELINE_DUAL_GHIDRA_JOERN.md).

## 1. Decisao

O Joern ajuda e deve ser mantido, mas nao substitui nenhum oraculo existente.

| Camada | Autoridade |
|---|---|
| ELF, Ghidra 12.1.2, Assembly, P-Code e relocacoes | comportamento estatico observado no `.ko` stock |
| Dicionario KCFI/GENDWARFKSYMS | assinatura nominal testada pelo Clang fixado |
| Joern CPG do C candidato | cobertura estrutural, call graph, controle e seletores de fluxo |

Um `PASS` Joern pode vetar inconsistencias, mas nunca promove um driver sozinho.
Offsets, layouts, KCFI, MMIO, temporizacao e comportamento fisico continuam fora
do que um CPG de fonte consegue provar. A documentacao oficial descreve o CPG e
suas consultas em [Joern Overview](https://docs.joern.io/) e
[CPGQL](https://docs.joern.io/cpgql/).

## 2. Versao fixada

```text
Joern: v4.0.548
source commit: 75a15a7b86ea1b2df5a4406d9b13bfa2c15ee990
asset: joern-cli.zip
size: 2123145511 bytes
SHA-256: a7d6ee4aba2d271c0ab9b641b81909fb20491ed85a9d81292b1b9e9a6aef392a
Java: 21
```

O lock esta em `joern/joern.lock.json`. Nao usar `latest` em evidencia. O
bootstrap valida tamanho e SHA-256, rejeita path traversal e links simbolicos e
grava um marcador da instalacao.

```powershell
python .\workspace_tools\reconstruction_pipeline\bootstrap_joern.py --download
```

## 3. Gates integrados

### J0: cadeia de custodia

O `input_manifest.json` registra:

- runner Python, lock, query Scala e perfil de chamadas;
- arvore C/H candidata;
- `functions.jsonl` e `calls.jsonl` do Ghidra canonico;
- `reconstruction_map.json`, includes, defines e compilation database;
- `.ko` stock quando o frontend binario opcional for usado.

Arquivos textuais usam SHA-256 com finais de linha normalizados para LF.
Binarios como `.ko`, `.bin` e `.zip` continuam byte-exatos.

### J1: ingestao C/C++

`c2cpg` deve gerar metodos internos e terminar sem parse problems em modo
`--strict`. Prefira `compile_commands.json` e headers GKI reais.

Quando os headers nao estiverem disponiveis, anotacoes que desaparecem no
pre-processamento podem ser informadas com `--define`. Passe apenas o nome da
macro e confirme que as funcoes esperadas reaparecem no CPG. Nao defina macros
de configuracao em massa: combinacoes contraditorias podem representar um
programa que nunca foi compilado. Essa limitacao e discutida pelos mantenedores
do Joern na [orientacao do c2cpg](https://github.com/joernio/joern/issues/1420).

### J2: cobertura cruzada

O gate exige:

1. toda identidade `stock_function@entry` presente no mapa;
2. nenhuma identidade inventada pelo mapa;
3. toda `source_function` mapeada presente no CPG;
4. funcoes extras explicitamente revisadas;
5. chamadas internas mapeadas preservadas em modo `--strict`.

### J3: revisao de risco

O perfil `joern/kernel_call_profile.json` classifica userspace, MMIO, SPI, I2C,
GPIO, lifetime, locks, workqueues e caminhos fatais. Os resultados sao seletores
de revisao, nao vulnerabilidades ou prova de equivalencia. Data flow
interprocedural permanece advisory ate receber semanticas externas testadas; a
documentacao oficial explica os falsos positivos em
[Custom Data-Flow Semantics](https://docs.joern.io/dataflow-semantics/).

## 4. Execucao reproduzivel

Cada execucao deve usar um `run-id` exclusivo. O runner define esse diretorio
como working directory do Joern, impedindo que projetos chamados
`source.cpg.bin` sejam compartilhados entre drivers.

```powershell
$repo = (Resolve-Path .).Path
$engineering = 'C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia'

python .\workspace_tools\reconstruction_pipeline\run_joern_reconstruction_gate.py `
  --driver zte_ir `
  --source-root .\kernel_development\drivers\reconstructed\zte_ir `
  --ghidra-export .\reverse_engineering\validation\reconstructed\zte_ir\offline_static\ghidra_stock `
  --reconstruction-map .\kernel_development\drivers\reconstructed\zte_ir\reconstruction_map.json `
  --output-dir "$engineering\validation\zte_ir\joern\<run-id>" `
  --joern-home .\reproducible_environment\.tools\joern-v4.0.548 `
  --java-home $env:JAVA_HOME `
  --define __user `
  --define __init `
  --define __exit `
  --strict
```

Para uma microtarefa, mantenha o mapa completo como entrada e limite o gate com
`--function`. O runner usa o mapa completo somente para resolver chamadas de
saida da funcao selecionada; cobertura, findings e bloqueios ficam restritos ao
alvo declarado. O nome pode ser o simbolo stock ou a funcao C candidata.

```powershell
python .\workspace_tools\reconstruction_pipeline\run_joern_reconstruction_gate.py `
  --driver zte_tpd `
  --function syna_testing_pt05_zte `
  --source-root .\kernel_development\drivers\reconstructed\zte_tpd `
  --ghidra-export .\reverse_engineering\validation\reconstructed\zte_tpd\offline_static\ghidra_stock `
  --reconstruction-map .\kernel_development\drivers\reconstructed\zte_tpd\reconstruction_map.json `
  --output-dir "$engineering\validation\zte_tpd\joern\<run-id>" `
  --joern-home .\reproducible_environment\.tools\joern-v4.0.548 `
  --java-home $env:JAVA_HOME `
  --define __user --define __init --define __exit `
  --strict
```

Uma funcao solicitada que nao exista no export Ghidra nem no mapa causa `FAIL`.
O escopo fica registrado no manifest, no relatorio detalhado e no resumo
portatil. Isso evita criar mapas temporarios ou remover entradas para obter um
`PASS` artificial.

Use `--include` de forma repetivel ou `--compilation-database` quando houver
informacao de compilacao real. `tests`, `validation` e `build` sao excluidos por
padrao para o harness nao contaminar o grafo do driver.

## 5. Saidas e publicacao

```text
<run-id>/
  input_manifest.json
  source.cpg.bin
  source_inventory/
    inventory.json
    methods.json
    calls.json
    control_structures.json
  joern_gate_report.json
  joern_gate_summary.json
  workspace/                     # projeto interno isolado
```

Publique por padrao apenas o runner, a query e `joern_gate_summary.json`. O
summary nao contem caminhos absolutos e fixa os hashes do relatorio local e dos
inventarios. CPG, workspace, manifest e relatorio detalhado permanecem em
`engenharia` salvo decisao explicita de tamanho, licenca e privacidade.

## 6. Piloto validado

Em 2026-07-24, o piloto Windows com `zte_ir`, Joern `v4.0.548` e Java 21 obteve:

| Medida | Resultado |
|---|---:|
| Funcoes stock/mapeadas | 8/8 |
| Funcoes mapeadas ausentes | 0 |
| Parse problems | 0 |
| Chamadas | 438 |
| Estruturas de controle | 53 |
| Seletores de revisao | 30 |
| Estado | `PASS` |
| `promotion_claim` | `false` |

Evidencia:
[`JOERN_PILOT_V4.0.548.json`](joern/evidence/JOERN_PILOT_V4.0.548.json).

O piloto detectou antes do `PASS`:

- parametros `key=value` fragmentados pelo launcher `.bat` no Windows;
- uso incorreto de `filename` e `headOption` na API Scala;
- colisao do workspace interno entre execucoes;
- funcoes omitidas por `__user`, `__init` e `__exit` nao resolvidos;
- hashes textuais instaveis entre CRLF e LF;
- ausencia do hash do proprio runner no manifest.

Todos foram corrigidos e possuem regressao automatizada quando aplicavel. Esse
resultado valida a operacao do gate, nao a equivalencia funcional de `zte_ir`.

## 7. Regra para todas as LLMs

1. Nunca substituir Ghidra, Assembly, P-Code ou KCFI pelo Joern.
2. Nunca remover uma funcao do mapa para obter cobertura aparente.
3. Nunca ignorar parse problems, metodos ausentes ou chamadas nao resolvidas.
4. Nunca usar CPG de outro `run-id` ou versao sem lock.
5. Registrar todo define/include e repetir o gate apos mudar fonte, header, mapa,
   query, perfil, frontend ou compilation database.
6. Manter hardware `DEFERRED` ate uma sessao controlada no aparelho.
