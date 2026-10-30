# `238_syna_tcm_testing_0001_check_device_id` host-only review

Resultado atual: `MP0` a `MP4` passaram. O candidato foi exercitado em dois
ciclos determinísticos dentro do Docker com ASan e UBSan; os dois ciclos
passaram, produziram o mesmo binário e não emitiram stderr.

Durante a revisão, o oracle encontrou uma divergência real na reconstrução:
o caminho de erro inicialmente omitia o argumento `s2` de `printk`. O Assembly
stock passa o formato, o nome da função, `a1` e `s2`. A chamada do candidato foi
corrigida e o harness foi repetido após a correção.

A revisão AArch64 confirma a mesma lógica observável: rejeição de ponteiros
nulos, limite `n <= 16`, varredura inclusiva de `0` a `16 - n`, pré-filtro pelo
primeiro byte, chamada bounded de `strncmp`, retorno `1` somente no casamento e
`printk` seguido de retorno `0` nos erros. A montagem não prova igualdade exata
de opcodes, relocations, CFI ou toolchain com o binário vendor.

A função ainda não foi promovida para equivalência completa. MP7 aguarda build
canônico/KCFI do módulo e MP8 aguarda revisão independente registrada. Não
houve teste no smartphone.
