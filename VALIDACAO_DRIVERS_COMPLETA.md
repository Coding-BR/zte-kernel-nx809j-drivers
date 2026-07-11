# Relatório Completo de Validação dos Drivers ZTE

**Data de Execução:** 2026-07-11 14:43:29
**Kernel Base:** `Linux version 6.12.23-android16-5-gf1bdb13583da-ab13761046-4k (curator@build-host) (Android (12833971, +pgo, +bolt, +lto, +mlgo, based on r536225) clang version 19.0.1 (https://android.googlesource.com/toolchain/llvm-project b3a530ec6537146650e42be89f1089e9a3588460), LLD 19.0.1) #1 SMP PREEMPT Wed Jul  9 10:22:53 UTC 2025`

## Status da Carga Dinâmica dos Módulos

| Driver | Status | Detalhes / Erro |
|---|---|---|
| `zte_ir` | ✅ SUCESSO | Loaded successfully |
| `zte_led` | ✅ SUCESSO | Loaded successfully |
| `zte_misc` | ✅ SUCESSO | Loaded successfully |
| `zte_fingerprint` | ✅ SUCESSO | Loaded successfully |
| `zte_stats_info` | ✅ SUCESSO | Loaded successfully |
| `zte_imem_info` | ✅ SUCESSO | Loaded successfully |
| `zte_sensor_sensitivity` | ❌ FALHA | insmod: failed to load /data/local/tmp/zte_sensor_sensitivity_custom.ko: File exists |
| `zte_ramdisk_reboot` | ✅ SUCESSO | Loaded successfully |
| `zte_reboot_ext` | ✅ SUCESSO | Loaded successfully |
| `zte_power_supply` | ✅ SUCESSO | Loaded successfully |
| `zte_charger_policy` | ✅ SUCESSO | Loaded successfully |
| `zte_tpd` | ✅ SUCESSO | Loaded successfully |
