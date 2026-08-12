# syna_tcm_v1_read host and Joern review

Resultado atual: MP0 a MP4 passaram. O gate Joern estrito v4.0.548 confirmou
um metodo interno mapeado, zero chamadas nao resolvidas e nenhum delta de
chamadas mapeadas.

O candidato corrigiu duas divergencias encontradas na comparacao com o
Assembly stock: o callback de transporte agora recebe transport, data e
length, e o log do buffer nulo nao recebe um argumento extra. O harness foi
executado em dois ciclos deterministas no Docker com ASan e UBSan.

A matriz cobre buffer nulo, tamanho zero, tamanho maior que o destino,
limite maximo de escrita, transporte ausente, callback ausente, erro do
callback, resposta valida 0xa5 e resposta inesperada. A montagem candidata
confirma a chamada indireta com x0=transport, x1=data e x2=length.

Os retornos de erro observados pelo ABI sao 4294967055 (-241), 4294967051
(-245), 4294967291 (-5) e 4294967054 (-242), conforme o stock escreve w0 e
retorna. Isto nao prova igualdade exata de opcodes, PAC/CFI, ABI final do
modulo ou comportamento fisico do hardware. MP7 aguarda build canonico/KCFI
e MP8 aguarda revisao independente. Nao houve teste no smartphone.
