# Hardening do `tp_alloc_tp_firmware_data`

## Correção

A rodada 16 confirmou que o stale pointer era alcançável por escritas repetidas no proc entry `tp_self_test`. Cada escrita chama `tp_alloc_tp_firmware_data(0x100000)`; após uma falha de `vmalloc`, o handler retorna `-ENOMEM` sem limpar o estado global.

Nesta branch, a rotina agora zera `cdev + 0xc58` antes de liberar o descriptor. O disassembly do módulo gerado mostra `str xzr, [x21, #0xc58]` em `0xc200`, seguido por `kfree` em `0xc204`. O símbolo passa de 352 para 356 bytes: uma instrução AArch64 de 4 bytes a mais.

## Validação

- Repo e snapshot Docker têm o mesmo SHA-256 para o C: `a449712703852f5fefb9607da6f280fba3532ed53a94eca6498fa5af51d87dab`.
- O sincronizador Docker copiou somente `tp_alloc_tp_firmware_data.c` e encerrou sem divergências nos 848 inputs.
- O build canônico passou em dois ciclos independentes, com módulo SHA-256 `1d5fccb202e86121a784b9ac6f153bcb33ca2b626ed4efa41353002d9f54003f` e tamanho 6.291.368 bytes.
- Joern restrito à função passou em modo strict para o hash novo. Os três alertas heurísticos de lifetime continuam registrados.
- Não rodei o harness host antigo: ele espera o ponteiro dangling stock e está vinculado ao hash anterior.

## Estado da reconstrução e limites

A branch pai `reconstruction/zte-tpd-syna-release-attested` permanece stock-exata. Esta branch, `codex/zte-tpd-firmware-allocation-hardening`, registra um desvio intencional de hardening; a equivalência `OFFLINE_EXACT` não se aplica à função alterada.

A correção resolve a reentrada sequencial pelo proc entry. Não adiciona lock/refcount, portanto não cobre writers/consumidores concorrentes. Runtime Android, injeção real de pressão de memória e hardware NX809J não foram testados.
