# Esteira Dual Ghidra + Joern para Reconstrucao de Drivers NX809J

Pesquisa e desenho tecnico consolidados em **2026-07-24** para o **NX809J,
REDMAGIC 11 Pro+**, Android 16, GKI `6.12.23-android16`.

A decisao curta, os limites de autoridade e o contrato de aceite estao
registrados em [ADR-004: Joern junto com Ghidra e dicionario/KCFI](ADR_004_JOERN_WITH_GHIDRA_AND_KCFI.md).

## 1. Decisao tecnica

O Joern ajuda a esteira, mas nao substitui o Ghidra nem o dicionario de tipos e
assinaturas KCFI. A decisao obrigatoria e manter os tres mecanismos:

| Mecanismo | Pergunta que responde | Autoridade |
|---|---|---|
| ELF + Ghidra 12.1.2 | O que o `.ko` stock realmente contem? | Normativa para binario, Assembly, P-Code, relocacoes e offsets observados |
| Dicionario + oraculo KCFI/GENDWARFKSYMS | Qual declaracao nominal produz os IDs e CRCs observados? | Normativa para assinatura testada pelo compilador fixado |
| Joern CPG do fonte candidato | O grafo do C reconstruido preserva funcoes, chamadas, controle e fluxos esperados? | Normativa como gate de consistencia do fonte, nunca como recuperador de fatos perdidos |

O dicionario testa candidatos conhecidos de forma exata. O Joern transforma o
programa em um Code Property Graph (CPG), unindo representacoes como AST, CFG e
fluxo de dados para consultas relacionais. Assim, ele encontra lacunas que uma
lista plana de nomes nao encontra, mas nao consegue adivinhar um `struct tag`,
um registrador MMIO ou um type ID KCFI que desapareceu na compilacao.

## 2. O que o Joern melhora

O CPG sera usado para:

1. provar que toda `source_function` do `reconstruction_map.json` entrou no
   grafo do fonte candidato;
2. comparar chamadas internas stock/candidato por funcao mapeada;
3. inventariar ramos, loops, switches e caminhos de cleanup;
4. localizar entradas de userspace e pontos de saida para MMIO, SPI, I2C,
   GPIO, regmap e buffers de userspace;
5. localizar chamadas nao resolvidas, funcoes extras e caminhos fatais;
6. produzir CFG, CDG, DDG e PDG para revisao de funcoes complexas;
7. permitir consultas repetiveis sobre todos os drivers sem depender da
   memoria ou da leitura manual de uma LLM.

