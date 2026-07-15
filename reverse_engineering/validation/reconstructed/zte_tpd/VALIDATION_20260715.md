# Validacao Local `zte_tpd` - 2026-07-15

## Resultado

Estado: `INCOMPLETO`, sem afirmacao de reconstrucao 100%.

O modulo stock, Ghidra local, P-Code, assembly, relocacoes, strings e KCFI foram
as unicas fontes usadas para comportamento especifico do NX809J. Nenhum driver
ou kernel publicado na Internet foi usado como referencia de implementacao.

## Evidencia positiva

- Stock: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato limpo: `bb483f11592f4d3acff7192e0d3b90324c6478c78c843e23158251ac7577ff6d`.
- Build limpo duplo reproduzivel: PASS.
- Promocao do mesmo artefato limpo para `curated`: PASS por SHA-256 e tamanho.
- Aliases: PASS.
- Simbolos stock presentes: `359/359`.
- KCFI da superficie restaurada: `13/13`.
- Harnesses diretos: `17/17`.

## Correcoes comprovadas pelo binario stock

- `msecs_to_jiffies()` restaurou o import `__msecs_to_jiffies`.
- `set_bit()` e o bit explicito `KEY_WAKEUP` restauraram a semantica atomica LSE
  e o import `alt_cb_patch_nops`.
- `MODULE_DEVICE_TABLE` restaurou os tres aliases stock na ordem correta.
- `trim` voltou a ser helper local da unidade de `string_change`; o import
  artificial `strim` foi eliminado.
- Chamadas reais de `__fortify_panic` e `__copy_overflow` substituem stubs WARN.
- A conversao PFN usa `memstart_addr`, como o assembly stock, eliminando o import
  artificial `kimage_voffset`.

## Pendencias

- 236 simbolos extras.
- Um import stock ausente e dois imports adicionais devido ao desvio de seguranca
  do platform device.
- KCFI de `string_change` divergente.
- Mapa revisado de todas as funcoes ausente.
- Teste em hardware deste SHA-256 ausente.

Consulte `driver_audit_20260715_local_truth.json` e
`symbol_inventory_20260715_local_truth.json` para dados estruturados.

## Repeticao no clone

```powershell
python .\workspace_tools\reconstruction_pipeline\run_zte_tpd_zlog_harness.py
python .\workspace_tools\reconstruction_pipeline\run_zte_tpd_remaining_harness.py
python .\workspace_tools\reconstruction_pipeline\verify_promoted_candidate.py `
  --audit .\reverse_engineering\validation\reconstructed\zte_tpd\driver_audit_20260715_local_truth.json `
  --candidate .\kernel_development\drivers\reconstructed\zte_tpd\zte_tpd.ko `
  --output .\reverse_engineering\validation\reconstructed\zte_tpd\candidate_promotion_20260715.json
```

Os dois harnesses exigem Docker, a imagem local
`nubia-sm8850-kernel-builder:latest` e o volume
`nubia_sm8850_kernel_toolchains`. A verificacao de promocao usa somente Python.
