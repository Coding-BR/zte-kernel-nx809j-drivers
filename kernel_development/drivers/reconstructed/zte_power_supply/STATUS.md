# Status: zte_power_supply

## Veredito atual

Reconstrucao estaticamente verificada para o NX809J, sem declaracao de 100% e sem alegacao de validacao em hardware.

- Stock SHA-256: `2ae6f7615c9a4fea48a84fb2595d2f52dd049c11749b7cd2a3d9037dfcd813e8`
- Candidato SHA-256: `07b2c6c8e4f770e7e3e15762fb280db0b3bfd67a1656579368426b2ff32d355f` (283624 bytes)
- Build limpa e reproduzivel: PASS
- Inventario e callgraph Ghidra: PASS, `47/47`
- Superficie KCFI indireta: PASS, `20/20`
- Microtarefas com evidencia: PASS, `47/47`
- Harness host reproduzivel: PASS, duas compilacoes e duas execucoes
- Imports, aliases, namespaces e bindings ELF: PASS

## O que foi reconstruido

O fonte cobre registro e ciclo de vida da classe ZTE, sysfs/uevent, lookup e referencias, notificadores, descoberta de supplies por Device Tree, tabelas OCV/resistencia e parsing de `simple-battery`. Os layouts `struct zte_power_supply` (`0x4c0`) e `struct power_supply_attr` (`0x58`) possuem asserts de tamanho e offsets criticos.

## Limites atuais

Os gates abaixo permanecem incompletos por ausencia de evidencia independente:

- Gate 8: revisao por outro implementador/revisor.
- Gate 9: teste supervisionado no aparelho com logs e rollback comprovado.
- Gate 10: promocao para uso em hardware apos os gates 8 e 9.

Nao executar unload/reload automatico da pilha stock de energia. A validacao no aparelho deve seguir procedimento controlado, com alimentacao, temperatura, logs persistentes e rollback disponivel.

## Evidencias principais

- `reconstruction_map.json`
- `MICROTASKS.json`
- `tests/host_test.c`
- `tests/run_host_tests.py`
- `../../validation/zte_power_supply/driver_audit_final.json`
- `../../validation/zte_power_supply/ghidra_stock_candidate_comparison.json`
- `../../validation/zte_power_supply/kcfi_callback_surface.json`
- `../../validation/zte_power_supply/host_test_report.json`

## Lifetime/synchronization risk audit — 2026-11-03

A static review found a potential stock-inherited use-after-free window: unregister cancels `changed_work` before it drains `deferred_register_work`, while the deferred callback can queue `changed_work` after the first cancellation returns. The pinned kernel documents that `cancel_work_sync` does not cover racing enqueues; `device_unregister` can drop the final reference and release the object while the newly queued work still points into it. Stock Ghidra and stock/candidate assembly confirm that this order is exact in the current reconstruction. This is a possible interleaving, not a reproduced failure. The source/map were left unchanged to preserve exact-stock status; see the [lifetime/synchronization audit](../../../../reverse_engineering/validation/reconstructed/zte_power_supply/attestation/lifetime_sync_risk_audit_20261103/README.md). Any correction must be marked as a hardening deviation and rebuilt/re-reviewed. Independent review and hardware validation remain pending.
