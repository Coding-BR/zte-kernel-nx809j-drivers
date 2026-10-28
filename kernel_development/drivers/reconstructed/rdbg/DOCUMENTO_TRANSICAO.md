# Transição — rdbg

A reconstrução está INCOMPLETE. Os dois microciclos versionados são on_interrupt_from@00101600 e cleanup_module@00101974. Cada um tem evidência separada e comparações estáticas por função.

cleanup_module foi comparada com igualdade de instruções, tamanho, seção, relocations, KCFI, P-Code e pseudocódigo normalizado. A normalização Ghidra foi necessária apenas para a expressão de endereço de g_rdbg_instance: os módulos REL recebem bases de seção diferentes no importador, enquanto o vínculo ELF e o offset relativo em .data coincidem. O relatório registra essa normalização e prova igualdade do corpo e do P-Code.

O build Docker é um candidato parcial de teste. O callback anchor em g_rdbg_instance.callback_test_anchor existe apenas para preservar a emissão KCFI enquanto rdbg_open ainda não foi implementada. Ele ocupa temporariamente o slot .data+0xa0 usado pelo símbolo stock rdbg_driver e precisa ser substituído pela definição real ao reconstruir o driver completo. O candidato não inclui as seis funções restantes, não tem paridade de imports com o stock, não é um módulo canônico e não deve ser promovido nem carregado no aparelho.

Continuar com rdbg_probe, rdbg_read, rdbg_write, rdbg_open, rdbg_release e init_module, uma função por vez, mantendo o protocolo estrito. Revisão independente, paridade integral, seleção do device tree no aparelho e validação de hardware permanecem pendentes.
