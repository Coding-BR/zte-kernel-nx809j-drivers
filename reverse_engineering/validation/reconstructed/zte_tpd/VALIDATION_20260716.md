# Validacao Local `zte_tpd` - 2026-07-16

## Identidade

- Stock SHA-256: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato SHA-256: `190fffc9ee04abb2ae198b1ed833704a3890345747a4d593a971e7a03d36eb2d`.
- Candidato: `16245104` bytes.
- Toolchain: `clang-r536225`, Android 16 / GKI 6.12.23 / AArch64.

## Resultado Medido

- Dois builds limpos: PASS, SHA-256 identico.
- Build/ELF/KMI: `static_verified`.
- Imports KMI: `152/152`, sem ausentes ou inesperados.
- KCFI selecionado: `151/151` funcoes PASS, incluindo `143/143` nas oito
  familias recuperadas.
- Proc read/write, workqueue e `void(void)` agora coincidem com o stock; 63
  wrappers artificiais de proc foram removidos.
- Harnesses: `27/27` testes PASS sobre 38 funcoes distintas.
- Sanitizadores do novo harness: ASan e UBSan habilitados, sem falhas.
- Microtarefas: `38/367` PASS com hashes de compile/KCFI/test; 329 pendentes.
- Hardware: `DEFERRED` neste ciclo offline.

## Proximo Gate Comprovado

Os oraculos locais e o ELF final comprovam as assinaturas das familias proc
read, proc write, workqueue e `void(void)`. O proximo gate e comportamental: as
96 funcoes alteradas ainda nao possuem harness direto vinculado aos hashes de
fonte e permanecem fora do conjunto `PASS` de microtarefas.

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
