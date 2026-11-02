# `354_tpd_set_play_game` Joern-first host review

Resultado atual: `MP0` a `MP4` passaram. O gate Joern estrito v4.0.548
confirmou um método interno mapeado, zero chamadas não resolvidas e nenhum
delta de chamadas mapeadas.

O harness foi executado em dois ciclos determinísticos no Docker com ASan e
UBSan. Ele cobre ponteiro interno ausente (`-EINVAL`), modo suspendente,
modo já aplicado, transição normal, limite derivado do estado ZTE e falha do
callee `syna_dev_set_play_game`.

A revisão Ghidra + Joern confirma a ordem observável: o log de entrada ocorre
antes da leitura do contexto; o limite é zero quando `is_*` e sua flag estão
ativos e, caso contrário, vem de `root + 0x20c`; somente o modo `1` chama o
callee; a mudança grava `v4 + 0x5dc` antes da chamada; retorno não-negativo do
callee é sucesso; erros e modo suspendente retornam `cdev + 0x10`. O candidato
foi corrigido para não passar o limite como argumento extra nos logs de erro,
pois o Assembly stock chama `_printk(format, function)` nesses caminhos.

A montagem candidata foi gerada com GCC AArch64 13.3.0. Ela não prova
igualdade exata de opcodes, relocations, PAC/CFI, ABI do módulo ou comportamento
físico do hardware. A função ainda não foi promovida para equivalência
completa: MP7 aguarda build canônico/KCFI e MP8 aguarda revisão independente.
Não houve teste no smartphone.
