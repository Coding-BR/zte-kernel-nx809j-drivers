# Revisão semântica do zte_tpd — rodada 14

## Mutex e limpeza do input device

Os três alertas Joern são um `mutex_lock` e dois `mutex_unlock`. Os retornos rápidos ficam antes do lock; depois dele, o sucesso destrava antes de retornar e as falhas passam pela limpeza comum que também destrava. Não encontrei lock sem par nem double-unlock.

A rotina usa `devm_input_allocate_device` e chama `input_free_device` quando `input_register_device` falha. Conferi o `drivers/input/input.c` do kernel alvo, commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`: nessa versão, `input_free_device` destrói o registro devres correspondente quando o objeto é gerenciado. Portanto, essa limpeza é apropriada. O caminho que registra o dispatcher retorna sucesso; o helper atual só falha para `tcm == NULL`, caso já excluído pelo uso do ponteiro antes dessa chamada.

## Falha de retry herdada do stock

Há uma falha concreta se `input_register_device` retornar erro e a rotina for chamada novamente com os mesmos parâmetros. Antes do registro, ela grava X, Y e quantidade de slots nos campos de cache (`0x3b8`, `0x3bc`, `0x3c0`). Se o registro falha, o novo input é liberado e a função retorna o erro, mas o cache permanece com os valores novos e o ponteiro do input continua nulo. Na próxima chamada, a comparação do cache passa e a função retorna `0` antes de verificar se existe um input registrado ou tentar registrá-lo outra vez.

Ghidra e a montagem stock confirmam a mesma ordem: stores em `0xd00c`, `0xd014` e `0xd01c`, seguidos por `input_register_device` em `0xd020`; o caminho de erro libera o input. O fast path compara os valores em cache e pode retornar antes de adquirir o mutex. O harness existente inclui uma falha única de registro, mas não repete a chamada com os mesmos parâmetros depois dela. A sequência de retry não foi executada dinamicamente.

Esse comportamento já existe no source reconstruído e no stock. Não alterei o C porque esta função faz parte da reconstrução offline-exata; mudar o retry seria uma correção de hardening com desvio semântico explícito. Se for endurecida depois, uma opção é atualizar o cache apenas após registro bem-sucedido ou exigir que o ponteiro do input esteja presente antes do fast path.

## Evidência

- Joern full-surface passou e contém exatamente os três alertas desta função; o hash do C para esta função coincide com a árvore atual.
- A atestação ASan/UBSan existente passou em 10 casos para o mesmo source hash, incluindo `registration_failure_is_preserved`; ela não cobre uma segunda chamada após falha. Não rodei o harness novamente.
- O build canônico da rodada 13 contém o mesmo hash do C desta função e passou em dois ciclos; como nada selecionado pelo Kbuild mudou nesta rodada, não repeti o build.
- A montagem, o C, o Ghidra e o P-Code continuam alinhados; `PROMOTED_OFFLINE_EXACT` permanece válido.

## Limites

A falha de retry está comprovada estaticamente e depende de uma falha de registro seguida de reentrada com os mesmos parâmetros. Android runtime e NX809J não foram testados; revisão humana independente não foi feita.
