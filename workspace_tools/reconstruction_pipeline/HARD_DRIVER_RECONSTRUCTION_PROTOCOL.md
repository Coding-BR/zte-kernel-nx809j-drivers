# Protocolo Avancado para Drivers e Funcoes Dificeis

Este documento estende, sem substituir:

- `NX809J_LOCAL_SOURCE_OF_TRUTH.md`;
- `LLM_MANDATORY_RECONSTRUCTION_CYCLE.md`;
- `reverse_engineering/docs/PIPELINE_RECONSTRUCAO_OFFLINE_TOTAL.md`;
- `reverse_engineering/docs/PROTOCOLO_EQUIVALENCIA_BINARIA_COMPILADOR.md`;
- `reverse_engineering/docs/PIPELINE_DELEGACAO_LLM_E_MICROPROVAS.md`.

Ele e normativo quando uma funcao envolve fluxo indireto, callbacks, layout
ambiguo, concorrencia, hardware, firmware, parser/dispatcher grande ou
divergencia sensivel ao compilador. O `.ko` stock local continua sendo o unico
oraculo para fatos do NX809J. Ferramentas publicas explicam metodos; elas nao
fornecem offsets, tipos, registradores ou comportamento deste aparelho.

## 1. Resultado permitido

O runner deste protocolo gera apenas um dos resultados abaixo:

```text
CORE_GATES_PASS       Joern, Docker, KCFI/Assembly aplicaveis passaram.
CORE_GATES_FAIL       ao menos um gate executavel falhou ou ficou sem artefato.
```

Nenhum deles promove uma microtarefa. `promotion_authorized` e sempre `false`.
Promocao exige as microprovas, harness, Ghidra/P-Code candidato quando
aplicavel, revisao independente e o atestador seletivo ja existente. Sem teste
fisico, o limite global permanece `STATIC_ALIGNED_CANDIDATE`.

## 2. Hipotese de trabalho correta

Reconstrucao dificil e tratada como validacao de traducao guiada por
contraexemplos:

```text
stock ELF -> Assembly/relocacoes/P-Code -> contrato observavel
                                                |
fonte candidato -> Joern/IR -> Docker ELF ------+-> comparacao
                                                |
corpus/model checker/emulador ------------------+-> contraexemplo minimo
```

Nao se procura o C original, que em geral nao e recuperavel de forma unica.
Procura-se uma implementacao cujo ABI e efeitos observaveis coincidam com a
evidencia local. Um resultado igual em um corpus e evidencia positiva limitada;
uma divergencia e um contraexemplo bloqueador.

## 3. Classificacao obrigatoria

Uma funcao pode receber mais de um perfil. A uniao dos gates e obrigatoria.

| Perfil | Sinais observados | Provas adicionais |
|---|---|---|
| `LEAF_PURE` | helper finito, sem I/O, lock ou callback | modelo limitado, mutacao do oraculo |
| `STATEFUL_MEMORY` | loads/stores, buffers, layouts, ownership | slice, ledger de efeitos, sanitizers, bounds |
| `CALLBACK_ABI` | tabela de ponteiros, `CALLIND`, notifier, ops | KCFI, tabela/relocacao, KMI/tipos |
| `CONCURRENCY_LIFETIME` | mutex/spinlock, IRQ, work, timer, RCU | lock/lifetime, cancelamento, KUnit/lockdep/KCSAN |
| `HARDWARE_BUS` | SPI/I2C/GPIO/regmap/MMIO, power, firmware | ledger de bus, DT local, hardware controlado |
| `DISPATCHER_PARSER` | switch grande, ioctl, frame ou payload | CFG segmentado, slices, fuzzing, CBMC, mutantes |
| `COMPILER_SENSITIVE` | C correto com Assembly/P-Code/KCFI divergente | Ghidra candidato, LLVM IR, escada de codegen |

Fluxo indireto, lifecycle, hardware, DMA, mmap, firmware e concorrencia nunca
podem ser rebaixados para `LEAF_PURE` para economizar tempo.

