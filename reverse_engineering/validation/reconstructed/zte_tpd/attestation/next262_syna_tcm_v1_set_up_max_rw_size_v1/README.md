# syna_tcm_v1_set_up_max_rw_size host and Joern review

Resultado atual: MP0 a MP4 passaram. O gate Joern estrito v4.0.548 confirmou
um metodo interno mapeado, zero chamadas nao resolvidas e nenhum delta de
chamadas mapeadas.

O harness foi executado em dois ciclos deterministas no Docker com ASan e
UBSan. Ele cobre tcm nulo, protocolo diferente de 1, limite de leitura pela
identificacao e pelo host, host sem limite de leitura, cap de escrita e
valores ja aplicados.

A revisao Ghidra + Assembly confirma os offsets 0x80, 0x96, 0x40, 0x44,
0x38 e 0x3c; o tamanho de leitura e limitado por
min(identify_max_write_size, host_max_read_size, max_read_size) quando
aplicavel, e vira max_read_size quando o host nao fornece limite. A escrita
e limitada por host_max_write_size somente quando host_max_read_size e
nao zero. Os dois erros retornam -241 e fazem um unico log.

A montagem candidata preserva 46 instrucoes e 184 bytes de simbolo, com a
mesma forma de branches e relocations observada no Assembly stock. Isto nao
prova igualdade exata de opcodes, PAC/CFI, ABI final do modulo ou
comportamento fisico do hardware. MP7 aguarda build canonico/KCFI e MP8
aguarda revisao independente. Nao houve teste no smartphone.
