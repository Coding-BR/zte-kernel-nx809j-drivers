# Checkpoint Ghidra/Docker — `zte_power_supply`

Este checkpoint reexecuta o reconstrução com a imagem
`nubia-sm8850-kernel-builder:latest`, os volumes `nubia_sm8850_kernel_src` e
`nubia_sm8850_kernel_toolchains`, o toolchain `clang-r536225`, `ARCH=arm64`,
`LLVM=1` e `LLVM_IAS=1`. O alvo não possui `vendor.Module.symvers` externo;
`MODPOST` resolveu os imports contra o kernel de referência.

## Reprodutibilidade Docker

- ciclo 1 e repetição limpa no mesmo caminho `M=`: 298.352 bytes,
  SHA-256 `8c81fa98b6febcc0e22a002f7b9d1077d24584b4215d369f78687fb3bd84d8dc`;
- ciclo 2 em outro caminho `M=`: 298.368 bytes,
  SHA-256 `f4eee56e6e027321cb22d3d24cac2e03f13d6cb61dc3d15b28a8c2c9a7387a52`;
- SHA-256 da seção `.text` nos três artefatos:
  `98c3ebb006fed306caead1eb6f0c5821719b398ab11010d5e1b5f3e0e1449aaa`.

A seção executável foi idêntica; a diferença do ELF completo decorre de
metadados/debug associados ao caminho de compilação. Os artefatos estão
preservados em `docker_rebuild_20260901/`.

## Ghidra e assembly

O ciclo 1 Docker foi analisado com Ghidra 12.1.2 para AArch64. O export de 47
funções está em `offline_static/ghidra_candidate_20260901/`; o manifesto tem
SHA-256 `7855fbbb293a5ba8fe1f9ccdb60b327eb67cd129c3eee23ab1066c2578f60cb6`
e o executável analisado tem MD5 `669ad4deab0ff92cb28728625a3840aa`.

Comparado ao export stock:

- equivalência Ghidra estrita (C normalizado + corpo + P-Code): 30/47;
- tamanho de corpo compatível: 34/47;
- forma operacional do P-Code compatível: 31/47;
- C normalizado direto: 30/47;
- fallback de endereço de dados: nenhum foi aplicado;
- comparação independente de assembly AArch64: 21/47.

As divergências concentram-se em matching por nome/nó, descoberta por phandle,
parsing de bateria e tabelas OCV/resistência, registro do power supply e
workers de atualização/propagação. O assembly falha em 26 funções por
instruções, tamanho de símbolo ou relocations.

## Decisão

Este checkpoint é diagnóstico e não promove o candidato. O `STATUS.md`
histórico registra gates estáticos anteriores como PASS, mas a reexecução
independente encontrou 17 funções Ghidra e 26 funções de assembly ainda não
equivalentes ao stock. Revisão independente, validação supervisionada no
hardware e promoção final continuam pendentes.

Os relatórios de máquina são `ghidra_candidate_20260901_semantic_comparison.json`
e `assembly_candidate_20260901_comparison.json`.
