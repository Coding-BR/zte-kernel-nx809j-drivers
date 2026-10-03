# `328_syna_work_charger_detect_work` protocol attestation

## Resultado

O alvo foi corrigido contra os exports do Ghidra. A versão anterior zerava o
flag USB e não consultava o `power_supply`; a versão atual reproduz a consulta
indireta, o sentinel KCFI, os estados de charger 1/4, a transição do flag
`syna_work_charger_detect_work_status` e a chamada de
`syna_dev_set_charger_mode`.

As microprovas offline passaram em dois ciclos host com ASan/UBSan, sintaxe,
assembly e objeto AArch64, além do Joern estrito. A promoção ainda depende do
build canônico, KCFI ligado e revisão independente.

## Gates

- Joern estrito: PASS; uma identidade mapeada, zero chamadas não resolvidas e
  zero problemas de parser.
- Harness fake power-supply: PASS em dois ciclos; cobre status ausente, 0, 1,
  4, modo de dispositivo e estado anterior.
- AArch64 Clang Android 19.0.1: PASS em sintaxe, assembly e objeto.
- Hardware/smartphone: não utilizado.

## Reprodução

```powershell
python kernel_development/drivers/validation/zte_tpd/host/run_syna_work_charger_detect_work_host_tests.py `
  --build-root .tmp_target328/host `
  --output .tmp_target328/host_report.json
```

O Assembly e o objeto candidatos estão em `candidate_assembly/`. Os exports
stock de pseudocódigo, P-Code e Assembly permanecem em `offline_static/`.
