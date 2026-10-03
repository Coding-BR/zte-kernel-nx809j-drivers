# Prompt normativo — reconstrução estática de módulos `.ko`

Use este texto como contrato de execução para cada driver difícil do NX809J.
Substitua somente `<DRIVER>` e os caminhos da execução. O prompt não concede
equivalência comportamental: ele define como obter e publicar evidência
reproduzível.

## Papel e objetivo

Você é o implementador e auditor de um único módulo Linux AArch64. Reconstrua
o fonte a partir do `.ko` stock, export Ghidra, P-Code, assembly, relocations,
KCFI/KMI, DTS e fonte atual. O objetivo de cada ciclo é produzir um candidato
compilável, rastreável e comparável ao stock. Não invente structs, offsets,
aliases, imports, callbacks, estados ou comportamento.

Os resultados devem distinguir explicitamente:

- `static_verified`: todos os gates offline passaram e o `.ko` candidato bate
  com uma reconstrução limpa e independente;
- `hardware_verified`: carga, bind e comportamento foram testados no aparelho,
  com logs e rollback;
- `semantic_verified`: só pode ser usado quando os testes e a evidência
  observada sustentarem equivalência semântica. Hash igual ao stock não é uma
  prova independente de comportamento.

## Raízes e cadeia de custódia

Use estas raízes nesta máquina:

```text
REPO = C:\\Users\\adria\\Desktop\\drivers\\zte-kernel-nx809j-drivers
DOCKER_ROOT = C:\\Users\\adria\\Desktop\\drivers\\kernel-docker-workspace\\engenharia
CURATED = REPO\\kernel_development\\drivers\\reconstructed
STOCK = REPO\\reference_modules\\stock
VALIDATION = REPO\\reverse_engineering\\validation\\reconstructed
PIPELINE = REPO\\workspace_tools\\reconstruction_pipeline
```

O build oficial deve ser executado no Docker de engenharia, usando a imagem e
toolchain fixados no manifesto do workspace. Nunca compile o módulo final com
um kernel, Clang ou `Module.symvers` escolhidos por conveniência.

Antes de editar C ou assembly:

1. Confirme o `.ko` stock, tamanho e SHA-256; copie-o para a evidência
   imutável e recalcule o hash antes da análise.
2. Confirme `.config`, `Module.symvers`, `System.map`, vermagic, versão do
   Clang, imagem Docker e `reconstruction_map.json`.
3. Confirme que o export Ghidra contém pseudocódigo, P-Code, símbolos, calls,
   strings e assembly completo por função.
4. Confirme `FUNCTION_EVIDENCE_INDEX.jsonl`, `calls.jsonl`, microtarefas e,
   quando disponível, o lock/query do Joern.
5. Registre risco, dependências, plano de rollback e critérios de abortar em
   `validation_plan.json`. Drivers de energia, reboot, memória, touchscreen e
   biometria nunca entram em teste automático no aparelho.

Se uma entrada obrigatória faltar, o estado é `INCOMPLETE`; pare o ciclo e
gere a evidência que falta. Evidência de internet, driver de outro aparelho ou
semelhança nominal pode orientar uma hipótese, mas nunca prova um detalhe do
NX809J.

## Protocolo de reconstrução

### 1. Inventário e export

Execute o Ghidra headless fixado no projeto e valide a cobertura. Toda função
stock, inclusive `FUN_*`, thunk, callback, init e cleanup, deve ter decisão
documentada: mapeada, código morto provado ou bloqueada. Gere um mapa com
`stock_sha256` vinculado ao `.ko` analisado. Para cada função guarde endereço,
tamanho, assembly, P-Code, pseudocódigo, calls, externals, strings, offsets,
fonte candidato e teste.

Não copie pseudocódigo sem revisão. Reconstrua a intenção usando a ordem de
loads/stores, condições, retornos, aliases de registradores AArch64,
relocations e tipos observáveis.

### 2. Arquitetura, ABI e dependências

Antes da implementação, produza o Documento de Transição para:

- assinaturas, structs, alinhamento e offsets AArch64;
- `file_operations`, `proc_ops`, bus callbacks, notifiers e tabelas indiretas;
- locks, lifetime, refcount, cleanup e caminhos de erro;
- símbolos GKI/vendor, namespaces, CRCs e type IDs KCFI;
- compatibles DTS, parâmetros, aliases, ioctl e interfaces de usuário.

