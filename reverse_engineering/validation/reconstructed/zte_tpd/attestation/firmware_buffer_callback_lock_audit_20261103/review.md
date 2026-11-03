# Auditoria estática do buffer de firmware e callbacks — 2026-11-03

## Resultado

A revisão cruzada de Ghidra, assembly stock, inventário de chamadas, fontes da branch hardening e Joern não encontrou defeito adicional nos nove caminhos de buffer. A ordem estática observada é `tp_firmware_data_mutex` → `cmd_mutex`; o alocador e o helper de cópia usam somente `cmd_mutex`. As nove funções continuam marcadas `HARDENED_STOCK_DEVIATION`; esta auditoria não as promove a equivalência stock-exact.

## Joern atual

O gate estrito terminou em `PASS`, sem problemas de parser ou blockers, com identidade/cobertura de 9/9 funções. Ele emitiu 56 callsite markers, todos retidos no relatório:

| Função | Mutex | Lifetime | Egress |
|---|---:|---:|---:|
| `get_tp_noise_show` | 4 | 0 | 1 |
| `get_tp_noise_store` | 4 | 1 | 0 |
| `tp_alloc_tp_firmware_data` | 4 | 3 | 0 |
| `tp_self_test_read` | 0 | 3 | 1 |
| `tpd_copy_to_tp_firmware_data` | 5 | 0 | 0 |
| `tpd_sysfs_fwimage_show` | 12 | 1 | 0 |
| `tpd_sysfs_fwimage_store` | 10 | 0 | 0 |
| `tpfwupgrade_store` | 4 | 3 | 0 |

Os 43 itens de sincronização são 12 chamadas `mutex_lock` e 31 `mutex_unlock`; Joern contabiliza os callsites, sem provar inversão de lock. Os 11 itens de lifetime são nove `kfree` e duas `kmalloc`; a revisão conferiu seus ramos de substituição, falha, EOF e limpeza junto aos mutexes. Os dois itens de egress são `simple_read_from_buffer` para strings locais limitadas. O protocolo classifica esses resultados como seletores de revisão, não prova de vulnerabilidade. O relatório completo, manifesto e inventário estão sob `joern_current/`; os CPGs internos são intermediários regeneráveis e não foram incluídos no commit.

## Callback e flags stock

- O Ghidra stock mostra `zte_touch_probe` alocando `0x1008` bytes com flags `0xdc0`. Nos headers do kernel NX809J montados somente leitura pelo Docker, `GFP_KERNEL = 0xcc0` e `__GFP_ZERO = 0x100`. Assim, os slots +`0xe18` (`FW_upgrade`) e +`0xee8` (`get_noise`) iniciam zerados.
- A rotina stock atribui callbacks em +`0xf98` e +`0xfa0`, não nesses slots. O assembly stock contém somente dois loads desses offsets e ambos são protegidos por teste de nulo.
- `tp_alloc_tp_firmware_data` tem um caller direto no inventário Ghidra (`tp_self_test_write`); `tpd_copy_to_tp_firmware_data` tem três callers, todos testes chamados por `tpd_test_cmd_store`. No write, o mutex global cobre o ciclo e `cmd_mutex` é liberado antes do callback de teste.
- Os 12 fontes C/H auditados coincidem com a árvore curada Docker e com os hashes de entrada do build canônico de duas passagens, módulo SHA-256 `adaccd92ac5b2b657626d0e3912441d386a1ef04a7326abfd3251ac4c660c143`. Não houve alteração de C neste lote; não foi repetido o build.

## Limites e próximos passos

Os relatórios Joern exact-v4 antigos foram preservados como histórico; a execução atual cobre a branch hardening. A auditoria permanece estática: execução em NX809J, stress concorrente, falha forçada do alocador, KASAN/UBSAN e revisão humana independente continuam pendentes. O próximo alvo de lifetime será o teardown de workqueues/IRQs no probe/remove, seguindo Ghidra → assembly → Joern → build Docker quando houver mudança de fonte.

Atestação: `review.json` (SHA-256 `53566f7df259a6f81a8f959a4571e6eea5288fd3f12a12426465b357b15afb71`). Joern report: SHA-256 normalizado `5c6cf26d61911e51666555168881f78004b032f7ddfb3af3c0b51563444354a5`; summary: `a35003b0bf4ab2e275e8708f7695a34f51084b75b61c060013305293ccee85d9`. Hash normalizado do mapa após anexar as evidências: `2aabe4645de9ee77e88f2877dce4b22d24b6d4d60f3c19c2cb9449fed6a2bcd4`.
