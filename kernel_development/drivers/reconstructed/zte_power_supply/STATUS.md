# Status: zte_power_supply

## Veredito atual

Reconstrucao estatica do NX809J com cobertura de 47/47 mapeamentos; tres funcoes incluem hardening declarado, sem alegacao de equivalencia stock integral ou validacao em hardware.

- Stock SHA-256: `2ae6f7615c9a4fea48a84fb2595d2f52dd049c11749b7cd2a3d9037dfcd813e8`
- Source SHA-256: `e9bd827b73ef9e1599afb54a68d6803d12d6506369439e9dee985ebfa5492fe6`
- Candidato SHA-256: `8262839ec50992385ccab55fb815dc5aa84d4acbd1845719c7883b41450810c0` (282728 bytes)
- Build Docker limpa: PASS em duas execucoes com saida identica; ver attestation hardening 2026-11-04
- Inventario e callgraph Ghidra: PASS, `47/47`
- Superficie KCFI indireta: PASS, `20/20`
- Microtarefas com evidencia: PASS, `47/47`
- Harness host do baseline anterior: PASS; nao reexecutado apos este hardening
- Imports, aliases, namespaces e bindings ELF: PASS

## O que foi reconstruido

O fonte cobre registro e ciclo de vida da classe ZTE, sysfs/uevent, lookup e referencias, notificadores, descoberta de supplies por Device Tree, tabelas OCV/resistencia e parsing de `simple-battery`. Os layouts `struct zte_power_supply` (`0x4c0`) e `struct power_supply_attr` (`0x58`) possuem asserts de tamanho e offsets criticos.

## Limites atuais

Os gates abaixo permanecem incompletos por ausencia de evidencia independente:

- Gate 8: revisao por outro implementador/revisor.
- Gate 9: teste supervisionado no aparelho com logs e rollback comprovado.
- Gate 10: promocao para uso em hardware apos os gates 8 e 9.

Nao executar unload/reload automatico da pilha stock de energia. A validacao no aparelho deve seguir procedimento controlado, com alimentacao, temperatura, logs persistentes e rollback disponivel.

## Hardening de lifetime — 2026-11-04

O lote corrigiu a janela em que o callback atrasado podia enfileirar `changed_work` depois do primeiro `cancel_work_sync`:

- `zte_power_supply_changed` verifica `removing` e enfileira o trabalho sob `psy->lock`.
- `zte_power_supply_deferred_register_work` le `removing` sob o mesmo lock no caminho de espera; os outros caminhos passam pela gate da funcao `changed`.
- `zte_power_supply_unregister` publica `removing` sob o lock e drena primeiro o produtor atrasado, depois `changed_work`.

As tres funcoes foram reclassificadas como `candidate_hardening_deviation`; equivalencia stock nao e alegada. Dois builds Docker limpos em diretorios de modulo separados produziram o mesmo `.ko` (SHA-256 `8262839ec50992385ccab55fb815dc5aa84d4acbd1845719c7883b41450810c0); o build teve avisos de versionamento de exports e nao gerou BTF porque `vmlinux` nao estava disponivel. O harness host nao foi reexecutado nesta mudanca. Nenhum modulo foi carregado e nao houve teste no aparelho; o ADB nao listou dispositivos nesta verificacao. Revisao independente continua pendente. A gate cobre o produtor interno; chamadores externos ainda precisam respeitar o contrato de lifetime do objeto.

Veja [relatorio de hardening](../../../../reverse_engineering/validation/reconstructed/zte_power_supply/attestation/lifetime_sync_hardening_20261104/README.md).

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

A static review found a potential stock-inherited use-after-free window: unregister cancels `changed_work` before it drains `deferred_register_work`, while the deferred callback can queue `changed_work` after the first cancellation returns. The pinned kernel documents that `cancel_work_sync` does not cover racing enqueues; `device_unregister` can drop the final reference and release the object while the newly queued work still points into it. Stock Ghidra and stock/candidate assembly confirm that this order is exact in the current reconstruction. This is a possible interleaving, not a reproduced failure. At audit time, the source/map were left unchanged to preserve exact-stock status. On 2026-11-04, the correction was applied and rebuilt as a declared hardening deviation; see the [hardening report](../../../../reverse_engineering/validation/reconstructed/zte_power_supply/attestation/lifetime_sync_hardening_20261104/README.md) and the original [lifetime/synchronization audit](../../../../reverse_engineering/validation/reconstructed/zte_power_supply/attestation/lifetime_sync_risk_audit_20261103/README.md). Independent review and hardware validation remain pending.
