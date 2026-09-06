# `153_syna_ts_check_dt` Joern-first host review

Resultado atual: `MP0` a `MP4` passaram. O gate Joern estrito v4.0.548 foi
executado antes e depois da correção do candidato; o resultado final passou
com um método interno mapeado, zero chamadas não resolvidas e zero deltas de
chamadas mapeadas.

O harness foi executado em dois ciclos determinísticos no Docker com ASan e
UBSan. Ele cobre ausência de phandles, resolução do primeiro e de um painel
posterior, `-19` (`-ENODEV`), `-517` (`-EPROBE_DEFER`), erro desconhecido,
falha do parser e preservação dos efeitos globais observáveis.

A revisão Ghidra + Joern confirma a forma semântica: conta os phandles `panel`,
zera o argumento de saída a cada iteração, chama o parser com o índice atual,
registra o nome do nó quando o parser fornece um nó, chama
`of_drm_find_panel`, copia no máximo 100 bytes para `DEVICE_NODE_NAME`, salva
`active_panel`, continua em erros e retorna o último código observado. A
correção aplicada foi a passagem de `*v8` como terceiro argumento do log do nó,
conforme a string `%s: %s: node = %s` e o Assembly stock.

A montagem candidata foi gerada com GCC AArch64 13.3.0. Ela não prova igualdade
exata de opcodes, relocations, PAC/CFI, canário de stack, ABI do módulo ou
comportamento físico do hardware. O shim `host_read_status_reg` existe apenas
para gerar Assembly freestanding e não é código de produção.

A função ainda não foi promovida para equivalência completa. MP7 aguarda build
canônico/KCFI do módulo e MP8 aguarda revisão independente registrada. Não
houve teste no smartphone.
