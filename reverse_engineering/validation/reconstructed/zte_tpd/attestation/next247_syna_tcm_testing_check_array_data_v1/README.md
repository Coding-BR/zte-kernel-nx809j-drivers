# `247_syna_tcm_testing_check_array_data` host-only review

Resultado atual: `MP0` a `MP4` passaram. O harness foi executado em dois
ciclos determinísticos no Docker com ASan e UBSan; ambos passaram, produziram o
mesmo binário e não emitiram stderr.

O oracle cobre ponteiros nulos, comprimento zero, comprimento com sinal
negativo no registrador de 32 bits, agregação sem short-circuit, seleção do
deslocamento de `a3` por `a4 >= a2`, retorno mascarado por 1 e preservação dos
buffers. O helper `syna_tcm_testing_0100_check_data` foi isolado com a
assinatura de três argumentos comprovada pelo pseudocódigo e pelo Assembly.

A revisão AArch64 confirma a mesma forma semântica do stock: inicialização do
resultado em 1, loop com `a2 & 0x7fffffff`, ponteiro `a1 + index`, seleção
inclusiva de `a3 + index` ou `a3`, chamada do helper, AND acumulativo e log no
caminho de parâmetros inválidos. A montagem não prova igualdade exata de
opcodes, relocations, CFI ou toolchain com o binário vendor.

A função ainda não foi promovida para equivalência completa. MP7 aguarda build
canônico/KCFI do módulo e MP8 aguarda revisão independente registrada. Não
houve teste no smartphone.
