# Revisão semântica do zte_tpd — rodada 15

## Ownership do firmware na falha de vmalloc

O Joern marcou três chamadas como alertas de lifetime: o `kfree` da estrutura anterior, o `kmalloc` da nova estrutura e o `kfree` do caminho de falha. Os dois primeiros correspondem a transições de ownership esperadas. O caminho de falha revela o problema real.

Quando `vmalloc(size + 0x18)` falha, a rotina libera o descriptor apontado por `cdev + 0xc58` e retorna `-ENOMEM`, mas não zera esse slot global. Se a função for chamada novamente, a limpeza inicial pode ler campos do descriptor já liberado e tentar liberar conteúdo reutilizado, além de liberar o descriptor outra vez. Isso cria risco condicional de use-after-free e double-free.

## Confirmação contra stock e Ghidra

O C reconstruído, a decompilação, o P-Code e a sequência AArch64 confirmam a mesma ordem. No caminho de falha, o P-Code carrega o slot em `00107e34` e retorna `-12` em `00107e3c`, sem store de NULL em `cdev + 0xc58`. A comparação anterior de stock e candidato passou com 88 instruções e símbolo de 352 bytes.

O estado continua `PROMOTED_OFFLINE_EXACT`. Mantive a sequência stock: zerar o slot seria uma correção de hardening que altera a equivalência offline e deve ser rastreada como desvio separado.

## Joern, Docker e harness

- Joern full-surface passou em modo estrito; os três alertas correspondem ao hash atual do C.
- O C do repositório e o C curado para Docker têm o mesmo SHA-256: `03a7e3e619d072f6d445f3cc3f535041fc9d6879f0c27fa96ac0311e59c9a336`.
- O build canônico Docker da rodada 13 passou em dois ciclos reproduzíveis, com 848 entradas e módulo SHA-256 `5c464fbd0b21907b80b1941f183f32b406ad080bc4ce9d58a6482e987c18b4eb`. O relatório inclui esse hash no snapshot curado; Kbuild seleciona a montagem stock exata para esta função.
- O harness ASan/UBSan existente passou 12/12 casos em duas execuções para esse hash. Ele cobre a falha de alocação e registra o slot dangling, mas não chama a rotina novamente após a falha. Não rodei o harness nesta rodada.

## Limites

A consequência na chamada seguinte foi confirmada estaticamente, mas não executada dinamicamente. Não houve alteração de fonte nem novo build porque esta rodada só registra a revisão. Runtime Android e hardware NX809J continuam sem validação.