## 4. Pipeline obrigatoria H0-H9

### H0 - congelar identidade

Registre SHA-256 do job, stock, fonte compilavel, mapa, Ghidra, toolchain,
imagem Docker, Joern lock e Java. A identidade e sempre
`stock_function@stock_entry`. Um relatorio de outro hash fica obsoleto.

### H1 - decompor por dependencia e observaveis

Use ondas callee-first e trate cada SCC como uma unidade. Produza MP0-MP6 antes
de editar C. Separe fatos, inferencias, desconhecidos e contradicoes. Uma
contradicao nao e resolvida por voto ou similaridade; ela escala para revisao
senior.

### H2 - triangulacao estatica

Para cada funcao, cruze:

1. Assembly completo e relocacoes ELF;
2. P-Code e pseudocodigo do Ghidra canonico;
3. CPG Joern do fonte atual;
4. para casos realmente ambiguos, um segundo lifter/decompilador independente.

O segundo lifter e detector de desacordo, nunca oraculo. `rev.ng` pode produzir
C/LLVM IR por CLI; Remill levanta instrucoes AArch64 para LLVM bitcode. Se os
modelos discordarem, volte ao Assembly e as relocacoes.

### H3 - Joern estrito e slices seletivos

O gate Joern por funcao e obrigatorio. `joern-slice` e obrigatorio apenas para
perfis que precisam seguir estado, origem/sink, ownership ou payload.

Regras de eficiencia:

- filtre por funcao e sink;
- use source view de uma translation unit quando possivel;
- fixe profundidade, paralelismo e timeout;
- reutilize CPG somente se o hash do fonte for identico;
- preserve JSON, comando e hash;
- `UnknownDef` vira desconhecido, nunca tipo inventado.

O piloto local mostrou que construir o overlay data-flow sobre o CPG completo
de `zte_tpd` pode exceder cinco minutos mesmo com filtro de metodo. Por isso o
runner usa timeout e o protocolo exige reduzir a source view ou reutilizar um
overlay hashado antes de repetir a operacao.

### H4 - contrato relacional e oraculo de efeitos

Para logica executavel em host, escreva um harness relacional:

```text
assuma o mesmo estado inicial e as mesmas respostas dos stubs;
execute o modelo stock e o candidato;
compare retorno;
compare somente as regioes de memoria permitidas;
compare chamadas externas, argumentos e ordem;
compare locks, alocacoes, cleanup e errno observaveis;
falhe no primeiro contraexemplo e preserve o input minimo.
```

O modelo stock deve vir de P-Code/Assembly, nao do proprio C candidato. Loops e
buffers precisam de bounds explicitos. Um `PASS` de CBMC/KLEE e limitado ao
modelo e aos bounds declarados.

### H5 - estrategia por classe

- Helper puro: enumeracao finita, CBMC ou KLEE; depois mutacao do harness.
- Buffer/parser: libFuzzer + ASan/UBSan, corpus deterministico e CBMC para
  limites. O fuzzer encontra contraexemplos; nao prova ausencia universal.
- Callback: KCFI stock/candidato, slot e relocacao, gendwarfksyms/BTF quando
  houver tipos, e teste do callsite indireto.
- Concorrencia: state machine de ownership, todos os cancelamentos e teardown,
  depois KUnit/lockdep/KCSAN em kernel de laboratorio.
- Hardware: stub de bus apenas para ordem e erros; registradores continuam
  `unknown` sem evidencia. Nenhum solver substitui o teste no aparelho.
- Dispatcher: segmente CFG/cases, prove rotas pequenas e reconstrua o wrapper
  somente depois dos callee.

### H6 - compilacao e translation validation

Execute dois builds limpos no Docker fixado e exija bytes identicos. Compare
ELF, secoes, simbolos, relocacoes, KCFI e Assembly por funcao. Quando a diferenca
for de codegen, inspecione LLVM IR e corrija primeiro tipos, signedness,
prototipos, aliasing, condicoes e ordem de efeitos. Alive2 pode validar
transformacoes entre IRs LLVM compativeis, mas nao prova diretamente que um
`.ko` stock equivale ao C reconstruido e nao suporta transformacoes
interprocedurais de forma geral.

