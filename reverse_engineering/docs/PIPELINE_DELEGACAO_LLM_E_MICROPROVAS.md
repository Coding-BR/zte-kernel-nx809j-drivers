# Esteira de Delegacao por Capacidade e Microprovas

## 1. Decisao

A unidade de implementacao continua sendo uma funcao stock, mas uma funcao nao
e mais a menor unidade de trabalho. Antes de qualquer patch C, cada funcao deve
ser dividida em microprovas independentes, pequenas e verificaveis.

Essa separacao permite que pessoas iniciantes e LLMs com menos contexto ajudem
sem receber autoridade para inventar semantica, editar codigo de alto risco ou
promover uma reconstrucao. O modelo de menor capacidade produz observacoes
hashadas; um implementador usa contratos aprovados; um revisor independente
procura contradicoes; somente os atestadores existentes podem conceder `PASS`.

O score descrito aqui serve apenas para roteamento. Ele nao representa
percentual reconstruido, confianca semantica ou equivalencia comportamental.

## 2. Diagnostico da esteira atual

### Pontos fortes preservados

- cadeia de custodia do `.ko` stock;
- Assembly AArch64, relocacoes, pseudocodigo e P-Code por funcao;
- indice `FUNCTION_EVIDENCE_INDEX.jsonl` com hashes;
- mapa 1:1 stock para fonte;
- KCFI, Joern, build duplo, harness e atestacao seletiva;
- separacao correta entre alinhamento offline e validacao no hardware.

### Lacunas corrigidas por esta camada

1. `Uma funcao` ainda podia ser contexto demais para uma LLM menor.
2. Nao havia nivel minimo de executor e revisor por funcao.
3. A ordem seguia principalmente o manifesto, e nao as dependencias entre
   chamador e chamado.
4. Tamanho, fluxo indireto, offsets, locks e APIs de risco nao eram combinados
   em uma politica unica de roteamento.
5. Uma LLM recebia simultaneamente extracao de evidencia, inferencia,
   implementacao e validacao, favorecendo confirmacao da propria resposta.
6. Nao existia uma fila explicita de tarefas sem edicao C para colaboradores
   menos experientes.

### Resultado real para `zte_tpd`

O plano atual esta em
`reverse_engineering/validation/reconstructed/zte_tpd/LLM_DELEGATION_PLAN.json`
e foi calculado a partir dos manifestos locais hashados.

| Rota | Funcoes pendentes |
|---|---:|
| Patch limitado por L2, sempre com revisao independente | 4 |
| LLM guiada, com revisao senior | 22 |
| LLM avancada, com revisao senior | 15 |
| Decomposicao e decisao senior obrigatorias | 79 |
| Total | 120 |

Foram observadas quatro ondas de dependencias diretas e nenhum ciclo direto
entre as 120 funcoes. Isso nao exclui ciclos por callbacks: fluxo indireto e
sempre escalado porque o grafo de chamadas diretas nao consegue prova-lo.

Os quatro candidatos atuais a patch limitado sao:

- `trim`;
- `syna_tcm_testing_0002_check_config_id`;
- `syna_tcm_testing_0001_check_device_id`;
- `syna_tcm_testing_check_array_data`.

Essa lista e derivada e pode mudar quando qualquer entrada, politica ou hash
mudar. Nao deve ser copiada manualmente para outro driver.

## 3. Niveis de capacidade

| Nivel | Trabalho permitido | Trabalho proibido |
|---|---|---|
| `L0_MECHANICAL` | hashes, caminhos, inventarios, formatacao e checagem de identidade | inferir tipos, comportamento ou editar C |
| `L1_EVIDENCE` | extrair chamadas, constantes, offsets, branches e retornos com localizador de evidencia | nomear campo desconhecido, resolver contradicao ou editar C |
| `L2_BOUNDED_CODE` | implementar funcao pequena a partir de contrato aprovado e harness prescrito | callbacks, MMIO, IRQ, lifetime complexo, layout ambiguo |
| `L3_ADVANCED` | integrar controle, ownership, ABI, KCFI, falhas e testes | promover a propria implementacao |
| `L4_SENIOR` | arquitetura, ambiguidade, concorrencia, hardware, decomposicao e revisao final | substituir evidencia ausente por intuicao |

