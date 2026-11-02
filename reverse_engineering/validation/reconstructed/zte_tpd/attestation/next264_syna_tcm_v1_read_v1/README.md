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
confirma a chamada indireta com x0=transport, x1=data e x2=length. A repetição
atual passou os nove casos em dois ciclos, com o mesmo binário SHA-256
`89ab5102c55e98326e01daf8c47e208dad294f73e1ded1d81258c3156c0179c0`; o
relatório `host_harness_report_v2.json` tem SHA-256
`5c199caca2714b844023746cfe5e4704e0f230bff7314c3b619b38a36db09971`.

Os retornos de erro observados pelo ABI sao 4294967055 (-241), 4294967051
(-245), 4294967291 (-5) e 4294967054 (-242), conforme o stock escreve w0 e
retorna. Isto nao prova igualdade exata de opcodes, PAC/CFI, ABI final do
modulo ou comportamento fisico do hardware. MP7 aguarda build canonico/KCFI
e MP8 aguarda revisao independente. Nao houve teste no smartphone.