O inventario de simbolos separa tres superficies: imports indefinidos, exports
reais (`__ksymtab_*`) e simbolos internos de implementacao. Imports e exports
precisam coincidir por nome; simbolos internos extras nao sao ignorados, mas
devem ser classificados e justificados (por exemplo, duplicata necessaria,
adaptador local de `file_operations` ou guard KCFI gerado pelo compilador).
Auxiliares decompilados sem referencia e fora do mapa nao entram no build: ficam
preservados como evidencia e sao excluidos explicitamente do `Kbuild/Makefile`.

Para o KMI, execute `audit_module_abi_surface.py` com o `Module.symvers` comum
extraido pelo Docker e cada `vendor.Module.symvers` que o snapshot curado passa
ao build. O relatorio deve conferir ELF AArch64/ET_REL, imports, exports,
aliases, metadados, dependencias normalizadas, vermagic do alvo e CRCs de todos
os imports. Nao compare CRCs stock contra CRCs do alvo como se fossem a mesma
build do kernel: a fonte de verdade do candidato e a uniao hashada do KMI
comum Docker com os contratos vendor explicitamente montados.

Quando uma recompilacao altera apenas metadados ou a superficie de carregamento,
use `audit_kcfi_artifact_stability.py` para provar byte-a-byte a estabilidade de
`.text`, `__version_ext_crcs` e `__version_ext_names`; nunca copie um relatorio
KCFI antigo sem esse gate de estabilidade.

### H7 - analise de fonte do kernel

No snapshot descartavel, execute conforme aplicavel:

- Sparse para address spaces, tipos, endian e locks;
- Smatch para fluxo e analise interprocedural;
- Coccinelle para padroes proibidos e uso de API;
- `gendwarfksyms`/BTF/libabigail como evidencia suplementar de KMI/tipos.

Avisos nao sao corrigidos mecanicamente: cada mudanca volta ao stock para evitar
"melhorar" comportamento que precisava ser preservado.

### H8 - revisao independente e gate de contradicoes

O revisor reabre o stock, confere hashes e procura um input que diferencie as
implementacoes. Ele nao aceita a narrativa do implementador como evidencia. Um
mutante deliberado deve falhar; se o harness aceita o mutante, o oraculo e
insuficiente.

### H9 - hardware e promocao

Somente depois dos gates offline, com um driver por sessao, timeout, logs e
rollback. Touchscreen, energia, reboot, biometria, memoria, firmware e clocks
nao entram em lote automatico. O runner deste documento nunca executa H9.

## 5. Runner CLI

Crie um job a partir de `hard_driver_job.zte_tpd.example.json` e valide o plano:

```powershell
python .\workspace_tools\reconstruction_pipeline\run_hard_driver_protocol.py `
  --job <job.json> `
  --repo-root <raiz-do-repositorio> `
  --engineering-root <kernel-docker-workspace\engenharia> `
  --java-home <jdk-21> `
  --output-dir <pasta-nova-de-evidencia> `
  --mode plan
```

Execute o nucleo somente em outra pasta nova:

```powershell
python .\workspace_tools\reconstruction_pipeline\run_hard_driver_protocol.py `
  --job <job.json> `
  --repo-root <raiz-do-repositorio> `
  --engineering-root <kernel-docker-workspace\engenharia> `
  --java-home <jdk-21> `
  --output-dir <pasta-nova-de-evidencia> `
  --mode core
```

O modo `core` executa Joern estrito e Docker obrigatoriamente. Depois de obter o
mesmo candidato reproduzivel, executa KCFI e comparacao de Assembly. Se o job
fornecer `candidate_ghidra_export`, tambem executa a comparacao P-Code/Ghidra.

Para drivers diferentes de `zte_tpd`, use:

