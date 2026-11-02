# Hard protocol — `zte_power_supply_get_battery_info` — 2026-09-01

Este é um checkpoint diagnóstico não-promocional do alvo mais difícil restante
do módulo `zte_power_supply`. A execução usou o protocolo de linha de comando,
Joern, Docker e Ghidra; nenhum estado de microtarefa ou `.ko` publicado foi
alterado.

## Ambiente

- Docker: `nubia-sm8850-kernel-builder:latest`
- Toolchain: volume `nubia_sm8850_kernel_toolchains`, `clang-r536225`
- Kernel: volume `nubia_sm8850_kernel_src`, `ARCH=arm64 LLVM=1 LLVM_IAS=1`
- Stock: `reference_modules/full_vendor_boot/zte_power_supply.ko`
- Ghidra: `C:\Tools\ghidra_12.1.2_PUBLIC`, Java 21
- Função: `zte_power_supply_get_battery_info@001017fc`

## Resultado dos gates

| Gate | Resultado |
|---|---|
| Input/map identity | PASS |
| Joern scoped | PASS |
| Joern usages slice | PASS |
| Docker clean build ×2 | PASS; `b377568789f5a97e3c91ed62c3647610b32044189f460a72a65834ad47e29a1e`, 298096 bytes |
| KCFI type ID | PASS; `0x76c65591` em ambos |
| Assembly/relocations | FAIL |
| Ghidra C/P-Code | FAIL |
| Promoção | NÃO AUTORIZADA |

## Divergência reproduzida

O stock contém 397 instruções e símbolo ELF de 1588 bytes. O candidato Docker
contém 394 instruções e 1576 bytes. O comparador também registra divergência em
`body_bytes`, C normalizado e shape P-Code; as relocações nomeadas para as
strings e chamadas externas foram resolvidas, portanto não são a causa única.

Artefatos completos do ciclo estão nesta pasta. Os hashes principais são:

- `hard_protocol_report.json`: `f26252fc5364ad329f74424318de038ec0d0cd1f31cb007fbd1eccf64dbd3140`
- `assembly/comparison.json`: `9596f14f3409239a189f22fa835bfc6b4fd21b157ab7962452c9faeb50b2526b`
- `ghidra/semantic_comparison.json`: `4f5f30b37d9fc820a14ac9ef4aa07ff6bf4f730281708ec10a1d81fb2d9bcc1f`
- `ghidra_candidate/zte_power_supply.ko/manifest.json`: `4228e9115eec8ffe40dd49775f6eb08839ec617a09696427927b678333082c88`

Próximo passo correto: comparar o CFG/P-Code por blocos e ajustar apenas a
função-fonte que explica as três instruções ausentes; não aplicar fallback de
relocação nem marcar a função como exata enquanto o corpo não fechar.
