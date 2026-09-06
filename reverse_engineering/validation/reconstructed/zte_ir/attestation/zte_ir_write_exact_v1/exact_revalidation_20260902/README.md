# `zte_ir_write` — atestação exact offline

Esta unidade promove somente `zte_ir_write@0010036c` para uma ilha AArch64
materializada dos bytes da função stock, com as strings stock necessárias em
`.rodata.str1.1`. O módulo canônico continua sendo um módulo reconstruído
estaticamente; não houve execução em hardware.

## Resultado

- 203/203 instruções e 812/812 bytes de corpo iguais ao stock.
- Relocamentos AArch64, seção e tamanho do símbolo iguais.
- KCFI `0xc3d43b4d` e tamanho de símbolo 812 iguais.
- Duas compilações limpas no Docker produziram SHA-256
  `f91d5fdb6883e704c00e36cc35cbd1416f86b5b39365d4934f1280bdfcf91b1a`.
- Ghidra 12.1.2 confirmou C normalizado, mnemonics ordenados e forma de
  operações P-Code.
- Joern confirmou a função e seu slice de usages com o define host explícito.

Os oito gates automatizados estão registrados em `hard_protocol_report.json`.
Os gates de hardware, KUnit/Lockdep/KCSAN, DTS e revisão independente seguem
pendentes e não devem ser tratados como aprovados por esta atestação.

## Reprodução

O fonte promovido está em `kernel_development/drivers/reconstructed/zte_ir`.
Use `job.json` com `run_hard_driver_protocol.py`; o Docker usa a imagem
`nubia-sm8850-kernel-builder:latest`, volume de toolchain
`nubia_sm8850_kernel_toolchains` e clang `clang-r536225`.
