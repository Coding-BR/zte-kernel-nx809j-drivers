# `zte_stats_info` - status da comparacao AArch64

## Resultado atual

O comparador `compare_function_assembly.py` foi executado contra o `.ko` stock
extraido da ROM e contra o candidato compilado com o manifesto do kernel alvo.
O resultado e **PASS em 8/8 funcoes na superficie estatica comparada**.

| Superficie | Resultado |
|---|---:|
| Funcoes solicitadas pelo export do Ghidra | 8/8 presentes |
| Funcoes com instrucoes normalizadas, relocacoes, secao e tamanho iguais | 8/8 |
| Funcoes cobertas pelo harness de host | 8/8 |
| Build reproduzivel | Sim |
| Validacao no smartphone | Pendente |

## Resultado por funcao

| Funcao | Instrucoes stock/candidato | Bytes stock/candidato | Estado |
|---|---:|---:|---|
| `__zte_lock_task_sighand` | 33/33 | 132/132 | PASS |
| `init_module` | 55/55 | 220/220 | PASS |
| `zte_add_del_listener` | 162/162 | 648/648 | PASS |
| `zte_cgroupstats_user_cmd` | 2/2 | 8/8 | PASS |
| `zte_mk_reply` | 71/71 | 284/284 | PASS |
| `zte_parse` | 57/57 | 228/228 | PASS |
| `zte_prepare_reply` | 67/67 | 268/268 | PASS |
| `zte_taskstats_user_cmd` | 473/473 | 1892/1892 | PASS |

O fechamento de `zte_taskstats_user_cmd` exigiu preservar a forma do fonte que
o Clang 19.0.1 materializa:

- variaveis locais separadas nos ramos register/deregister e PID/TGID;
- labels de cleanup independentes para as duas respostas Netlink;
- acumuladores `delta`, `utime` e `stime` locais no loop TGID;
- ordem de fonte `ac_btime` antes de `ac_btime64`, reproduzindo a selecao de
  registrador observada no stock.

Nenhum assembly inline foi introduzido.

## Evidencia reproduzivel

- Comparacao: `assembly_comparison.json`
- Assembly stock: `offline_static/stock_assembly/`
- Assembly candidato: `candidate_assembly/`
- Ghidra candidato: `offline_static/ghidra_candidate/`
- Fonte: `kernel_development/drivers/reconstructed/zte_stats_info/zte_stats_info.c`
- Harness: `kernel_development/drivers/reconstructed/zte_stats_info/tests/`

## Limite do resultado

O `PASS` vale para o contrato do comparador: instrucoes AArch64 normalizadas,
relocacoes, secao e tamanho de simbolo. Ele nao afirma que o ELF completo seja
byte-identico, nem prova a resposta do hardware ou do userspace real.

Nao promover este `.ko` como equivalente 100% sem revisao independente e
validacao dinamica da familia Generic Netlink em sessao controlada com rollback.
