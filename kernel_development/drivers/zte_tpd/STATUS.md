# Status de Reconstrucao e Validacao do Driver `zte_tpd`

## Estado Atual - 2026-07-15

- **Classificacao:** `legacy_artifact_not_verified`
- **Kernel alvo:** Android 16 / GKI 6.12.23 / AArch64
- **Stock SHA-256:** `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
- **Candidato SHA-256:** `bb483f11592f4d3acff7192e0d3b90324c6478c78c843e23158251ac7577ff6d`
- **Candidato:** `12216472` bytes
- **Teste em hardware desta revisao:** nao executado

O candidato nao e `100%`, `static_verified` nem `hardware_verified`.

## Gates Confirmados

- Dois builds completamente limpos: PASS, mesmo SHA-256 e tamanho.
- Aliases SPI/Device Tree: PASS, lista e ordem iguais ao stock.
- Vermagic do kernel alvo: PASS.
- Todos os 359 simbolos de texto stock existem no candidato.
- KCFI da superficie restaurada: PASS `13/13`.
- Harness zlog: PASS `10/10`.
- Harness one-key, UF e game partition: PASS `7/7`.
- Assembly local extraido com cobertura integral para as funcoes analisadas.

## Bloqueadores Medidos

- O candidato ainda possui 236 simbolos de texto extras: 131 `sub_*`, 84
  `wrap_*`, 9 duplicatas renomeadas e 12 outros.
- Imports diferem somente no desvio de seguranca do platform device: stock usa
  `platform_device_register`; candidato usa `platform_device_register_full` e
  `platform_device_put` por meio de `platform_device_register_simple`.
- O desvio acima foi mantido porque a evidencia local historica registra corrupcao
  do platform bus na reconstrucao estatica. Ele exige nova validacao controlada.
- `string_change` ainda nao possui KCFI igual ao stock. Duas buscas locais, com
  880 e 4576 assinaturas, nao encontraram correspondencia.
- `reconstruction_map.json` revisado ainda nao existe. O rascunho confirma 366
  nomes por arquivo, mas `_inline_copy_from_user` e `init_module` continuam sem
  rastreabilidade automatica completa.
- Nao existe teste controlado no aparelho para este SHA-256 candidato.

## Evidencia Autoritativa

- `../../../NX809J_LOCAL_SOURCE_OF_TRUTH.md`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/driver_audit_20260715_local_truth.json`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/candidate_promotion_20260715.json`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/symbol_inventory_20260715_local_truth.json`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/kcfi_20260715_restored_surface_comparison.json`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/kcfi_bruteforce/string/match_report.json`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/zlog_harness_report.json`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/remaining_harness_report.json`

`reconstruction_map.draft.json` e rascunho automatizado, nao atestacao. Nenhum
comando ADB, fastboot, `insmod` ou `rmmod` foi executado nesta revisao.
