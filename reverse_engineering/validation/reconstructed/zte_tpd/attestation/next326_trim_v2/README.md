# `326_trim` protocol attestation v2

## Resultado

As microprovas offline de `trim` passaram: Joern estrito, harness host com
ASan/UBSan em dois ciclos, sintaxe AArch64 com o Clang Android 19.0.1 e objeto
AArch64 isolado. A rotina preserva o contrato observado no Ghidra: `NULL`
retorna `NULL`, whitespace inicial e final é removido in-place, bytes internos
são preservados e o terminador é escrito uma vez.

Esta attestation **não promove** a função para equivalência binária. O
assembly candidato foi gerado a partir de uma entrada AArch64 que modela a
tabela `_ctype`; ele serve para validar o fluxo e a ABI básica, não para provar
igualdade de opcodes, relocations ou identificadores KCFI.

## Gates

- Joern v4.0.548 em modo estrito: PASS; uma identidade mapeada, zero problemas
  de parser e zero chamadas não resolvidas.
- Host ASan/UBSan: PASS em dois ciclos; oito casos; binários reproduzíveis.
- AArch64 Clang 19: PASS em sintaxe, assembly e objeto isolado.
- Kbuild canônico: BLOCKED. `trim.c` está explicitamente excluído do
  `Makefile` do módulo e a árvore do kernel disponível não possui
  `include/generated/auto.conf`, `autoconf.h` e `rustc_cfg` preparados.
- KCFI e igualdade exata stock/candidato: PENDING.
- Smartphone/hardware: não utilizado nesta etapa.

## Reprodução

```powershell
python kernel_development/drivers/validation/zte_tpd/host/run_trim_host_tests.py `
  --build-root .tmp_target326/host `
  --output .tmp_target326/host_harness_report.json

docker run --rm `
  -v "${PWD}:/workspace:ro" `
  -v "${PWD}\.tmp_target326\aarch64:/out" `
  -v nubia_sm8850_kernel_toolchains:/toolchains:ro `
  nubia-sm8850-kernel-builder:latest `
  /toolchains/clang-r536225/bin/clang `
  --target=aarch64-linux-android34 -std=gnu11 -Wall -Wextra -Werror `
  -fsyntax-only /workspace/kernel_development/drivers/validation/zte_tpd/host/trim_aarch64_assembly_input.c
```

As entradas stock são os exports do Ghidra em `offline_static/ghidra_stock` e
o assembly em `offline_static/stock_assembly`. Os hashes e resultados completos
estão nos JSON desta pasta.
