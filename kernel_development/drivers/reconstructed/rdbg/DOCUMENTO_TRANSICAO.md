# Transição — rdbg

A microtarefa on_interrupt_from@00101600 está implementada como C e passou os gates estáticos limitados a essa função. O relatório on_interrupt_from_microtask_20261028/README.md resume os resultados, limites e hashes. O build Docker usa rdbg_irq_test_anchor.c apenas para preservar a emissão KCFI enquanto rdbg_open ainda não existe.

O artefato em docker_candidate_partial/rdbg_irq_test_candidate.ko é um módulo parcial de teste. Não é o módulo canônico, não deve ser promovido nem carregado no aparelho. A auditoria Docker completa permanece incompleta por desenho: sete funções continuam sem implementação e a lista de imports não corresponde ao módulo stock completo.

Continuar pelas funções restantes usando o protocolo estrito. rdbg_probe, rdbg_read, rdbg_write, rdbg_open, rdbg_release, init_module e cleanup_module ainda não têm implementação candidata. Não declarar reconstrução completa sem revisão independente, paridade de módulo e os gates restantes. Hardware continua fora do escopo desta microtarefa.
