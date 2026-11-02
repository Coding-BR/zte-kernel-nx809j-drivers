# Revisão de alcançabilidade — rodada 16

## Retry pelo proc entry

O stale pointer confirmado na rodada 15 é alcançável por uma sequência de escritas no proc entry `tp_self_test`:

1. `zte_touch_probe.c` registra `tp_self_test` com modo decimal `436`, isto é, octal `0664`, e associa `proc_ops_tp_self_test`.
2. `globals.c` aponta `proc_write` para `tp_self_test_write`.
3. A função chama `tp_alloc_tp_firmware_data(0x100000)` em cada escrita. O xref stock do Ghidra identifica a chamada em `0010cc74`.
4. Se a alocação falha, a montagem stock retorna `-12` sem chamar `tp_free_tp_firmware_data` nem limpar `cdev + 0xc58`.
5. Uma escrita seguinte reentra no allocator; a limpeza inicial lê o descriptor já liberado.

A falha depende de `vmalloc` não conseguir o bloco. A consequência exata do acesso inválido depende de reutilização/poisoning do kmalloc; esta revisão não afirma que o resultado é sempre um crash.

## Decisão

A branch atual continua representando o stock `OFFLINE_EXACT`. A correção apropriada é zerar `cdev + 0xc58` após o `kfree` no caminho de falha de `vmalloc`. Vou manter essa mudança como desvio explícito numa branch de hardening, sem invalidar a atestação stock.

## Evidência e limites

- O código C do allocator, do handler, da tabela `proc_ops` e do registro do proc entry coincide byte a byte entre o repositório e o snapshot curado Docker.
- O build canônico Docker mais recente passou em dois ciclos; nenhuma fonte mudou nesta revisão, então não foi refeito.
- Não forcei falha de `vmalloc` nem executei uma segunda escrita. Credenciais/ACLs de runtime e hardware NX809J não foram testados.