O Joern oficial documenta CPGs como composicao extensivel de representacoes de
programa e fornece export de AST, CFG, CDG, DDG, PDG e CPG14. Fontes:
[Code Property Graph](https://docs.joern.io/code-property-graph/) e
[exportacao de grafos](https://docs.joern.io/export/).

## 3. O que o Joern nao prova

Um resultado Joern `PASS` nao prova:

- layout de estrutura, padding, alinhamento ou tipo nominal perdido;
- significado eletrico de offset, mask ou registrador MMIO;
- relocacao ELF, CRC de modversion, namespace ou import KMI;
- type ID KCFI de callback;
- equivalencia de Assembly ou P-Code;
- ordem real de I/O apos otimizacao do Clang;
- temporizacao, IRQ, DMA, cache-coherency ou comportamento do periferico;
- seguranca de carregar o modulo no smartphone.

Logo, o Joern possui poder de veto sobre inconsistencias encontradas, mas nunca
possui poder de promocao isolado. `PASS` no CPG sem os demais gates continua
sendo `INCOMPLETE`.

## 4. Versao reproduzivel

A versao inicial esta fixada em:

```text
Joern: v4.0.548
source commit: 75a15a7b86ea1b2df5a4406d9b13bfa2c15ee990
asset: joern-cli.zip
size: 2123145511 bytes
SHA-256: a7d6ee4aba2d271c0ab9b641b81909fb20491ed85a9d81292b1b9e9a6aef392a
Java: 21
```

O lock completo esta em
`workspace_tools/reconstruction_pipeline/joern/joern.lock.json`. Nunca usar
`latest` em evidencia publicada. Uma atualizacao do Joern invalida todos os
CPGs e relatorios Joern dependentes.

O release oficial contem `c2cpg` e `ghidra2cpg`. O frontend binario embute
Ghidra `11.4_f331b5bbea-202504251242`, enquanto a evidencia canonica NX809J usa
Ghidra 12.1.2. O codigo do release reconhece `AARCH64`, mas seu README registra
limitacao em varargs. Por isso, o CPG binario e apenas suplementar. Fontes:
[release v4.0.548](https://github.com/joernio/joern/releases/tag/v4.0.548),
[frontend ghidra2cpg](https://github.com/joernio/joern/tree/v4.0.548/joern-cli/frontends/ghidra2cpg) e
[versao Ghidra embutida](https://github.com/joernio/joern/blob/v4.0.548/project/Versions.scala).

## 5. Arquitetura da evidencia

```text
.ko stock imutavel
  +-- ELF / relocacoes / KCFI / modversions
  +-- Ghidra 12.1.2
  |     +-- Assembly AArch64
  |     +-- P-Code
  |     +-- pseudocodigo
  |     +-- functions.jsonl + calls.jsonl
  +-- ghidra2cpg v4.0.548 (opcional, suplementar)

fonte candidato
  +-- dicionario + KCFI/GENDWARFKSYMS
  +-- build Clang 19.0.1 fixado
  +-- c2cpg v4.0.548
        +-- metodos
        +-- call graph
        +-- estruturas de controle
        +-- consultas de risco
        +-- CFG/PDG sob demanda

reconstruction_map.json
  +-- cruza funcao stock@endereco com funcao C
  +-- alimenta o gate dual
```

O `reconstruction_map.json` e a ponte obrigatoria. Comparar somente nomes seria
incorreto porque um modulo pode conter funcoes locais homonimas. A cobertura
stock continua identificada por `nome@endereco`; o Joern confirma a funcao C
indicada pelo mapa.

## 6. Gates Joern

### J0: identidade dos insumos

Registrar SHA-256 do lock Joern, script Scala, perfil de chamadas, fonte C/H,
`functions.jsonl`, `calls.jsonl`, mapa de reconstrucao e `.ko` quando o frontend
binario for usado.

Saida: `input_manifest.json`.

### J1: ingestao do fonte

Executar `c2cpg` sobre o fonte candidato. Zero metodos internos, erro do parser,
falha do processo ou artefato ausente reprovam o gate. Includes ausentes devem
ser corrigidos com os headers do kernel fixado ou com um compilation database;
nao se deve ocultar o problema removendo codigo.

Saida: `source.cpg.bin` e `source_inventory/`.

### J2: cobertura Ghidra -> mapa -> fonte

Exigir:

- toda identidade `name@entry` de `functions.jsonl` presente no mapa;
- nenhuma identidade inventada pelo mapa;
- toda `source_function` mapeada presente no CPG;
- funcoes extras classificadas como helper, adaptacao GKI, hardening ou erro.

Falha de cobertura e bloqueadora.

### J3: call graph e controle

Comparar chamadas internas cujos dois lados possuem mapeamento. Uma chamada
stock ausente e bloqueadora em modo `--strict`. Antes de ativar strict em um
driver novo, revisar inlining, wrappers, macros e hardening documentado.

Estruturas `if`, `switch`, loops, retornos e labels de cleanup devem ser
conferidos por funcao complexa. Igualdade de contagem sozinha nao prova
equivalencia; divergencias orientam a revisao de Assembly e P-Code.

### J4: fluxos de risco

O perfil versionado classifica chamadas de:

- entrada e saida de userspace;
- MMIO, regmap, SPI, I2C e GPIO;
- lifetime e referencias;
- locks, workqueues e cancelamento;
- panic, reboot e caminhos fatais.

Essas ocorrencias sao seletores de revisao, nao vulnerabilidades automaticas.
Para data flow interprocedural usar `reachableBy`/`reachableByFlows` somente
depois de aplicar o overlay `ossdataflow` e revisar semantica das APIs externas.
A documentacao oficial alerta que funcoes externas sem semantica propagam dados
de todos os argumentos para todos os argumentos e retorno, aumentando falsos
positivos. Fontes: [data-flow steps](https://docs.joern.io/cpgql/data-flow-steps/)
e [custom data-flow semantics](https://docs.joern.io/dataflow-semantics/).

Semantica customizada para `copy_from_user`, `copy_to_user`, `memcpy`, `kstrto*`,
regmap e APIs vendor so passa a ser normativa depois de:

1. declarar indices de argumento conforme a assinatura 6.12.23 fixada;
2. criar teste positivo e negativo para cada regra;
3. registrar hash do arquivo de semantica;
4. medir falsos positivos e falsos negativos em um driver conhecido;
5. obter revisao independente.

Ate isso ocorrer, data flow e `ADVISORY`; J0 a J3 ja podem bloquear promocao.

### J5: CPG binario opcional

Executar `ghidra2cpg` diretamente no `.ko` somente como comparacao auxiliar de
metodos, calls e literais. Divergencia abre investigacao no Ghidra canonico.
Concordancia nao substitui o export Ghidra 12.1.2 e nao muda o estado de
promocao.

## 7. Instalacao local

O pacote possui aproximadamente 2,1 GB. O instalador aceita download retomavel,
confere tamanho e SHA-256, rejeita path traversal/symlinks no ZIP e grava um
manifesto da instalacao.

```powershell
python .\workspace_tools\reconstruction_pipeline\bootstrap_joern.py --download
```

Para conferir um arquivo baixado sem extrair:

```powershell
python .\workspace_tools\reconstruction_pipeline\bootstrap_joern.py `
  --archive C:\caminho\joern-cli.zip --verify-only
```

Nao instalar Joern dentro da imagem de compilacao do kernel. O compilador deve
continuar hermetico; Joern e ferramenta de analise e possui lock separado.

## 8. Execucao por driver

Primeiro gere somente o plano e o manifesto, mesmo sem Joern instalado:

```powershell
python .\workspace_tools\reconstruction_pipeline\run_joern_reconstruction_gate.py `
  --driver zte_ir `
  --source-root .\kernel_development\drivers\reconstructed\zte_ir `
  --ghidra-export .\reverse_engineering\validation\reconstructed\zte_ir\offline_static\ghidra_stock `
  --reconstruction-map .\kernel_development\drivers\reconstructed\zte_ir\reconstruction_map.json `
  --output-dir <engenharia>\validation\zte_ir\joern `
  --prepare-only
```

Depois da instalacao, remova `--prepare-only`. Use `--strict` somente quando o
baseline do driver estiver revisado:

```powershell
python .\workspace_tools\reconstruction_pipeline\run_joern_reconstruction_gate.py `
  --driver zte_ir `
  --source-root .\kernel_development\drivers\reconstructed\zte_ir `
  --ghidra-export .\reverse_engineering\validation\reconstructed\zte_ir\offline_static\ghidra_stock `
  --reconstruction-map .\kernel_development\drivers\reconstructed\zte_ir\reconstruction_map.json `
  --output-dir <engenharia>\validation\zte_ir\joern `
  --strict
```

Quando houver `compile_commands.json`, passe `--compilation-database`. Includes
adicionais podem ser repetidos com `--include`. O gate exclui `tests`,
`validation` e `build` por padrao para o harness nao contaminar o CPG do modulo;
use `--exclude` para acrescentar outras saidas geradas.

Para o frontend binario suplementar:

```powershell
python .\workspace_tools\reconstruction_pipeline\run_joern_reconstruction_gate.py `
  <argumentos-anteriores> `
  --stock-module <engenharia>\runs\<run>\01_acquisition\modules\zte_ir.ko `
  --with-binary-cpg
```

## 9. Saidas obrigatorias

```text
<engenharia>/validation/<driver>/joern/
  input_manifest.json
  source.cpg.bin
  source_inventory/
    inventory.json
    methods.json
    calls.json
    control_structures.json
  binary.cpg.bin                 # opcional
  binary_inventory/              # opcional
  joern_gate_report.json
```

`joern_gate_report.json` deve conter `promotion_claim=false` sempre. O estado
aceito e:

| Estado | Significado |
|---|---|
| `PREPARED` | entradas e comandos hashados; Joern ainda nao foi executado |
| `PASS` | ingestao e cobertura estrutural aprovadas para os criterios ativados |
| `FAIL` | erro de ferramenta ou inconsistencia bloqueadora |
| `ADVISORY` | achado de fluxo/binario que exige revisao, sem conclusao automatica |

CPGs sao artefatos derivados grandes. Publicar manifests, consultas e relatorios
por padrao; publicar `*.cpg.bin` apenas quando o tamanho e a licenca forem
aceitos. O CPG nunca substitui os arquivos de evidencia originais.

## 10. Como usar no ciclo de microtarefas

Para cada funcao:

1. localizar `stock_function@entry` no Ghidra;
2. revisar Assembly, relocacoes, P-Code e pseudocodigo;
3. resolver assinatura pelo dicionario e oraculo KCFI quando necessario;
4. implementar a funcao C atomica;
5. atualizar `reconstruction_map.json`;
6. executar Joern e revisar o metodo, calls e controle correspondentes;
7. corrigir divergencias ou registrar justificativa testavel;
8. executar build, KCFI, comparador de Assembly e harness;
9. obter revisao independente;
10. deixar hardware `DEFERRED` ate a sessao controlada.

Joern deve ser executado novamente quando mudar fonte, header, mapa, query,
perfil, frontend, Joern, compilation database ou include path.

## 11. Politica para LLMs e contribuicoes

Uma LLM ou contribuicao nao pode:

- colar somente uma captura da interface Joern;
- declarar equivalencia com base em ausencia de findings;
- substituir o Ghidra pelo `ghidra2cpg` embutido;
- remover funcao do mapa para obter cobertura aparente;
- ignorar parse problems ou chamadas nao resolvidas;
- usar `latest` ou um CPG sem hashes de entrada;
- treinar regras de semantica usando o candidato como unica verdade;
- promover driver sem anexar comando, lock, query e relatorio.

O commit deve incluir scripts/queries alterados, testes, hashes e um relatorio
reproduzivel. Mudanca de query sem teste invalida o gate.

## 12. Criterio de adocao

A integracao passa a fazer parte de todos os drivers em tres etapas:

1. **Piloto:** `zte_ir` e uma funcao complexa de `zte_tpd`, sem `--strict`.
2. **Baseline:** gerar CPG e classificar deltas de todos os drivers curated.
3. **Obrigatorio:** ativar J0-J3 em strict por driver depois de zerar ou
   justificar deltas; manter J4 data flow e J5 binario como advisory ate seus
   modelos receberem testes independentes.

Esse caminho preserva a exatidao dos oraculos atuais e acrescenta uma camada de
grafo auditavel sem transformar inferencia estatica em certeza falsa.

## 13. Integracao obrigatoria na atestacao de microtarefas

O Joern nao substitui o dicionario. Os dois resolvem problemas diferentes e
devem permanecer ativos na mesma microtarefa:

| Evidencia | Pergunta de aceite | Reprova quando |
|---|---|---|
| Dicionario + KCFI | A declaracao C produz a identidade de tipo observada? | type ID, CRC ou assinatura divergem |
| Ghidra/ELF | O binario stock contem este fluxo, offset, relocacao e P-Code? | ha divergencia nao justificada |
| Joern estrito | A funcao C mapeada entrou no CPG atual e preserva cobertura/calls mapeadas? | parser falha, a funcao some, mapa diverge ou call obrigatoria desaparece |
| Harness + build | O candidato atual compila e executa o contrato isolado? | hash, build ou teste diverge |

Microtarefas novas sao geradas com as evidencias compile, kcfi, joern e test.
A promocao aceita Joern somente quando o resumo declara estado PASS, modo
strict, zero erros de parser, a funcao C no escopo resolvido, promocao isolada
desativada e hash da arvore C/H igual ao candidato atual.

Assim, uma alteracao posterior em qualquer fonte ou header invalida a
atestacao Joern ate uma nova execucao. O verificador le os requisitos por
tarefa: evidencias antigas mantem seus requisitos historicos; tarefas novas ou
reatestadas exigem Joern. Nenhuma tarefa legada ganha um PASS Joern retroativo.

~~~text
Ghidra/ELF -> dicionario e KCFI -> C atomico -> Joern estrito
-> build reproduzivel -> Assembly/P-Code -> harness -> atestacao hashada
~~~

Use o resumo portatil joern_gate_summary.json no atestador. Ele contem hashes
de lock, query, perfil, export Ghidra, mapa e arvore de fontes, sem expor
caminhos locais. Findings J4 continuam seletores de revisao e nao sao
automaticamente vulnerabilidades; falhas J1-J3 bloqueiam a promocao.

O runbook compacto da regra esta em
[JOERN_MICROTASK_ATTESTATION.md](JOERN_MICROTASK_ATTESTATION.md).

## 14. Politica operacional: dois oraculos, um grafo e nenhum atalho

O dicionario/KCFI e o Joern devem continuar separados porque respondem a
perguntas diferentes. Um nao preenche lacuna do outro.

| Classe | Artefato que decide | Uso na esteira | Nao permite concluir |
|---|---|---|---|
| Fato binario | ELF, relocacoes, Assembly e P-Code do Ghidra | origem de cada offset, chamada, literal e caminho stock | nome C original ou intencao eletrica do hardware |
| Contrato de tipo | dicionario, compilador fixado e KCFI/GENDWARFKSYMS | assinatura, tag nominal, CRC, namespace e callback | que o fluxo da funcao esta completo |
| Consistencia estrutural | CPG Joern do fonte C/H candidato | cobertura de funcao, chamadas, controle, lifecycle e selecao de riscos | layout, MMIO, KCFI, Assembly ou comportamento fisico |
| Contrato executavel | build, comparadores binarios e harness | regressao verificavel da microtarefa | comportamento integrado no telefone |

Ha tres classes de consulta Joern, com politicas diferentes:

1. **Bloqueadora:** parse limpo, identidade Ghidra -> mapa -> CPG, cobertura
   da `source_function` e chamadas internas mapeadas. Uma falha impede a
   promocao.
2. **Revisao obrigatoria:** CFG, estruturas de controle, lifecycle, locks,
   MMIO, SPI/I2C/GPIO e caminhos `copy_{from,to}_user`. A divergencia cria uma
   tarefa de revisao; so se torna bloqueadora quando o P-Code/Assembly a
   confirma como contrato da funcao.
3. **Exploratoria:** `ossdataflow`, `ghidra2cpg`, busca de padroes e novas
   semanticas. E util para encontrar pistas, mas nunca altera um estado de
   promocao sem evidencia dos outros oraculos.

Cada query, perfil de chamadas, lock Joern, `compile_commands.json`, include
extra e arvore C/H entra no manifesto hashado. O CPG e derivado e descartavel;
o resumo portatil e a evidencia publicada. Alterar qualquer uma dessas entradas
invalida o resultado Joern anterior.

## 15. Esteira offline obrigatoria

O telefone nao e necessario para alinhar um driver estaticamente. Ele e usado
somente depois que o candidato atingir o limite offline e houver um protocolo
de rollback. A sequencia por funcao e:

```text
.ko stock imutavel
  -> Ghidra 12.1.2: Assembly, P-Code, relocacoes, literais e calls
  -> reconstruction_map: stock_function@endereco -> source_function
  -> dicionario + KCFI: assinatura e tags nominais
  -> implementacao C atomica
  -> Joern strict: CPG, cobertura e deltas de chamadas
  -> build Clang fixado + KCFI + Assembly/P-Code candidato
  -> harness host e atestacao hashada
  -> teste controlado no aparelho, quando aplicavel
```

Para cada microtarefa nova ou reatestada, a lista minima permanece
`required_evidence: [compile, kcfi, joern, test]`. `joern` so e aceito quando
o resumo declara `PASS`, `strict=true`, `promotion_claim=false`, zero erros de
parser, a funcao declarada no escopo resolvido e o SHA-256 atual de toda a
arvore C/H. Microtarefas legadas preservam o historico; elas so adotam Joern
apos reatestacao explicita.

## 16. Melhorias adotadas e proximos incrementos

Ja adotado:

- gate `run_joern_reconstruction_gate.py` com CPG do fonte e escopo por
  funcao;
- lock de versao/distribuicao, query Scala e perfil de chamadas versionados;
- exclusao de `tests`, `validation` e `build` para o harness nao contaminar o
  CPG do driver;
- atestador que revalida o hash da arvore C/H antes de aceitar Joern;
- CPG binario opcional e explicitamente suplementar.

Incrementos permitidos, mas ainda nao normativos, sao: criar resumos de
estruturas de controle por funcao, comparar esses resumos contra P-Code sob
revisao humana e introduzir semanticas Joern de APIs do kernel uma por vez,
com casos positivo/negativo independentes. Nenhuma contagem de nos, arestas,
branches ou caminhos pode ser usada como igualdade automatica de Assembly.

O Joern e adequado aqui porque o frontend C/C++ e listado como de maturidade
"Very High" e porque o CPG combina sintaxe, controle e fluxo de dados. Os
graficos podem ser exportados como AST, CFG, CDG, DDG e PDG. A documentacao
tambem alerta que chamadas externas sem semantica propagam fluxo de forma
conservadora e imprecisa; por isso, data-flow permanece exploratorio ate cada
semantica ser testada localmente. Fontes oficiais: [visao geral do
Joern](https://docs.joern.io/), [Code Property
Graph](https://docs.joern.io/code-property-graph/), [exportacao de
grafos](https://docs.joern.io/export/) e [semanticas de
data-flow](https://docs.joern.io/dataflow-semantics/).
