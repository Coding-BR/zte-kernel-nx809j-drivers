# Esteira de Reconstrucao Offline Total do NX809J

## 1. Objetivo e limite

Este documento define o caminho obrigatorio para reconstruir os modulos vendor
do **NX809J, REDMAGIC 11 Pro+**, sem usar o smartphone durante a fase atual.
Ele serve para humanos e LLMs e deve ser executado por driver, nunca por uma
declaracao coletiva sem evidencias individuais.

O resultado maximo desta esteira e:

```text
STATIC_ALIGNED_CANDIDATE: todos os contratos observaveis no material local
foram mapeados e os gates offline passaram; comportamento fisico pendente.
```

Nao e tecnicamente correto prometer comportamento fisico `100%` sem executar o
candidato no hardware. Assembly, Ghidra, P-Code, harness e QEMU reduzem muito a
incerteza, mas nao reproduzem por si so temporizacao eletrica, firmware interno
do periferico, IRQ real, reguladores, pinctrl, DMA, cache-coherency do SoC ou
efeitos de MMIO.

## 2. O que faz sentido no diagnostico proposto

| Afirmacao | Avaliacao tecnica |
|---|---|
| A compilacao elimina nomes locais, macros, comentarios e parte dos tipos. | Correta. Esses elementos normalmente nao podem ser recuperados de forma unica. |
| Ghidra gera pseudocodigo util, mas nao recupera o fonte original. | Correta. O pseudocodigo e uma interpretacao e deve ser conferido contra as instrucoes e o P-Code. |
| Layout incorreto de estrutura pode causar corrupcao ou panic. | Correta. A gravidade depende de qual campo e acessado e de quem e o dono da memoria. |
| Todo offset de estrutura e perdido. | Incorreta. Offsets efetivamente usados permanecem nas instrucoes, no P-Code e nas expressoes de endereco; perdem-se os nomes, tipos e campos nunca acessados. |
| O binario sempre grava em endereco fisico MMIO fixo. | Incorreta como regra. Drivers modernos frequentemente recebem recursos do DT, usam `platform_get_resource`, `devm_ioremap_resource`, `regmap`, SPI ou I2C. O assembly pode mostrar apenas um offset relativo a uma base obtida em runtime. |
| Sem datasheet nao se pode reconstruir nada. | Incorreta. E possivel reconstruir o contrato de software e a sequencia observada. O que fica bloqueado e atribuir significado eletrico definitivo aos bits e provar o efeito fisico. |
| Ghidra recupera universalmente 80% a 90% do C. | Nao verificavel. A taxa depende de simbolos, otimizacao, LTO, inlining, obfuscacao, tipos e qualidade do importador. O projeto mede cobertura por funcao e requisito, nao uma porcentagem generica. |
| Compilar e dar boot exigem fonte identico ao original. | Incorreta. Implementacoes diferentes podem cumprir o mesmo ABI; tambem e possivel compilar e iniciar contendo erros funcionais graves. |
| QEMU substitui o telefone no teste final. | Geralmente incorreta para perifericos vendor. QEMU ajuda em logica pura e interfaces emuladas somente quando existe um modelo fiel do hardware. |
| A etapa dinamica final e indispensavel. | Correta. Ela deve ocorrer depois da atestacao estatica e com rollback. |

## 3. Hierarquia das fontes

Para qualquer afirmacao especifica do NX809J, use esta ordem:

1. `.ko` stock local, identificado por SHA-256 e tamanho.
2. ELF, secoes, simbolos, relocacoes, modversions, modinfo e strings do mesmo
   hash.
3. Assembly AArch64 completo por intervalo da funcao.
4. P-Code e pseudocodigo Ghidra produzidos desse mesmo binario.
5. DTB/DTBO, firmware e imagens extraidos localmente, todos com hash.
6. Fonte candidato, build, harnesses e relatorios reproduziveis.
7. Mais tarde, evidencia somente leitura e teste controlado no aparelho.