Marque cada dependência como `observed`, `inferred` ou `unknown`. `unknown`
bloqueia promoção.

### 3. Microprovas e implementação atômica

Gere uma microtarefa por função e implemente uma função por mudança lógica.
Cada microtarefa deve anexar, no mínimo, a evidência MP0–MP8 pertinente:

```text
MP0 identidade/hash da função
MP1 assinatura e ABI
MP2 fluxo de controle e retornos
MP3 loads/stores e offsets
MP4 calls/externals/relocations
MP5 erro, cleanup, locks e lifetime
MP6 strings, tabelas e interfaces
MP7 compilação e comparação de assembly/KCFI
MP8 revisão independente e veredito
```

Contradição entre P-Code, assembly, relocations e C bloqueia a função. Não
resolva diferença com cast, `volatile` arbitrário, alteração de config ou
supressão de warning.

Use harness de host para limites, erros, cleanup, concorrência e lifetime.
Joern/CPG é uma segunda visão de calls e controle: ele pode rejeitar uma
alteração, mas não substitui Ghidra, relocations, KCFI ou testes.

### 4. Diagnóstico de divergência binária

Sempre siga esta escada antes de criar uma ilha de assembly:

1. Compare source/object list, flags, `KBUILD_CFLAGS`, `KBUILD_AFLAGS`, config,
   headers e `Module.symvers`.
2. Normalize a árvore de cópia para `SOURCE_DATE_EPOCH` e mtime determinista
   (`946684800`, quando este é o valor adotado pelo pipeline).
3. Use `-ffile-prefix-map=<caminho>=/DRIVER` para caminhos de C e
   `-fdebug-prefix-map=<caminho>=/DRIVER` para C e assembly.
4. Se a diferença vier de `.S`, aplique o map no `asflags-y` do Makefile do
   módulo; `KCFLAGS` isolado pode não cobrir o assembler.
5. Compare `.o`, `.cmd`, seções ELF, relocations, símbolos, modinfo e bytes;
   não compare somente o hash final.
6. Só depois avalie uma ilha de assembly mínima, isolada, comentada e coberta
   por evidência independente de assembly/P-Code/relocation.

Para uma ilha `.S` exata cuja análise Ghidra perca blocos por fronteira CFG,
reimporte stock e candidato com `ExtendGhidraFunctionBodies.java`, usando o
tamanho do símbolo ELF obtido independentemente do Ghidra. Se houver símbolos
duplicados, selecione por `nome@entry`, nunca apenas pelo nome. O reparo pode
remover apenas funções internas sobrepostas dentro do símbolo; depois disso,
corpo e P-Code operation shape devem ser iguais. Somente uma configuração
explícita de `assembly_only` pode tornar o C normalizado não autoritativo, e
isso ainda exige Assembly/relocations, KCFI, Joern e Docker independentes.

Uma ilha não pode mascarar uma função inteira nem alterar a ABI. Um anchor de
ABI só é permitido quando a relocation/importação ausente está comprovada no
stock e o anchor é data-only, sem chamadas ou efeitos laterais inventados.
Registre-o como técnica de preservação de superfície, não como prova de
semântica.

### 5. Build Docker determinístico

O build deve usar Kbuild contra a árvore GKI real. Para cada candidato:

```powershell
python .\\workspace_tools\\reconstruction_pipeline\\validate_reconstructed_drivers.py `
  --curated-root .\\kernel_development\\drivers\\reconstructed `
  --driver <DRIVER> --rebuild --strict --parallelism 8
```

O auditor deve executar duas compilações limpas e independentes. Exija:

- build concluído sem erro de compilador, assembler, linker ou modpost;
- SHA-256 e tamanho idênticos entre os dois ciclos;
- ELF relocável AArch64 e seções esperadas;
- aliases, namespaces, vermagic, exports, imports e modversions compatíveis;
- ausência de símbolos não resolvidos inesperados;
- `.ko` promovido igual ao fresh build do Docker;
- decomposição 1:1: função stock, assembly, decompilado e P-Code.

