# Transição — rdbg

A reconstrução está INCOMPLETE. Três funções têm candidatos C versionados: on_interrupt_from@00101600, cleanup_module@00101974 e rdbg_release@001014cc. O microciclo de rdbg_release registra a compilação reproduzível em dois ciclos Docker, comparação de instruções/relocations, KCFI, Ghidra C/P-Code e análise Joern com fatia de usos.

cleanup_module foi comparada com igualdade de instruções, tamanho, seção, relocations, KCFI, P-Code e pseudocódigo normalizado. A normalização Ghidra foi necessária apenas para a expressão de endereço de g_rdbg_instance: os módulos REL recebem bases de seção diferentes no importador, enquanto o vínculo ELF e o offset relativo em .data coincidem. O relatório registra essa normalização e prova igualdade do corpo e do P-Code.

O build Docker é um candidato parcial de teste. O callback anchor em g_rdbg_instance.callback_test_anchor existe apenas para preservar a emissão KCFI enquanto rdbg_open ainda não foi implementada. Ele ocupa temporariamente o slot .data+0xa0 usado pelo símbolo stock rdbg_driver e precisa ser substituído pela definição real ao reconstruir o driver completo. O candidato não inclui as cinco funções restantes, não tem paridade de imports com o stock, não é um módulo canônico e não deve ser promovido nem carregado no aparelho.

O mapa mantém os três candidatos como implemented_pending_independent_review. O gate core de rdbg_release passou, mas não autoriza promoção: revisão independente, harness de host e evidências de lifetime permanecem pendentes. O microcandidato não representa paridade integral do módulo e não deve ser carregado no aparelho.

Continuar com rdbg_probe, rdbg_read, rdbg_write, rdbg_open e init_module, uma função por vez, mantendo o protocolo estrito. Revisão independente, paridade integral, seleção do device tree no aparelho e validação de hardware permanecem pendentes.
