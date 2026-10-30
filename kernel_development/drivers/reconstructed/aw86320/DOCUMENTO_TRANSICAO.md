# aw86320 — reconstrução e reprodução

## Escopo

`aw86320` é um driver haptic AWINIC encontrado na fila de revisão device-vendor
do inventário NX809J. O módulo stock contém `alias=i2c:aw86320`, compatibilidade
`awinic,aw86320` e firmware `micop_ram.bin`; isso não basta para classificá-lo
como código proprietário ZTE/Nubia.

## Reconstrução

- Stock: `reference_modules/full_vendor_boot/aw86320.ko`.
- Ghidra 12.1.2 exporta 37 funções, pseudocódigo, chamadas e P-Code em
  `reverse_engineering/validation/reconstructed/aw86320/offline_static/ghidra_stock`.
- As 37 funções reconstruídas são ilhas de assembly AArch64 relocável; KCFI,
  seções, strings, dados, BSS, per-CPU, codetags e relocations foram preservados.
- `aw86320_metadata.c` mantém metadados Kbuild e a tabela I²C; não é apresentado
  como implementação semântica C independente.

## Verificação estática

A atestação `attestation/next001_aw86320_exact_static_v1/` registra os oito
gates de núcleo aprovados: identidade do input, mapa, dois builds Docker
reproduzíveis, comparação de assembly/relocações 37/37, KCFI 37/37, export
Ghidra/P-Code, Joern estrito e Joern slice. Os dois builds geraram o candidato
com SHA-256
`1e8b30b92fea439507a5e7e3b9fa982ac06a9aef54145250273ad8197ef0ada1`.

Em cinco funções, o texto C produzido pelo decompilador não normaliza para o
mesmo texto. A exceção explícita de ilha exata de assembly só aceita esses casos
porque o corpo ELF/assembly, relocações e formato das operações P-Code coincidem;
ela não afirma equivalência do texto C.

## Limites

O candidato está `STATIC_VERIFIED_OFFLINE`. Revisão independente e teste
controlado no NX809J estão pendentes; a promoção para hardware não está
autorizada. Nenhum `insmod`, `rmmod`, ADB, fastboot ou escrita de partição foi
executado.
