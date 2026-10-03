# `327_syna_tpd_register_fw_class` protocol attestation

## Resultado

As microprovas offline passaram para a rotina que configura a fila de charger,
o notifier de power-supply e a tabela de callbacks de `tpd_cdev`. O harness
usa memória fake e valida os offsets observados no Assembly stock, incluindo o
ponteiro do `tcm` em `tpd_cdev + 0xdb8`, dimensões em `+0x442/+0x444`, workqueue,
timer, notifier e os callbacks de gesto/configuração.

Esta attestation **não promove** a função para equivalência binária. O build
canônico chega à compilação do módulo, mas falha em conflitos preexistentes em
`syna_tcm_erase_mtp_data.c` e `syna_tcm_func_base_unit.c`/`syna_tcm_buf_copy_2`.
O erro ocorre antes de um `.ko` completo e portanto KCFI, relocations e
igualdade exata do corpo continuam pendentes.

## Gates

- Joern v4.0.548 estrito: PASS; uma identidade mapeada, 229 chamadas, quatro
  estruturas de controle, zero chamadas não resolvidas e zero problemas de
  parser.
- Harness host ASan/UBSan: PASS em dois ciclos, binário reproduzível.
- AArch64 Clang Android 19.0.1: PASS em sintaxe, assembly e objeto isolado.
- Build canônico em dois ciclos: BLOCKED pelos conflitos independentes
  registrados em `build_report.json`.
- KCFI/paridade exata stock-candidato: PENDING.
- Smartphone/hardware: não utilizado.

## Correção capturada pelo ciclo

O primeiro harness revelou que a reconstrução usava offsets decimais antigos
para a tabela de callbacks. O Assembly stock usa offsets hexadecimais, por
exemplo `0xe20` para `tpd_init_tpinfo` e `0xdb8` para o ponteiro do `tcm`. A
fonte foi corrigida e o contrato fake-memory passou depois dessa correção.

## Reprodução

```powershell
python kernel_development/drivers/validation/zte_tpd/host/run_syna_tpd_register_fw_class_host_tests.py `
  --build-root .tmp_target327/host `
  --output .tmp_target327/host_report.json

docker run --rm `
  -v "${PWD}:/workspace:ro" `
  -v "${PWD}\.tmp_target327\aarch64:/out" `
  -v nubia_sm8850_kernel_toolchains:/toolchains:ro `
  nubia-sm8850-kernel-builder:latest `
  /toolchains/clang-r536225/bin/clang `
  --target=aarch64-linux-android34 -std=gnu11 -O2 -Wall -Wextra -Werror `
  -Wno-pointer-to-int-cast -Wno-int-conversion -Wno-unused-function `
  -S /workspace/kernel_development/drivers/validation/zte_tpd/host/syna_tpd_register_fw_class_aarch64_assembly_input.c `
  -o /out/candidate.s
```

O objeto foi gerado com a mesma entrada e flags, substituindo `-S` por `-c`.
