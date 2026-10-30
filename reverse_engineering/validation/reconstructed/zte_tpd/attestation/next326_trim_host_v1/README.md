# `326_trim` host-only review

Resultado atual: `MP0` a `MP4` passaram. O harness foi executado duas vezes no
Docker com ASan e UBSan, cobriu oito casos e produziu o mesmo binário nos dois
ciclos.

O Assembly AArch64 do candidato preserva a forma semântica observada no stock:
retorno nulo, avanço por whitespace, `strlen`, varredura reversa e um único
store do terminador. Isso não prova igualdade exata de opcodes ou relocations.

A função ainda não foi promovida. `trim.c` permanece fora do Makefile canônico,
logo MP7 precisa de build/KCFI do módulo e MP8 precisa de revisão independente.
Não houve teste no smartphone.