O nivel descreve a tarefa, nao uma marca ou nome de modelo. Uma LLM so pode ser
usada em um nivel quando consegue obedecer ao schema, citar evidencias e passar
os validadores daquele nivel.

## 4. Microprovas obrigatorias

### `MP0_IDENTITY`

Responsabilidade:

- confirmar `stock_function@entry`;
- recalcular SHA-256 de pseudocodigo, P-Code e Assembly;
- conferir tamanho e caminho contra o indice;
- listar qualquer divergencia sem tentar corrigi-la.

Pode ser executada por `L0`. Nao edita C.

### `MP1_CALL_SIGNATURE`

Responsabilidade:

- inventariar chamadas diretas;
- contar `CALLIND` e `BRANCHIND` no P-Code;
- identificar sites que exigem oraculo KCFI;
- registrar restricoes de argumentos e retorno observadas;
- separar prototipo comprovado de prototipo ainda desconhecido.

Pode ser executada por `L1`. Um nome semelhante nao prova uma assinatura.

### `MP2_STATE_EFFECT_LEDGER`

Responsabilidade:

- listar loads e stores em ordem;
- registrar base, offset, largura, sinal e condicao quando observaveis;
- registrar constantes e strings;
- marcar `unknown` quando a finalidade do campo nao estiver provada;
- associar cada linha ao P-Code ou endereco Assembly.

Pode ser executada por `L1`. Nao pode criar nomes finais de structs.

### `MP3_CONTROL_ERROR_MATRIX`

Responsabilidade:

- enumerar predicados de branch;
- listar retornos e `errno`;
- mapear ordem de efeitos e cleanup;
- registrar paths impossiveis de resolver estaticamente;
- detectar contradicoes entre pseudocodigo, P-Code e Assembly.

Pode ser executada por `L1`. Uma contradicao escala a tarefa para `L4`.

### `MP4_TEST_ORACLE_DRAFT`

Responsabilidade:

- transformar cada path observado em caso de teste;
- incluir sucesso, limites, argumentos nulos e cada falha injetavel;
- declarar retorno, stores, calls e ordem esperados;
- listar o que o harness nao consegue provar.

Pode ser rascunhada por `L1`, mas precisa de aprovacao `L3` antes de orientar
uma implementacao.

### `MP5_LOCK_LIFETIME_CONTRACT`

Responsabilidade:

- documentar owner, lock, contexto, aquisicao e liberacao;
- conferir init, unwind, cancelamento, teardown e uso apos liberacao;
- registrar regras para IRQ, workqueue, timer, notifier e RCU.

Exige no minimo `L2` para extracao e `L4` para aprovacao quando houver
concorrencia real.

### `MP6_REGISTER_OR_BUS_LEDGER`

Responsabilidade:

- ligar base MMIO/bus ao DT ou recurso observado;
- registrar offset, largura, direcao, mascara, barrier e dependencia;
- manter registradores e bits sem prova como `unknown`;
- separar sequencia observada de significado eletrico inferido.

Exige `L3` e revisao `L4`. Nunca autoriza teste automatico no aparelho.

### `MP7_CANDIDATE_PATCH`

Responsabilidade:

- editar apenas os arquivos permitidos;
- consumir contratos aprovados, sem reinterpretar a evidencia;
- produzir build, KCFI, Joern, harness e paridade;
- nao alterar o estado da microtarefa.

O planejador define o nivel minimo. Apenas a rota
`BOUNDED_LLM_WITH_INDEPENDENT_REVIEW` permite patch limitado por `L2`.

### `MP8_INDEPENDENT_REVIEW`

