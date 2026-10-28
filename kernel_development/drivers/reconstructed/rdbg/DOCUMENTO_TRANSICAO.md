# Transição — rdbg

A reconstrução está INCOMPLETE. Quatro funções têm candidatos C versionados: on_interrupt_from@00101600, cleanup_module@00101974, rdbg_release@001014cc e rdbg_open@00100ecc. O microciclo de rdbg_open registra oito gates core aprovados, comparação exata de instruções/relocations, KCFI, Ghidra C/P-Code com normalização restrita da expressão de proc_info, análise Joern com fatia de usos e quatro builds Docker reproduzíveis entre a árvore principal e o snapshot curated.

cleanup_module foi comparada com igualdade de instruções, tamanho, seção, relocations, KCFI, P-Code e pseudocódigo normalizado. A normalização Ghidra foi necessária apenas para a expressão de endereço de g_rdbg_instance: os módulos REL recebem bases de seção diferentes no importador, enquanto o vínculo ELF e o offset relativo em .data coincidem. O relatório registra essa normalização e prova igualdade do corpo e do P-Code.

O callback anchor de teste foi removido quando rdbg_open foi implementada. Os quatro candidatos continuam em revisão pendente; o audit completo do módulo permanece incompleto, sem paridade total de imports/vermagic e sem artefato .ko canônico promovido. O candidato não inclui as quatro funções restantes, não é um módulo canônico e não deve ser promovido nem carregado no aparelho.

O mapa mantém os quatro candidatos como implemented_pending_independent_review. O gate core de rdbg_open passou, mas não autoriza promoção: revisão independente, harness de host e evidências de lifetime permanecem pendentes. O microcandidato não representa paridade integral do módulo e não deve ser carregado no aparelho.

Continuar com rdbg_probe, rdbg_read, rdbg_write e init_module, uma função por vez, mantendo o protocolo estrito. Revisão independente, harness de host, evidências de lifetime, paridade integral, seleção do device tree no aparelho e validação de hardware permanecem pendentes.
