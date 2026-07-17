# Validacao `zte_tpd` Proc Special Handlers - 2026-07-17

## Escopo

O harness especial inclui diretamente 14 funcoes:

- `tp_BBAT_test_read/write`;
- `tp_test_read/write`;
- `get_tp_noise_show/store`;
- `tp_self_test_read/write`;
- `tp_sensibility_level_read/write`;
- `tp_pen_only_read/write`;
- `tp_game_partition_read/write`.

## Cenarios Validados

Foram executados nove cenarios em duas repeticoes independentes:

1. writes BBAT e diagnostico preservam `count`;
2. BBAT usa callback `s64(void)` ou o fallback do estado local;
3. diagnostico cobre os tres resultados observados no stock;
4. ruido cobre callback, mutex, descritor, `vfree` e `kfree`;
5. sensibilidade cobre getter, setter, truncamento para `u8` e falha usercopy;
6. pen-only cobre getter, setter e parse invalido;
7. game partition cobre sucesso, limite de 1024 bytes e falha usercopy;
8. self-test write cobre alocacao, callback e `-ENOMEM`;
9. self-test read cobre buffer retornado, cleanup e `-ENOMEM`.

ASan e UBSan ficaram ativos. A fixture BBAT foi corrigida durante a validacao de
`int(void)` para `s64(void)` depois que o UBSan detectou a chamada por tipo
incompativel. O teste tambem confirmou que o fluxo stock de game partition gera
duas quebras de linha apos um ciclo write/read (`payload + "\n" + "\n"`).

## Atestacao

- Candidato SHA-256: `8bf17b48fd905e75504754ab13db24dbbe98ae6141953bc646a7b823d8bee29f`.
- KCFI das 14 funcoes: PASS no comparador atual.
- Novas microtarefas promovidas: `14`.
- Progresso anterior: `109/367`.
- Progresso atual: `123/367`.
- Pendentes: `244`.
- PASS obsoleto detectado: `0`.

## Evidencia

- `harness/proc_special_callbacks_harness.c`
- `proc_special_harness_report.json`
- `microtask_progress.json`
- `microtask_audit.json`
- `kcfi_direct_surface_final_comparison.json`
- `driver_audit_static_final.json`

Alocadores, mutex, procfs e usercopy sao modelos deterministas de host. O teste
nao cobre concorrencia real, firmware, SPI, IRQ, MMIO ou comportamento eletrico.
Nenhum comando foi enviado ao smartphone.
