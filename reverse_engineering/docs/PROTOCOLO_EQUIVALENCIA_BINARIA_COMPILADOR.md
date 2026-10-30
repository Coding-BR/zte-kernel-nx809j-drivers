# Protocolo de Equivalencia Binaria Sensivel ao Compilador

[Portugues](#portugues) | [English](#english)

## Portugues

### 1. Objetivo e alcance

Este documento e normativo para toda microtarefa em que o fonte candidato
preserva a logica aparente do modulo stock, mas o Clang emite outra sequencia de
instrucoes, outro formato P-Code ou outro callsite KCFI. O objetivo nao e obter
bytes iguais por estetica. O objetivo e impedir que diferencas de ABI, largura,
ordem de efeitos, controle ou hardening sejam escondidas como simples variacao
do compilador.

O `.ko` stock local continua sendo o oraculo. Repositorios publicos, codigo de
aparelhos semelhantes e pseudocodigo isolado nao podem autorizar uma excecao.

### 2. Modelo de prova em camadas

Cada camada responde a uma pergunta diferente e possui poder de veto:

| Camada | Prova exigida | O que ela nao prova |
|---|---|---|
| Fonte/Joern | funcao presente, CPG parse-clean, controle e chamadas mapeadas | layout, KCFI ou codigo de maquina |
| Harness | retornos, erros, estado, locks simulados e efeitos observaveis | ABI AArch64 ou hardware real |
| ELF/KCFI | simbolo, secao, tamanho, relocacoes e type IDs | equivalencia funcional completa |
| Ghidra/P-Code | ordem e forma das operacoes de maquina normalizadas | comportamento eletrico nao observado |
| Assembly | instrucoes, registradores, larguras e callsites emitidos | ambiente fisico fora da funcao |

Nenhuma camada substitui outra. Um `PASS` Joern ou harness nao pode neutralizar
uma falha KCFI/P-Code. Da mesma forma, bytes iguais nao substituem testes de
erros, lifetime e concorrencia.

### 3. Escada obrigatoria de resolucao

1. Congele os hashes do `.ko` stock, fonte candidato, headers, `.config`,
   `Module.symvers`, imagem Docker e revisao Clang.
2. Extraia para a funcao stock o Assembly integral, relocacoes, P-Code,
   pseudocodigo, strings resolvidas e registros KCFI.
3. Implemente primeiro em C comum, com tipos, sinal, largura, offsets e
   prototipos comprovados. Nao introduza `volatile`, barriers, casts ou atributos
   apenas para tentar mover instrucoes.
4. Execute dois builds canonicos limpos, Joern estrito, KCFI, comparador Ghidra
   estrito e harness ASan/UBSan repetido.
5. Se o C falhar apenas na emissao, reduza a divergencia ao menor bloco e
   registre instrucoes stock/candidato lado a lado. Inspecione LLVM IR quando a
   origem ainda nao estiver clara.
6. Tente primeiro corrigir o contrato C: tipo nominal, prototipo do ponteiro,
   signedness, tamanho, aliasing, condicao ou ordem real de efeitos.
7. Somente se a mesma divergencia permanecer e o Assembly/P-Code stock provar a
   sequencia, use uma ilha de assembly minima para o trecho sensivel.
8. Reexecute todos os gates a partir do hash novo. Evidencia gerada antes da
   edicao fica obsoleta.

### 4. Regras para uma ilha de assembly AArch64

Uma ilha e permitida apenas quando todas as condicoes abaixo forem atendidas:

- o trecho stock esta integralmente coberto por Assembly e P-Code hashados;
- a razao da divergencia do Clang esta documentada;
- o bloco e menor que a funcao e nao recria prologo, epilogo ou stack frame;
- entradas usam operandos nomeados e constraints explicitas;
- todos os registradores, flags e memoria alterados aparecem nos clobbers;
- largura `wN`/`xN`, extensao, alinhamento e endianness seguem o stock;
- branches locais usam labels locais seguros;
- chamadas indiretas preservam argumentos AAPCS64, KCFI, PAC/BTI e efeito de
  memoria observados;
- existe caminho C separado para o harness de host, sem fingir que ele testa o
  assembly AArch64;
- o Ghidra candidato volta a passar de forma estrita.

Nao e permitido:

- marcar a funcao inteira como `naked` para eliminar codegen;
- copiar opcodes com `.inst` sem provar a instrucao e suas relocacoes;
- omitir `memory`, `cc` ou registradores clobbered para obter bytes desejados;
- usar valor de registrador nao inicializado;
- desativar KCFI, stack protector, PAC, BTI ou outra protecao global;
- aceitar crash, warning ou undefined behavior porque o stock possui sequencia
  parecida;
- promover com comparacao "relaxada" quando o gate estrito ainda detecta uma
  diferenca de efeito.

### 5. Classificacao das divergencias

| Classe | Exemplo | Decisao |
|---|---|---|
| Layout inevitavel | offset diferente em `.rodata`, mas string resolvida e relocacao semanticamente iguais | pode ser justificado pelo comparador resolvido |
| Emissao equivalente | registradores temporarios diferentes com P-Code estrito identico | aceitavel somente com relatorio hashado |
| ABI/hardening | type ID KCFI, largura de argumento, `brk`, PAC/BTI ou callsite diferente | bloqueador ate ficar exato |
| Efeito observavel | load/store, lock, chamada, retorno ou ordem diferente | bloqueador |
| Desconhecida | diferenca sem causa reproduzida | bloqueador |

Offsets crus de `.rodata` dependem do layout do modulo completo. Compare a
identidade da relocacao e o conteudo resolvido da string, nunca apenas o numero
do offset. Para callsites KCFI e MMIO, a regra e mais forte: imediato, largura,
ordem e branch precisam corresponder ao oraculo.

### 6. Gates de aceitacao

Uma microtarefa sensivel ao compilador so pode receber `PASS` quando:

1. dois builds canonicos limpos produzem o mesmo SHA-256;
2. o ELF candidato e AArch64 relocatable e passa KMI/paridade aplicavel;
3. o KCFI da funcao e de todos os callsites indiretos do escopo passa;
4. tamanho do corpo e contagem de instrucoes coincidem ou possuem justificativa
   formal nao relacionada a efeito;
5. `compare_ghidra_function_semantics.py` passa em modo estrito;
6. o Joern estrito cobre a funcao na arvore C/H atual sem parse problems;
7. o harness direto passa ao menos duas vezes com ASan/UBSan e binario
   reproduzivel;
8. os relatorios apontam para o mesmo hash do candidato e do fonte;
9. a atestacao seletiva promove somente a funcao escolhida;
10. hardware continua `DEFERRED` ate o protocolo fisico separado ser executado.

Comandos-base do projeto:

```powershell
python .\workspace_tools\reconstruction_pipeline\run_zte_tpd_canonical_build.py `
  --engineering-root <engenharia> --label <run-id> --audit-name <run-id> `
  --cycles 2 --parallelism 4 --candidate-source <fonte> `
  --artifact-root <artefatos> --output <build.json>

python .\workspace_tools\reconstruction_pipeline\extract_module_assembly.py `
  <candidato.ko> --function <funcao> --output-dir <assembly>

python .\workspace_tools\reconstruction_pipeline\compare_ghidra_function_semantics.py `
  --stock-export <ghidra-stock> --candidate-export <ghidra-candidato> `
  --candidate-module <candidato.ko> --function <funcao> --output <ghidra.json>

python .\workspace_tools\reconstruction_pipeline\run_joern_reconstruction_gate.py `
  --driver <driver> --function <funcao> --source-root <fonte> `
  --source-view-root <source-view> --ghidra-export <ghidra-stock> `
  --reconstruction-map <mapa.json> --output-dir <joern> `
  --joern-home <joern-fixado> --strict
```

### 7. Caso de referencia: `suspend_store`

O Clang preservava a logica C, mas escolhia outra materializacao do imediato e
outra ordem para os argumentos da chamada indireta. Tentativas com variaveis
presas a registradores duplicaram movimentos e aumentaram a funcao de 276 para
284 bytes. A solucao aceita foi restringir ao bloco comprovado
`mov/ldur/movk/cmp/brk/blr` uma ilha AArch64 com inputs e clobbers explicitos.

O resultado voltou a 276 bytes e 69 instrucoes. Stock e candidato produziram
222 registros P-Code e passaram o comparador Ghidra estrito, com KCFI
`0xc3d43b4d`. Este caso prova o protocolo, mas nao autoriza copiar a mesma ilha
para outra funcao: cada callsite possui tipo, registradores e efeitos proprios.

### 8. Fontes tecnicas

- [LLVM Language Reference: inline assembly and constraints](https://llvm.org/docs/LangRef.html#inline-assembler-expressions)
- [Clang Control Flow Integrity: KCFI](https://clang.llvm.org/docs/ControlFlowIntegrity.html#fsanitize-kcfi)
- [Linux kernel assembler annotations](https://docs.kernel.org/core-api/asm-annotations.html)
- [Ghidra language and P-Code specification](https://ghidra.re/ghidra_docs/languages/index.html)
- [Ghidra P-Code operation reference](https://ghidra.re/ghidra_docs/languages/html/pcodedescription.html)

## English

### 1. Mandatory decision

Compiler-sensitive reconstruction uses a layered translation-validation
protocol. Normal C remains the default. A minimal AArch64 assembly island is
allowed only after the stock ELF, P-Code, KCFI, ABI and exact divergent block
have been proven and ordinary C contract fixes have failed.

The island must declare named inputs and every register, flag and memory
clobber. It must not reproduce a whole function, prologue, epilogue or stack
frame. A separate C path is required for host testing, and that path does not
claim to execute the AArch64 instructions.

### 2. Required acceptance cycle

1. Freeze all stock, source, toolchain, config and symbol hashes.
2. Build twice in the pinned container and require one module SHA-256.
3. Compare ELF, symbol size, relocations and KCFI.
4. Export the candidate with the pinned Ghidra and require strict normalized C
   and P-Code operation-shape equality.
5. Run the pinned Joern gate against the current C/header tree.
6. Run the direct ASan/UBSan harness at least twice and require a reproducible
   host binary.
7. Re-run every report after any source or header change.
8. Promote only the selected microtask and keep hardware validation deferred.

Raw `.rodata` offsets are layout-dependent and must be compared through the
resolved relocation target and content. KCFI, MMIO, call width, branch, load,
store, lock and return differences are blocking. An unexplained difference is
also blocking.

### 3. Prohibited shortcuts

- whole-function `naked` attributes;
- opaque `.inst` copies without decoded instruction and relocation evidence;
- missing clobbers or undefined register inputs;
- global hardening disablement;
- relaxed comparison used to hide a semantic difference;
- claiming hardware equivalence from static evidence.

The `suspend_store` reconstruction is the reference implementation of this
protocol: its minimal KCFI/callback island restored 276-byte, 69-instruction and
222-record strict P-Code parity while keeping host behavior independently
tested.