Responsabilidade:

- refazer a comparacao a partir dos artefatos;
- procurar contraexemplos e evidencia omitida;
- verificar escopo do diff e procedencia do build;
- rejeitar conclusoes que dependam apenas do texto do implementador.

O revisor deve ser outro agente ou pessoa e ter nivel superior ao implementador,
ou ser um segundo `L4` independente quando a implementacao foi senior.

## 5. Schema de entrega para modelos menores

Microprovas sem patch devem retornar JSON, nao prosa livre:

```json
{
  "schema_version": "1.0",
  "task_id": "NNN_function",
  "work_unit": "MP2_STATE_EFFECT_LEDGER",
  "input_hashes": [
    {"path": "relative/path", "sha256": "64-hex"}
  ],
  "observations": [
    {
      "id": "OBS-001",
      "claim": "store de 1 byte no offset 0x16",
      "evidence_path": "relative/pcode.jsonl",
      "locator": "address=0010a37c op_index=0"
    }
  ],
  "inferences": [],
  "unknowns": ["significado semantico do campo em +0x16"],
  "contradictions": [],
  "requested_escalation": null
}
```

Regras:

1. `observations` exigem localizador verificavel.
2. `inferences` nunca podem ser movidas automaticamente para `observations`.
3. `unknowns` vazios em funcao complexa merecem revisao, nao elogio.
4. Qualquer contradicao bloqueia `MP7`.
5. A LLM nao escreve `PASS` no manifesto.

## 6. Roteamento deterministico

Executar:

```powershell
python .\workspace_tools\reconstruction_pipeline\plan_llm_reconstruction_work.py `
  --manifest .\kernel_development\drivers\reconstructed\zte_tpd\MICROTASKS.json `
  --function-index .\reverse_engineering\validation\reconstructed\zte_tpd\offline_static\FUNCTION_EVIDENCE_INDEX.jsonl `
  --calls .\reverse_engineering\validation\reconstructed\zte_tpd\offline_static\ghidra_stock\calls.jsonl `
  --output .\reverse_engineering\validation\reconstructed\zte_tpd\LLM_DELEGATION_PLAN.json `
  --markdown .\reverse_engineering\validation\reconstructed\zte_tpd\LLM_DELEGATION_PLAN.md `
  --check
```

Remova `--check` apenas para gerar ou atualizar os dois arquivos. Em revisao e
reproducao, `--check` e obrigatorio e nao reescreve nenhuma evidencia.

O planejador falha quando o hash do indice nao coincide com o artefato. Ele
calcula risco a partir de sinais observaveis:

- tamanho do corpo;
- volume de P-Code;
- branches condicionais;
- chamadas diretas e indiretas;
- switch grande;
- superficie de offsets;
- atomicas e barriers AArch64;
- usercopy e mmap;
- locks e lifetime;
- callbacks/notifiers;
- IRQ, workqueue e timers;
- SPI/I2C/GPIO/regmap/MMIO;
- DMA, firmware, flash e power management;
- categoria lifecycle, binding, async ou user ABI.

### Rotas

`BOUNDED_LLM_WITH_INDEPENDENT_REVIEW`:

- corpo de ate 512 bytes;
- score abaixo de 25;
- ate seis chamadas diretas;
- ate oito branches condicionais;
- ate quatro offsets candidatos;
- nenhum fluxo indireto, lock/lifetime, hardware, DMA, firmware, power, mmap,
  raw user memory ou registro de callback.

`GUIDED_LLM_WITH_SENIOR_REVIEW`:

- pode receber microprovas por L1/L2, mas o patch exige L3;
- contrato e harness precisam ser prescritos antes da implementacao;
- toda decisao semantica fica com o revisor L4.

`ADVANCED_LLM_WITH_SENIOR_REVIEW`:

- ownership, locks, alocacao, firmware, power ou complexidade elevada;
- implementador L3, revisor L4.

`SENIOR_DECOMPOSITION_REQUIRED`:

