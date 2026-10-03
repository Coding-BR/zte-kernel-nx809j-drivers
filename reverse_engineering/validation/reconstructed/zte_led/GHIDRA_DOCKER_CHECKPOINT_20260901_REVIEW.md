# Checkpoint Ghidra/Docker — `zte_led`

Este checkpoint reexecuta o cadeia do `zte_led` com a imagem
`nubia-sm8850-kernel-builder:latest`, os volumes `nubia_sm8850_kernel_src` e
`nubia_sm8850_kernel_toolchains`, `clang-r536225`, `ARCH=arm64`, `LLVM=1` e
`LLVM_IAS=1`. A dependência `zlog_common` foi fornecida por
`vendor.Module.symvers` via `KBUILD_EXTRA_SYMBOLS`.

## Reprodutibilidade Docker

- ciclo 1 e repetição limpa no mesmo caminho `M=`: 399.512 bytes,
  SHA-256 `2f7d293aa01dc76165776231b9911cfd2ab1f1e5fd1c46dc5b2ddf71da66be56`;
- ciclo 2 em outro caminho `M=`: 399.504 bytes,
  SHA-256 `c181b68ca5a26f15b9d7528000a490eb48395870cff9e7f6dba2cfd3ecfa79ed`;
- SHA-256 da seção `.text` nos três artefatos:
  `b878d671509235cb5f46b7a4844569f98ea9b511b93283c9104be22c22a39c55`.

A seção executável permaneceu idêntica; a diferença do ELF completo é de
metadados/debug associados ao caminho. Os artefatos estão preservados em
`docker_rebuild_20260901/`.

## Ghidra e assembly

O ciclo 1 Docker foi analisado com Ghidra 12.1.2 para AArch64. O export de 58
funções está em `offline_static/ghidra_candidate_20260901_docker/`; seu
manifesto tem SHA-256
`1501ad37ea9f97ab32bf2af0a19c43e8eca895ab6b4c4aaa872e8e144373c83f` e o
executável analisado tem MD5 `6611a56745886105c0f729a7b11074dd`.

Comparado ao export stock:

- equivalência Ghidra estrita (C normalizado + corpo + P-Code): 9/58;
- tamanho de corpo compatível: 19/58;
- forma operacional do P-Code compatível: 15/58;
- C normalizado direto: 9/58;
- comparação independente de assembly AArch64: 1/58.

O Ghidra registrou um erro de P-Code durante a decompilação de `00105dac`,
mas exportou as 58 funções; esse erro permanece parte da limitação da
evidência e não foi ocultado. As divergências incluem play/configuração,
I²C, reset/IRQ, parsing de Device Tree, firmware, procfs e inicialização.

## Decisão

Este checkpoint é diagnóstico e não promove o candidato. A reexecução
independente contradiz a confiança de equivalência total implícita em
auditorias históricas: 49 funções Ghidra e 57 funções de assembly ainda não
coincidem com o stock. Revisão independente, validação supervisionada no
hardware e promoção final continuam pendentes.

Os relatórios de máquina são `ghidra_candidate_20260901_docker_semantic_comparison.json`
e `assembly_candidate_20260901_docker_comparison.json`.