Documentacao publica so pode explicar uma API generica. Ela nao pode preencher
um offset, compatible, registrador, GPIO, assinatura ou sequencia do NX809J.

Referencias genericas permitidas:

- [Android: visao geral de modulos GKI e vendor](https://source.android.com/docs/core/architecture/kernel/modules)
- [Android: monitoramento da KMI](https://source.android.com/docs/core/architecture/kernel/abi-monitor)
- [Android: desenvolvimento de codigo para GKI e vendor hooks](https://source.android.com/docs/core/architecture/kernel/kernel-code)
- [LLVM: KCFI para software de baixo nivel](https://clang.llvm.org/docs/ControlFlowIntegrity.html#fsanitize-kcfi)

## 4. Pacote minimo de entrada por driver

Cada driver deve ter um pacote imutavel com:

```text
01_stock/
  <driver>.ko
  stock_manifest.json
02_elf/
  elf_header.json
  sections.json
  symbols.json
  relocations.json
  modinfo.json
  modversions.json
  strings.json
  stock_kcfi.json
03_ghidra/
  manifest.json
  functions.jsonl
  calls.jsonl
  externals.jsonl
  symbols.jsonl
  strings.jsonl
  memory_blocks.jsonl
  pseudocode.c
  decompiled/<uma-funcao>.c
  pcode/<uma-funcao>.jsonl
04_assembly/
  manifest.json
  <uma-funcao>.asm
05_context/
  dtb_dtbo_manifest.json
  dts/
  firmware_manifest.json
06_reconstruction/
  reconstruction_map.json
  TYPE_AND_REGISTER_LEDGER.md
  DOCUMENTO_TRANSICAO.md
07_validation/
  microtasks/
  harness/
  kcfi_comparison.json
  parity_report.json
  build_audit.json
  independent_review.json
```

Arquivos ausentes sao bloqueadores. Um pseudocodigo agregado sem os P-Codes e
sem o assembly integral nao e um pacote completo.

## 5. Esteira obrigatoria

### Gate O0: identidade, escopo e risco

Registre nome do driver, funcao do modulo, classe de risco, dependencias, kernel
alvo, toolchain, `.config`, `Module.symvers` e criterio de parada. Fixe o hash do
stock. Nao comece pelo fonte candidato.

Saida: `validation_plan.json` e `stock_manifest.json`.

### Gate O1: normalizacao ELF

Extraia e confira:

- ELF64 little-endian, `EM_AARCH64`, `ET_REL`;
- secoes executaveis e de dados, tamanhos e alinhamentos;
- simbolos definidos, indefinidos, weak, locais e exportados;
- relocacoes por callsite e por objeto de dados;
- `__versions`, CRCs, namespaces, aliases, license, depends e vermagic;
- parametros do modulo, init/exit, tabelas OF/ACPI/SPI/I2C/platform;
- strings que formam ABI de userspace, sysfs, procfs, ioctl e logs.

Saida: inventario estruturado, nunca apenas texto de terminal.

### Gate O2: assembly AArch64 completo

Desmonte todas as funcoes ELF e todas as funcoes adicionais reconhecidas pelo
Ghidra. Use endereco inicial e tamanho; `--disassemble-symbols` isolado nao e
suficiente quando ha simbolos duplicados, funcoes locais ou secoes especiais.

O manifesto deve provar, por funcao:

- endereco inicial, secao e tamanho esperado;
- primeira e ultima instrucao cobertas;
- relocacoes intercaladas no disassembly;
- SHA-256 do arquivo `.asm`;
- `complete=true` somente quando o intervalo foi integralmente coberto.

Instruction aliases e sequencias de alternatives, LSE, PAC/BTI e KCFI devem ser
preservados no raciocinio. Nao traduza mecanicamente cada instrucao para uma
linha C.

### Gate O3: export Ghidra deterministico

Execute o Ghidra Headless sobre o mesmo SHA-256. Exija:

- `function_count` igual a `functions.jsonl`;
- um arquivo de pseudocodigo e um P-Code por funcao;
- nenhum timeout ou `DECOMPILATION ERROR`;
- calls, externals, strings e memory blocks exportados;
- enderecos coerentes com image base e secoes ELF.

Pseudocodigo e uma hipotese tipada pelo decompilador. Em caso de conflito,
assembly, relocacao e P-Code vencem; a divergencia deve ser registrada.

### Gate O4: grafo de evidencia por funcao

Crie uma linha em `reconstruction_map.json` para cada funcao stock, incluindo
`FUN_*`, thunks, init, exit e callbacks. Cada linha deve apontar para:

- entrada Ghidra;
- assembly integral;
- P-Code e pseudocodigo;
- arquivo e funcao C candidata;
- chamadas e objetos globais relevantes;
- offsets, constantes e strings usados;
- microtarefa, harness e resultado KCFI;
- nome do revisor e estado `reviewed`.

A identidade canonica e `nome@endereco_de_entrada`, nao apenas o nome. Modulos
podem conter funcoes locais homonimas vindas de objetos diferentes; uma delas
nao pode servir de evidencia para as demais.

Funcao inlined pode mapear para outra funcao C, mas exige evidencia. Codigo
morto so pode ser excluido com justificativa de alcancabilidade e relocacoes.

### Gate O5: tipos, estruturas e registradores

Monte restricoes antes de nomear tipos:

1. Colete todos os acessos `base + offset`, largura, sinal e alinhamento.
2. Agrupe bases por origem: argumento, global, `drvdata`, recurso DT, MMIO,
   buffer DMA, userspace ou objeto alocado.
3. Resolva o menor layout compativel com todos os acessos.
4. Confirme campos conhecidos contra headers do Kernel 6.12.23 local.
5. Use `static_assert`, `offsetof`, `sizeof` e probes compilados.
6. Marque campos desconhecidos como `reserved` ou `unknown`, sem semantica
   inventada.
7. Documente owner, lifetime, lock, contexto IRQ/processo e anotacoes
   `__iomem`, `__user`, `__rcu` ou `__percpu`.

Um padding explicito so e correto quando fecha uma restricao observada. Inserir
padding ate “parecer alinhado” nao e engenharia reversa.

### Gate O6: implementacao por microtarefas

Implemente uma funcao atomica por tarefa. Para cada tarefa, exija:

- contrato de entrada/saida e pre-condicoes;
- caminhos de sucesso, erro e cleanup;
- contexto de concorrencia e locks;
- ausencia de casts que escondam callback incompativel;
- build com as flags reais;
- harness e fault injection;
- comparacao de KCFI quando a funcao for indiretamente chamavel;
- revisao contra assembly, P-Code e callsites stock.

Nao otimize nem refatore antes de fechar a equivalencia observavel. Codigo mais
bonito que muda ordem de MMIO, delays, barriers ou teardown e uma divergencia.

### Gate O7: harness e analise dinamica sem hardware

Extraia logica pura para testes de host quando isso nao alterar o contrato.
Cubra:

- limites, valores invalidos e overflow;
- falha de cada alocacao e API que retorna `ERR_PTR`;
- rollback de probe e teardown parcial;
- state machines e sequencia de chamadas;
- concorrencia, workqueues, timers e cancelamento;
- ioctl/netlink/sysfs/procfs, tamanhos e copy_to/from_user;
- MMIO simulado como transcricao ordenada, sem atribuir semantica eletrica;
- fuzzing de parsers e protocolos quando aplicavel.

KUnit, UML ou QEMU podem complementar o harness. Eles nao promovem o resultado
para hardware validado sem um modelo fiel do periferico.

### Gate O8: build duplo, KMI e KCFI

Em diretorios descartaveis:

1. limpe e compile;
2. descarte a saida;
3. limpe e compile novamente com ambiente identico;
4. compare SHA-256 e tamanho;
5. valide modpost, CRCs, namespaces, imports, exports, aliases e vermagic;
6. compare KCFI de toda superficie indireta;
7. registre hash da imagem Docker, Clang, `.config`, `Module.symvers` e fonte.

Reprodutibilidade mede controle do processo. Binarios stock e candidato nao
precisam ser byte a byte iguais, pois caminhos, compilador, ordem de objetos e
metadados podem mudar. Divergencias de contrato, entretanto, precisam de prova.

### Gate O9: paridade diferencial

Compare stock e candidato nestas superficies:

| Superficie | Criterio |
|---|---|
| ELF/modinfo | arquitetura, tipo, license, aliases, depends, namespaces e parametros coerentes |
| KMI | imports/exports/CRCs permitidos pelo kernel alvo |
| Funcoes | toda funcao stock mapeada; extras classificados |
| Calls | alvos e multiplicidade relevantes explicados |
| Controle | ramos, retornos, cleanup e estados equivalentes |
| Dados | globais, tamanhos, alinhamentos, offsets e initializers explicados |
| KCFI | type IDs iguais em callbacks e funcoes indiretas |
| Userspace ABI | ioctl, netlink, sysfs, procfs, `/dev`, eventos e formatos preservados |
| DT/firmware | compatibles, propriedades e nomes derivados do material local |
| Hardware I/O | ordem, largura, masks, barriers, delays e retry preservados |

Tamanho de funcao, registradores escolhidos pelo compilador e forma textual do
pseudocodigo sao sinais de revisao, nao criterios isolados de igualdade.

### Gate O10: revisao independente e atestacao offline

Uma segunda pessoa ou sessao deve repetir a auditoria partindo do stock. Ela nao
pode aceitar como prova o resumo da implementadora. Todos os gates O0 a O9
precisam estar `PASS` para emitir:

```text
STATIC_ALIGNED_CANDIDATE
hardware_validation=DEFERRED
release_eligible=false
```

Se qualquer item estiver ausente, o estado e `INCOMPLETE`.

## 6. Execucao padrao

### 6.1 Extrair assembly completo

Para todos os drivers adquiridos:

```powershell
python .\workspace_tools\reconstruction_pipeline\materialize_offline_assembly.py `
  --engineering-root <engenharia> --all
```

O materializador localiza o run por driver e so reutiliza uma extracao quando
hash do stock, hash de `functions.jsonl`, contagem e todos os intervalos ainda
coincidem.

Para um modulo especifico, tambem e possivel chamar o extrator diretamente:

```powershell
python .\workspace_tools\reconstruction_pipeline\extract_module_assembly.py `
  <stock.ko> `
  --functions-jsonl <functions.jsonl> `
  --output-dir <validation\driver\offline_static\stock_assembly>
```

O comando deve terminar com `passed=true`. Qualquer funcao ausente ou intervalo
incompleto precisa ser resolvido antes de continuar.

### 6.2 Extrair e comparar KCFI

```powershell
python .\workspace_tools\reconstruction_pipeline\extract_kcfi.py `
  <stock.ko> -o <stock_kcfi.json>

python .\workspace_tools\reconstruction_pipeline\extract_kcfi.py `
  <candidate.ko> -o <candidate_kcfi.json>

python .\workspace_tools\reconstruction_pipeline\compare_kcfi_reports.py `
  <stock_kcfi.json> <candidate_kcfi.json> `
  --output <kcfi_comparison.json> --ignore-size
```

Use `--require-function` para a superficie indireta comprovada. Nao compare
type IDs espurios obtidos dos quatro bytes anteriores a funcoes sem preambulo
KCFI valido.

### 6.3 Gerar e verificar microtarefas

```powershell
python .\workspace_tools\reconstruction_pipeline\generate_driver_microtasks.py `
  --driver <driver> --curated-root <engenharia\curated> --run-root <run>

python .\workspace_tools\reconstruction_pipeline\verify_driver_microtasks.py `
  --driver <driver> --curated-root <engenharia\curated> `
  --evidence-root <engenharia\validation>
```

### 6.4 Build independente

```powershell
python .\workspace_tools\reconstruction_pipeline\validate_reconstructed_drivers.py `
  --driver <driver> --curated-root <engenharia\curated> --run-root <run> `
  --rebuild --strict `
  --output <engenharia\validation\driver\offline_static\build_audit.json> `
  --markdown <engenharia\validation\driver\offline_static\BUILD_AUDIT.md>
```

### 6.5 Auditor final offline

```powershell
python .\workspace_tools\reconstruction_pipeline\audit_offline_reconstruction.py `
  --engineering-root <engenharia> --driver <driver>
```

Para o inventario completo:

```powershell
python .\workspace_tools\reconstruction_pipeline\audit_offline_reconstruction.py `
  --engineering-root <engenharia> --all
```

Esse comando e somente leitura em relacao ao aparelho e nao contem operacoes
ADB, fastboot, `insmod`, `rmmod` ou flash.

### 6.6 Publicar evidencias derivadas

Depois de fechar a extracao, copie assembly, pseudocodigo, P-Code e manifests
para o repositorio sem incluir os `.ko` stock:

```powershell
python .\workspace_tools\reconstruction_pipeline\publish_offline_evidence.py `
  --engineering-root <engenharia> --all
```

O publicador apaga e recria somente os subdiretorios derivados
`offline_static/ghidra_stock` e `offline_static/stock_assembly`, depois gera um
`EVIDENCE_MANIFEST.json` com SHA-256 de cada arquivo publicado.

## 7. Regra de invalidacao

Uma alteracao invalida automaticamente as evidencias dependentes:

| Alteracao | Reexecutar |
|---|---|
| Fonte C/header/Makefile | O6 a O10 |
| Assinatura ou callback | O5 a O10, incluindo KCFI |
| Layout/offset/lock | O5 a O10 |
| `.config`, Clang, Docker ou `Module.symvers` | O8 a O10 |
| `.ko` stock ou run de aquisicao | todos os gates |
| Script Ghidra ou versao do Ghidra | O3 a O10 |
| DTB/DTBO/firmware | O4 a O10 |
| Harness | O7 a O10 |

Relatorio antigo com hash diferente e evidencia invalida, mesmo que diga
`PASS`.

Todo relatorio de ABI, KCFI, build, paridade e revisao deve registrar
`stock_sha256` e `candidate_sha256`. Um `PASS` sem vinculo ao candidato atual e
tratado como incompleto.

## 8. Metricas aceitas

Nao use “Ghidra recuperou 90%”. Publique contagens auditaveis:

- funcoes stock / funcoes com assembly integral;
- funcoes Ghidra / pseudocodigos / P-Codes sem erro;
- funcoes mapeadas e revisadas;
- callbacks KCFI iguais / callbacks requeridos;
- caminhos de erro testados / caminhos identificados;
- imports, exports, aliases e namespaces iguais ou justificados;
- divergencias bloqueadoras, justificadas e intencionais;
- builds limpos reproduziveis;
- gates offline aprovados.

`100% de cobertura estatica observavel` significa que o denominador foi
explicitamente inventariado e todos os itens possuem evidencia. Nao significa
equivalencia eletrica nem ausencia universal de defeitos.

## 9. Fase futura no smartphone

Somente depois de `STATIC_ALIGNED_CANDIDATE`, executar por driver:

1. preflight e copia do stock;
2. captura de logs antes;
3. unbind/unload controlado quando necessario;
4. carga do hash exato auditado;
5. bind e teste passivo;
6. matriz funcional limitada por risco;
7. captura de KASAN/KCSAN/CFI/Oops/pstore;
8. rollback e confirmacao do stock;
9. revisao dos logs antes de promover.

Esse gate permanece deliberadamente fora da esteira offline atual.
