# Revisão inicial — `tp_edge_report_limit_read`

Estado: `INITIAL_REVIEW_OPEN` — não é aprovação de segurança nem revisão independente.

## Escopo e evidência

O alvo é a função stock `0010b150`, com corpo de 1340 bytes, microtarefa
`053_tp_edge_report_limit_read`. O C é mantido como vista semântica e o
assembly exact é o objeto efetivamente ligado; o Makefile exclui o C desta
função.

| Item | SHA-256 |
|---|---|
| C reconstruído | `1254c90f0156966eafdfbba5e080c608d10f6a8153c3493c7d6363bc3ebf3d9f` |
| Assembly exact | `e1f66d21b8253b663914abec0ad71b13571532993aee23ecb9d37c25d52ae29b` |
| Decompilação Ghidra | `4f671bece85c17fc289975a26f84a09f9895ea4979b66f7f11f7401810bc814d` |
| P-Code Ghidra | `7b745c947567bb2ffc880aefa2f17e145cbba726349e7779180b42c938812bf0` |
| Joern full-driver | `7a06c9c47f575222d8479975f6630e4847ae7832c2183556ca092af87765cd56` |
| Joern da atestação | `7aacb3ed0e213993110f06450a9be831d157d21b2a7b43d1e21e0233a344655b` |
| Joern summary | `77b3ec5e345325c134f5296d92f454ba6dedf44f21f29ee7f46b024fb9edaa3d` |

## Normalização dos achados Joern

O relatório específico contém quatro registros: dois de lifetime para o
modelo duplicado `kmalloc`/`kzalloc`, dois de `simple_read_from_buffer` e dois
de `kfree`. Eles correspondem ao fluxo real de uma alocação, uma cópia para
userspace e uma liberação. O gate estrito passou com um método mapeado, zero
blockers, zero problemas de parsing e zero chamadas não resolvidas.

Os alertas `lifetime` e `userspace_egress` são pontos de revisão. Joern não
prova sozinho que o tamanho formatado é válido para todos os estados de
`tpd_cdev`, nem substitui a verificação da semântica de `simple_read_from_buffer`.

## Cruzamento C, Ghidra, P-Code e assembly

As vistas preservam a mesma sequência:

1. retornam zero quando `*offset` já é diferente de zero;
2. carregam `tpd_cdev` e alocam um buffer de 4096 bytes;
3. copiam para o buffer as instruções textuais fixas do procfs;
4. acrescentam os campos atuais de `tpd_cdev` com `snprintf`, incluindo os
   quatro valores de `click_pixel` e os quatro de `long_press_pixel`;
5. chamam `simple_read_from_buffer` com o buffer e o comprimento formatado;
6. liberam o buffer com `kfree` e retornam o comprimento produzido;
7. retornam `-ENOMEM` no caminho de falha da alocação.

O parâmetro de alocação aparece como `3520` no C e `0xdc0` em Ghidra, ambos
com flags `4096`/`0x1000`; a diferença de apresentação é apenas notação. Os
offsets de estado coincidem com o par write: `+27`, `+36`, `+62`, `+38..+42`,
`+37`, `+60`, `+56` e `+52..+55`. A atestação registra paridade de
instruções, relocations, seção e tamanho.

## Contratos e riscos residuais

O retorno é `v22`, o comprimento total formatado, e não o número efetivamente
copiado para o buffer de userspace. Isso é comportamento do stock: mesmo que
`count` seja menor que a saída, a função ignora o retorno de
`simple_read_from_buffer`. Não deve ser “corrigido” nesta reconstrução exact
sem uma decisão explícita de alteração de ABI.

O buffer de 4096 bytes é preenchido com strings fixas e `snprintf` limitado.
Ainda assim, a revisão física deve confirmar que todos os valores lidos de
`tpd_cdev` são válidos durante o ciclo procfs e que não existe concorrência
com teardown ou com `tp_edge_report_limit_write`. A função não valida
`tpd_cdev` nulo, conforme o stock.

O harness atual cobre três casos, executados duas vezes com ASan/UBSan:
leitura completa e formatação dos campos, cursor não nulo retornando EOF e
falha de alocação. Não há casos dedicados para `count` menor que a saída,
`buffer` nulo, offset negativo, estado concorrente ou cada fronteira de
formatação.

## Gates offline

A atestação `next506_tp_edge_report_limit_read_exact_v2` registra 335/335
instruções, 1340/1340 bytes, 66/66 relocations e KCFI `0xf4e9d97c`. O build
canônico Docker passou em dois ciclos independentes e o harness ASan/UBSan
passou em dois ciclos com três casos. Smartphone, Android input subsystem,
firmware e hardware NX809J não foram executados.

## Decisão e pendências

Decisão: **não há divergência nova comprovada no objeto exact**. A revisão
permanece aberta para a ABI de retorno em buffers pequenos, o ciclo de vida
de `tpd_cdev` e a cobertura ausente. Nenhuma alteração de produção, status ou
mapa foi feita.

Pendências:

1. adicionar casos de buffer pequeno, buffer nulo e offsets negativo/não nulo;
2. revisar com o mantenedor a escolha stock de retornar `v22` em vez do
   número copiado;
3. provar o ciclo de vida e a exclusão mútua entre leitura, escrita e teardown
   no procfs;
4. executar validação Android/NX809J com rollback controlado e registrar a
   decisão independente.

`PROMOTED_OFFLINE_EXACT` continua significando apenas equivalência
estática/offline do objeto, não autorização de uso em hardware.
