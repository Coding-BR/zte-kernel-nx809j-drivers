# Validacao KCFI da Familia `int (void)` - 2026-07-17

## Escopo

O type ID stock `0x6fbb3035` foi correlacionado localmente com a declaracao
`int (void)`. A decisao usa o preambulo KCFI stock, os corpos Ghidra/P-Code, o
assembly AArch64 e o oracle produzido pelo mesmo Clang 19.0.1 da esteira.

Funcoes corrigidas:

- `get_tp_chip_id`
- `suspend_tp_need_awake`
- `syna_dev_module_init`
- `syna_hw_interface_init`
- `tpd_report_work_init`
- `tpd_workqueue_init`
- `ufp_get_lcdstate`
- `ufp_mac_init`
- `zte_touch_pdev_register`
- `zte_touch_init`
- `init_module`

`zte_touch_init` recebeu `__init`, restaurando `.init.text` tanto para a funcao
quanto para o alias `init_module`. Argumentos artificiais introduzidos pela
descompilacao foram removidos dos chamadores. Retornos decompilados como
inteiros positivos largos foram normalizados para `-EIO` e `-ENOMEM`, mantendo
o mesmo valor AArch64 em `w0`.

## Resultado

- Stock SHA-256: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato SHA-256: `6d3d95ef0aa1c3968698d1d5ffb98b4c46cb964472817e49f5f6f99f52c24f46`.
- Dois builds limpos: `PASS`, SHA-256 identico.
- ELF/KMI/imports/aliases/namespaces: `PASS`.
- Familia `0x6fbb3035`: `11/11 PASS` em type ID e secao.
- Regressao na superficie anterior: `0`.
- KCFI integral: `165/322` matches; `157` divergencias restantes.
- Harnesses host: `7/7 PASS`, incluindo ASan/UBSan onde aplicavel.
- Microtarefas: `123` PASS retidos, `244` pendentes, zero PASS obsoleto.

## Evidencia

- `driver_audit_kcfi_int_void.json`
- `signature_oracles/candidate_kcfi_int_void_all.json`
- `kcfi_full_surface_int_void.json`
- `kcfi_full_surface.json`
- `kcfi_direct_surface_final_comparison.json`
- `kcfi_callback_families.json`
- `microtask_progress.json`
- `microtask_audit.json`

Todo o ciclo foi offline. Nenhum comando foi enviado ao smartphone.
