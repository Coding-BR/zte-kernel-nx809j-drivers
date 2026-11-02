# Triagem semântica do zte_tpd — rodada 1

Esta rodada classificou os dois avisos de escrita GPIO, a entrada sysfs e a
saída para userspace destacados pelo Joern. Conferi o código atual, o
decompilado Ghidra, P-Code, assembly stock e os harnesses já versionados. Os
hashes das três funções no código atual correspondem aos hashes do mapa.

As escritas de syna_spi_hw_reset implementam o pulso de reset esperado: nível
ativo, atraso configurável, nível inativo, atraso de 80 ms e log. A comparação
cobre 36 instruções/144 bytes; o harness passou quatro casos em dois builds
idênticos. O comportamento real do GPIO ainda precisa de teste no NX809J.

O kstrtouint de syna_sysfs_debug_store limita a entrada aos estados 0 e 1;
erro de parse retorna -22. A comparação cobre 78 instruções/312 bytes e o
harness passou nove casos em dois builds idênticos. A revisão encontrou,
porém, um risco importante no erro de criação do grupo sysfs:

1. debug_dir recebe o ponteiro de kobject_create_and_add.
2. Se sysfs_create_group falha, o código chama kobject_put(debug_dir) e
   retorna sem zerar o campo.
3. O harness existente confirma que debug_dir continua não nulo depois do
   kobject_put.
4. Uma escrita posterior de desativação tenta remover o grupo e liberar de
   novo o ponteiro retido.

A documentação do kernel descreve kobject_put como redução da referência, com
limpeza do objeto quando ela chega a zero
([Driver Basics — Kernel objects](https://kernel.org/doc/html/latest/driver-api/basics.html)).
Assim, o código mantém um ponteiro pendente e pode causar uso após liberação ou
dupla liberação quando a referência final é descartada. O harness atual apenas
registra a chamada; ele não modela a referência real do kernel nem executa a
desativação posterior sobre um objeto efetivamente liberado.

O candidato reproduz o comportamento stock no Ghidra, P-Code e assembly.
Mantive o fonte reconstruído intacto para preservar equivalência. O risco fica
registrado como uma correção de segurança separada; alterar este caminho dentro
da reconstrução invalidaria a comparação exata.

Em tp_pen_only_read, o código imprime um valor de estado de um byte em um
buffer local de 10 bytes e entrega o resultado a simple_read_from_buffer.
O harness passou quatro casos em dois builds idênticos, incluindo offset,
leitura curta e callback opcional. Não encontrei divergência no caminho de
userspace; a propriedade do callback e o ciclo de vida do dispositivo ainda
dependem da revisão das funções chamadoras.

Esta é uma triagem estática parcial, não a revisão humana independente exigida
pelo protocolo. Foram classificados 4 dos 128 achados Joern. Permanecem
abertos o risco de lifetime identificado, a chamada recuperada por fallback
em syna_dev_helper_work, os demais achados de lifetime/sincronização e a
validação física.
