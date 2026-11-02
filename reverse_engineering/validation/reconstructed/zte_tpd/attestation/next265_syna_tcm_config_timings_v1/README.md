# syna_tcm_config_timings host and Joern review

Resultado atual: MP0 a MP4 passaram. O gate Joern estrito v4.0.548 confirmou
um metodo interno mapeado, zero chamadas nao resolvidas e nenhum delta de
chamadas mapeadas.

O harness foi executado em dois ciclos deterministas no Docker com ASan e
UBSan. Ele cobre o erro de settings nulos com fields 0xffff, fields sem
alteracoes, todos os seis grupos de timing, timings nulos com default,
valores zero nos campos de timings e fields 0xffff com estrutura valida.

O Assembly stock confirma que default_value e mutavel e pode ser zerado por
value_0c, value_00, value_04, value_20 ou value_24 antes dos campos seguintes.
O candidato preserva essa ordem, os offsets 0x1e8, 0x1ec, 0x208, 0x20c,
0x210, 0x214 e 0x218, e o unico retorno de erro -241.

Isto nao prova igualdade exata de opcodes, PAC/CFI, ABI final do modulo ou
comportamento fisico do hardware. MP7 aguarda build canonico/KCFI e MP8
aguarda revisao independente. Nao houve teste no smartphone.