- callback ou branch indireto;
- IRQ/async, hardware, DMA, mmap ou registro de callback;
- probe/remove/suspend/resume/lifecycle;
- mais de 2048 bytes ou dispatcher grande;
- score igual ou superior a 70.

## 7. Ordem por dependencias

O grafo usa chamadas diretas do Ghidra:

```text
caller -> pending callee
```

Funcoes folha entram na onda zero. Um chamador entra somente depois da maior
onda de seus callee pendentes. Componentes fortemente conectados sao agrupados
como uma unidade de revisao.

Limitacoes:

- callback indireto pode ocultar uma aresta;
- tabela de funcao e relocacao de dados podem complementar o grafo;
- ausencia de ciclo direto nao prova ausencia de ciclo em runtime;
- a ordem reduz retrabalho, mas nao concede equivalencia.

## 8. Contexto minimo por tarefa

Uma LLM menor nao deve receber o driver inteiro. O pacote deve conter apenas:

1. identificador e hashes da funcao;
2. pseudocodigo individual;
3. P-Code individual;
4. Assembly individual;
5. chamadas diretas e sites indiretos;
6. subset de strings e relocacoes da funcao;
7. callee ja atestados ou seus contratos, nunca suas implementacoes inteiras;
8. headers de layout estritamente necessarios;
9. schema da microprova;
10. arquivos permitidos e proibidos;
11. comandos de validacao que o executor nao pode alterar.

Esse pacote deve ser gerado, nao montado manualmente em conversa. Todos os
arquivos precisam de SHA-256 e caminho relativo.

## 9. Tecnicas avancadas avaliadas

### 9.1 Joern CPG slicing: adotar como proximo P0

`joern-slice` gera slices de data flow e de usos em JSON. Isso permite entregar
a uma LLM menor apenas o fluxo de um parametro, buffer, retorno ou chamada de
risco, em vez do CPG completo.

Uso recomendado:

- slice por funcao e sink;
- profundidade limitada e registrada;
- hash do CPG, query, slice e fonte;
- cruzamento do slice com P-Code e Assembly;
- qualquer `UnknownDef` vira pergunta, nao resposta.

Joern nao recupera tipo perdido, KCFI, MMIO nem comportamento fisico.

