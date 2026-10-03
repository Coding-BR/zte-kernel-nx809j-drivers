# `243_syna_tcm_testing_0002_check_config_id` host-only review

Resultado atual: `MP0` a `MP4` passaram. O harness foi executado duas vezes no
Docker com ASan e UBSan, cobrindo sete casos: entradas nulas, limite negativo,
limite zero, comparação inclusiva, mismatch no primeiro byte e mismatch no
último byte.

O Assembly AArch64 candidato preserva a forma semântica observada no stock:
guards nulos, teste do limite negativo, loads paralelos, loop inclusivo e
`printk` com nome da função, firmware e limite. A diferença de contagem textual
de branches vem da otimização do GCC e não substitui a comparação canônica.

A função ainda não foi promovida. O build completo do módulo, KCFI, relocations
e revisão independente L3 permanecem pendentes. Não houve teste no smartphone.