```json
"docker": {"adapter": "generic_driver_audit", "cycles": 2}
```

Saidas principais:

```text
input_manifest.json
hard_protocol_plan.json
hard_protocol_report.json
promotion_decision.json
logs/
joern/
docker/
kcfi/
assembly/
```

Uma pasta de saida nao vazia e rejeitada para impedir mistura de hashes.

## 6. Ferramentas avaliadas e decisao

| Ferramenta | Uso correto | Posicao no protocolo |
|---|---|---|
| Ghidra Headless/P-Code | export deterministico, emulacao concreta, Assembly | P0 normativo |
| Joern/joern-slice | CPG, chamadas, control/data flow e contexto minimo | P0 normativo/seletivo |
| Docker + Clang fixado | build AArch64 limpo e reproduzivel | P0 normativo |
| KCFI + gendwarfksyms/BTF | callbacks, type IDs e KMI | P0/P1 |
| Sparse/Smatch/Coccinelle | bugs de tipos, fluxo e padroes kernel | P1 |
| CBMC/KLEE | prova limitada e contraexemplos de C pequeno | P1 |
| libFuzzer + sanitizers | corpus para parsers e payloads | P1 |
| Ghidra BSim | priorizacao e regressao por similaridade | triagem, nunca promocao |
| rev.ng/Remill | segundo lifter e LLVM IR para desacordo dificil | laboratorio P2 |
| angr/Triton | execucao simbolica AArch64 pequena e modelada | laboratorio P2 |
| Alive2/llvm-diff | diagnostico e validacao entre IRs LLVM | suplementar |
| KUnit/kselftest | logica interna e interfaces em kernel de laboratorio | P1/P2 |
| syzkaller | fuzzing de kernel em VM/aparelho controlado | fase runtime posterior |
| QEMU/TCG | execucao somente com modelo fiel do periferico | posterior; nao e oraculo |

## 7. Fontes primarias

- [Ghidra Headless Analyzer](https://github.com/NationalSecurityAgency/ghidra/blob/master/Ghidra/RuntimeScripts/support/analyzeHeadlessREADME.md)
- [Ghidra BSim por linha de comando](https://github.com/NationalSecurityAgency/ghidra/blob/master/GhidraDocs/GhidraClass/BSim/BSimTutorial_Ghidra_Command_Line.md)
- [Joern CPG slicing](https://docs.joern.io/cpg-slicing/)
- [Clang KCFI/CFI](https://clang.llvm.org/docs/ControlFlowIntegrity.html)
- [Linux Kernel Testing Guide](https://www.kernel.org/doc/html/latest/dev-tools/testing-overview.html)
- [Linux gendwarfksyms](https://www.kernel.org/doc/html/latest/kbuild/gendwarfksyms.html)
- [LLVM libFuzzer](https://llvm.org/docs/LibFuzzer.html)
- [CBMC CLI](https://diffblue.github.io/cbmc/man/cbmc.html)
- [KLEE options](https://klee-se.org/docs/options/)
- [Remill](https://github.com/lifting-bits/remill)
- [rev.ng CLI](https://docs.rev.ng/references/cli/revng-analyze/)
- [Alive2](https://github.com/AliveToolkit/alive2)
- [angr documentation](https://docs.angr.io/en/latest/)
- [Triton](https://github.com/JonathanSalwan/Triton)
- [QEMU TCG plugins](https://www.qemu.org/docs/master/devel/tcg-plugins.html)

## 8. Regra de eficiencia

Cache e reutilizacao so sao permitidos por hash. Um build Docker pode servir a
varias atestacoes quando candidato, fonte, config, Module.symvers, toolchain e
imagem forem exatamente os mesmos. Um CPG/slice pode ser reutilizado somente
com fonte, source view, lock, query e argumentos identicos. Agrupe funcoes do
mesmo hash em lote de validacao, mas produza veredito e evidencias por identidade
de funcao.

O objetivo e reduzir recomputacao, nunca reduzir gates.