Fonte: [CPG Slicing oficial](https://docs.joern.io/cpg-slicing/) e
[data-flow steps](https://docs.joern.io/cpgql/data-flow-steps/).

### 9.2 Ghidra BSim: piloto para triagem, nunca para promocao

BSim cria vetores normalizados de data/control flow e encontra funcoes
similares mesmo com pequenas mudancas ou compiladores diferentes. Pode ordenar
quais funcoes candidato/stock merecem revisao primeiro e detectar regressao em
lote.

Nao prova equivalencia. Similaridade apenas prioriza; P-Code, Assembly,
relocacoes, KCFI e testes continuam obrigatorios.

Fonte: [introducao oficial ao BSim](https://ghidra.re/ghidra_docs/GhidraClass/BSim/BSimTutorial_Intro.html)
e [uso por linha de comando](https://ghidra.re/ghidra_docs/GhidraClass/BSim/BSimTutorial_BSim_Command_Line.html).

### 9.3 Emulacao concreta de P-Code: piloto para funcoes puras

O `PcodeEmulator` permite executar a mesma representacao usada pelo
decompilador e injetar stubs para imports. O piloto deve comparar snapshots de
registradores, memoria e chamadas para stock e candidato.

Escopo permitido inicialmente:

- parsers e helpers puros;
- memoria finita declarada;
- imports pequenos com stubs hashados;
- sem IRQ, concorrencia, DMA, MMIO ou firmware;
- limite de instrucoes e acesso a memoria.

Uma divergencia e forte evidencia de erro. Igualdade no conjunto executado nao
e prova universal. Userops e ambiente incompletos podem invalidar a sessao.

Fonte: [PcodeEmulator oficial](https://ghidra.re/ghidra_docs/api/ghidra/pcode/emu/PcodeEmulator.html)
e [caveats de emulacao](https://ghidra.re/ghidra_docs/GhidraClass/Debugger/B2-Emulation.html).

### 9.4 CBMC: piloto para contratos C limitados

CBMC pode explorar todas as entradas dentro de limites declarados e verificar
asserts, bounds, ponteiros, overflow e contratos. E adequado para `trim`,
parsers, validadores de tamanho e state machines pequenas.

Regras:

- harness de prova separado do harness de exemplos;
- bounds e unwinding assertions registrados;
- stubs devem superaproximar o comportamento permitido;
- loops sem bound comprovado nao recebem `PASS`;
- o resultado prova o C candidato no modelo, nao equivalencia com o `.ko`.

Fontes: [CBMC quick start](https://model-checking.github.io/cbmc-training/),
[function contracts](https://diffblue.github.io/cbmc/contracts-functions.html) e
[loop contracts](https://diffblue.github.io/cbmc/contracts-loops.html).

### 9.5 libFuzzer com ASan/UBSan: piloto para entradas host

Parsers, ioctl payloads modelados, strings e frames podem receber fuzz target
deterministico. Corpus, seed, limite, Clang e artefatos de crash devem ser
preservados. Fuzzing encontra contraexemplos; nao demonstra equivalencia.

Fonte: [documentacao oficial do libFuzzer](https://llvm.org/docs/LibFuzzer.html).

### 9.6 Sparse e Coccinelle: integrar ao gate de fonte

- Sparse verifica address spaces, tipos e anotacoes que C comum pode aceitar;
- Coccinelle detecta adaptacoes de API e padroes proibidos de forma
  reproduzivel;
- nenhum dos dois recupera a semantica privada do stock.

Fontes: [Sparse](https://docs.kernel.org/dev-tools/sparse.html) e
[Coccinelle](https://docs.kernel.org/6.12/dev-tools/coccinelle.html).

### 9.7 Execucao simbolica binaria: laboratorio, nao P0

angr, Triton ou mecanismo equivalente podem explorar funcoes pequenas, mas
`ET_REL`, relocacoes, chamadas do kernel, aliases, loops e estado externo
causam path explosion e modelos incompletos. Antes de adotar, o piloto precisa
superar a emulacao concreta de P-Code e CBMC em uma funcao ja atestada.

Nao instalar ou tornar obrigatorio enquanto o piloto nao demonstrar ganho
mensuravel e ausencia de falsos `PASS`.

### 9.8 QEMU e modelo de periferico: somente fase posterior

QEMU sem um modelo correto do periferico nao valida MMIO do NX809J. Um modelo
so deve nascer depois de ledger de registradores, estados e traces suficientes.
O modelo e um produto da engenharia reversa, nao a fonte inicial da verdade.

### 9.9 Consenso entre LLMs: detector de desacordo

Duas respostas iguais podem repetir o mesmo erro. Executar duas extracoes
independentes e util apenas para produzir uma lista de desacordos. Concordancia
nao promove observacao; evidencia deterministica continua necessaria.

### 9.10 Hyperon ou motor de conhecimento

Nao e necessario agora. JSON hashado, grafo Joern, P-Code e regras
deterministicas ja resolvem o roteamento. Um motor simbolico adicional passa a
fazer sentido apenas quando o ledger multicamada ficar grande demais para
consultas locais e houver schemas estaveis de fatos e contradicoes.

## 10. Esteira revisada

```text
R0  cadeia de custodia e indice por funcao
R1  plano de risco, capacidade, SCC e ondas
R2  pacote minimo hashado por microprova
R3  MP0 a MP6 em paralelo, sem editar C
R4  merge de observacoes e gate de contradicoes
R5  contrato aprovado e roteamento de MP7
R6  build duplo + KCFI + Ghidra/P-Code + Joern + harness
R7  MP8 por revisor independente
R8  atestador seletivo; nenhuma LLM altera PASS diretamente
R9  hardware A/B somente quando autorizado e com rollback
```

## 11. Gate de contradicoes

Antes de `MP7`, um agregador deterministico deve rejeitar:

- dois tamanhos ou larguras para o mesmo acesso;
- callback com prototipos/KCFI incompativeis;
- offset usado sob locks contraditorios;
- retorno ou cleanup ausente em uma das fontes;
- chamada direta no Assembly ausente do contrato;
- string, relocacao ou API observada omitida;
- evidencia cujo hash nao pertence ao pacote;
- inferencia apresentada como observacao.

O agregador nao escolhe a resposta mais frequente. Ele abre um bloqueador L4.

## 12. Politica para contribuicoes

Uma contribuicao de pessoa junior ou LLM menor e valida quando:

1. altera somente a unidade atribuida;
2. inclui todos os hashes de entrada;
3. produz o schema correto;
4. nao remove `unknowns` sem evidencia nova;
5. passa o validador da microprova;
6. nao modifica manifestos de `PASS`;
7. nao inclui binario, resultado ou fonte de outro hash;
8. registra ferramenta, versao e comando;
9. recebe revisao independente quando houver patch.

Um trabalho de evidencia pode ser aceito mesmo sem resolver a funcao. Isso
permite contribuicao incremental sem inflar o percentual reconstruido.

## 13. Roadmap de adocao

### Implementado agora

- roteamento por sinais observados;
- verificacao dos hashes do indice por funcao;
- ondas e SCC de dependencias diretas;
- nivel minimo de implementador/revisor;
- microprovas permitidas por tarefa;
- plano real das 120 funcoes pendentes de `zte_tpd`;
- testes para fluxo indireto, hardware, mmap, usercopy, notifier e offsets.

### P0 seguinte

1. Criar schema JSON e validador executavel para `MP0` a `MP6`.
2. Gerar pacote minimo por `task_id + work_unit`.
3. Integrar `joern-slice` por parametro/sink.
4. Adicionar relocacoes e strings por funcao ao pacote.
5. Criar gate de contradicoes antes de liberar `MP7`.
6. Fazer `validate_contribution.py` exigir o plano e a microprova aplicavel.

### P1

1. Piloto BSim stock/candidato em funcoes ja atestadas.
2. Piloto P-Code emulator em `trim` e helpers puros.
3. Piloto CBMC para bounds e postcondicoes dos mesmos helpers.
4. libFuzzer para parsers host com corpus versionado.
5. Sparse e regras Coccinelle no build descartavel.
6. Testes de mutacao do harness: um erro deliberado precisa ser detectado.

### P2

1. execucao simbolica binaria somente se superar os pilotos P1;
2. kernel de laboratorio para KUnit/KCOV/lockdep, sempre separado do candidato;
3. modelo QEMU somente apos ledger suficiente;
4. validacao A/B no aparelho como etapa final, nunca substituida por offline.

## 14. Metricas corretas

Medir:

- microprovas aceitas/rejeitadas por tipo;
- contradicoes encontradas antes do patch;
- percentual de pacotes com hashes atuais;
- retrabalho causado por dependencia ignorada;
- funcoes que mudaram de rota apos evidencia nova;
- mutants detectados pelo harness;
- paths cobertos e bounds comprovados;
- tempo senior economizado por tarefa;
- falsos candidatos de baixo risco encontrados em revisao.

Nao medir qualidade por quantidade de linhas C, quantidade de prompts ou
concordancia entre modelos.

## 15. Regra final

Modelos menores podem acelerar muito a reconstrucao quando recebem tarefas de
observacao pequenas, schemas fechados e nenhum poder de promocao. Quanto maior
o risco, menor deve ser o contexto editavel e mais forte deve ser a revisao.
Automacao deve eliminar trabalho repetitivo; evidencia local continua decidindo
o comportamento do NX809J.