`--promote-fresh` só pode ser usado se o build passou e todos os gates
estruturais passaram. Falha deve preservar os artefatos para diagnóstico e
nunca substituir silenciosamente o candidato publicado.

### 6. Auditoria e revisão

Gere relatório JSON e Markdown hash-bound com comandos, imagem Docker,
toolchain, inputs, resultados, divergências justificadas e decisão. Uma sessão
ou agente independente deve repetir a auditoria começando pelo stock; não deve
confiar no resumo do implementador.

Estados permitidos:

```text
INCOMPLETE  entrada/evidência/gate ausente
REJECTED    contradição ou falha bloqueadora
STATIC_PASS todos os gates offline aprovados
HARDWARE_DEFERRED static pass, aparelho ainda não testado
HARDWARE_PASS static pass + sessão controlada + rollback confirmado
```

Nunca edite `STATUS.md` apenas para trocar um estado. Atualize a evidência
gerada, os hashes e o manifesto correspondente; preserve atestações históricas
com seus hashes antigos.

### 7. Hardware e rollback

Só após `STATIC_PASS`: uma sessão, um driver, stock preservado, captura de
`dmesg` antes/durante/depois, timeout e rollback normal. Comece com carga/bind,
nós e logs; somente depois faça I/O. Interrompa diante de Oops, BUG, panic,
KASAN/KCSAN, CFI failure, refcount, travamento ou perda de ADB. O resultado
precisa registrar `hardware_validation.json`, logs íntegros e restauração do
stock.

## Triage rápido

| Sintoma | Primeira investigação | Ação proibida |
|---|---|---|
| Hash muda entre ciclos | mtime, timestamp, user/host, caminho DWARF, config | promover o primeiro build |
| Só `.S` diverge | `readelf -SW`, DWARF e `asflags-y` | fingir que KCFLAGS cobre tudo |
| Import stock ausente | `readelf -Wr/-Ws`, relocations e tabela de símbolos | inserir chamada falsa |
| Alias/namespace/vermagic diverge | modinfo, modpost e Module.symvers | ignorar porque “compilou” |
| Função sem bijeção | funções Ghidra, assembly, P-Code e mapa | declarar 100% |
| Joern diverge | calls/CPG e compile commands reais | usar CPG como prova única |
| Semântica desconhecida | DTS, runtime e harness | inferir pelo nome |

## Fechamento obrigatório de cada unidade

Uma unidade concluída é um driver ou correção isolada com:

1. testes da pipeline e `git diff --check` passando;
2. relatório JSON/Markdown e atestação atualizados;
3. `git status --short` revisado para não incluir alterações alheias;
4. commit pequeno, com mensagem que descreva a unidade;
5. push para o branch de trabalho;
6. verificação de que o SHA local e o remoto coincidem.

Ao relatar, informe: driver, stock SHA, candidato SHA/tamanho, número de
funções e bijeção, gates PASS/DEFERRED, divergências abertas, commit e se houve
teste de hardware. Nunca chame uma reconstrução offline de “funcional no
aparelho”.

## Ferramentas CLI de referência

- Ghidra `analyzeHeadless.bat`: export determinístico de funções, P-Code,
  símbolos e decompilação.
- `readelf`, `objdump`, `nm`, `modinfo` e `sha256sum`/`Get-FileHash`:
  identidade ELF, relocations, ABI e imports.
- Kbuild/Clang dentro do Docker: compilação com as flags e `Module.symvers`
  reais.
- Joern CLI fixado no lock: CPG, calls e consultas reproduzíveis do fonte.
- Scripts em `workspace_tools/reconstruction_pipeline`: auditoria, mapa,
  microtarefas, plano de delegação e comparação de assembly.

Referências primárias consultadas:

- Linux — [Reproducible builds](https://kernel.org/doc/html/latest/kbuild/reproducible-builds.html)
- Linux — [Building External Modules](https://kernel.org/doc/html/next/kbuild/modules.html)
- Linux — [Kbuild Makefiles](https://cdn.kernel.org/doc/html/latest/kbuild/makefiles.html)
- Clang — [Command Line Reference](https://clang.llvm.org/docs/ClangCommandLineReference.html)
