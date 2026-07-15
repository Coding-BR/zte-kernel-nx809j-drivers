# zte_led (AW22XXX)

Reconstrucao out-of-tree do driver ZTE/Awinic AW22XXX para o NX809J e Android
16 GKI 6.12.23.

## Estado

O driver esta `static_verified`: gates 0 a 7 PASS; gates 8 a 10 incompletos.
Isso nao equivale a validacao no hardware. Consulte `STATUS.md` antes de usar o
modulo.

## Teste de host

Com Docker ativo, execute a partir da raiz do repositorio:

```powershell
python .\kernel_development\drivers\reconstructed\zte_led\tests\run_host_tests.py
```

O executor compila e roda o harness duas vezes e exige o mesmo SHA-256 para os
dois binarios. O relatorio e gravado em
`reverse_engineering/validation/reconstructed/zte_led/host_test_report.json`.

## Build do modulo

O ambiente local de engenharia usa os volumes Docker
`nubia_sm8850_kernel_src` e `nubia_sm8850_kernel_toolchains`:

```powershell
docker run --rm `
  -v nubia_sm8850_kernel_src:/work/src:ro `
  -v nubia_sm8850_kernel_toolchains:/work/toolchains:ro `
  -v "${PWD}\kernel_development\drivers\reconstructed\zte_led:/work/module" `
  -e PATH=/work/toolchains/clang-r536225/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin `
  -w /work/src/kernel/kernel_platform/common `
  nubia-sm8850-kernel-builder:latest `
  make ARCH=arm64 LLVM=1 LLVM_IAS=1 M=/work/module `
  KBUILD_EXTRA_SYMBOLS=/work/module/vendor.Module.symvers clean modules
```

## Evidencias

- `reconstruction_map.json`: 58 mapeamentos stock para fonte.
- `MICROTASKS.json`: 58 microtarefas atestadas.
- `tests/`: harness que inclui e exercita o proprio `zte_led.c`.
- `reverse_engineering/validation/reconstructed/zte_led/`: Ghidra, KCFI,
  build duplo, layout, paridade e ciclo obrigatorio.

Nao automatize `unbind`, `rmmod` ou `insmod`. O stock controla reset, IRQ e
firmware do controlador; o teste fisico exige supervisao e rollback por reboot.
