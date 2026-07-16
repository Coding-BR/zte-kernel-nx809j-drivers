# Validacao Local `zte_tpd` - 2026-07-16

## Identidade

- Stock SHA-256: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato SHA-256: `24513b1187c4b7ad60411a66552a1905ac15408350407f595fde9a41d127f5e6`.
- Candidato: `12854712` bytes.
- Toolchain: `clang-r536225`, Android 16 / GKI 6.12.23 / AArch64.

## Resultado Medido

- Dois builds limpos: PASS, SHA-256 identico.
- Build/ELF/KMI: `static_verified`.
- Imports KMI: `152/152`, sem ausentes ou inesperados.
- KCFI selecionado: `50/50` funcoes PASS.
- Familias integralmente corrigidas: 4, totalizando 36 callbacks.
- Harnesses: `27/27` testes PASS sobre 38 funcoes distintas.
- Sanitizadores do novo harness: ASan e UBSan habilitados, sem falhas.
- Microtarefas: `38/367` PASS com hashes de compile/KCFI/test; 329 pendentes.
- Hardware: `DEFERRED` neste ciclo offline.

## Proximo Lote Comprovado

Os oraculos locais resolveram as assinaturas das familias proc read, proc write,
workqueue e `void(void)`. O relatorio `kcfi_callback_families.json` mostra que
essas familias ainda nao estao completas no candidato; elas sao o proximo alvo,
nao uma capacidade ja atestada.

## Evidencia Autoritativa

- `driver_audit_static_final.json`
- `kcfi_direct_surface_final_comparison.json`
- `kcfi_callback_families.json`
- `microtask_progress.json`
- `zlog_harness_report.json`
- `remaining_harness_report.json`
- `fw_callbacks_harness_report.json`
- `parity_report.json`

Nenhum ADB, fastboot, `insmod`, `rmmod`, SPI, MMIO ou escrita de particao foi
executado. O resultado nao autoriza afirmar equivalencia funcional integral.
