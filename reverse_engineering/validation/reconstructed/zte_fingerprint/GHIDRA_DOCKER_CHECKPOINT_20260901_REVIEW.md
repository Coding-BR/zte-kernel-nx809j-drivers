# Checkpoint Ghidra/Docker — `zte_fingerprint`

Este checkpoint reexecuta a cadeia sobre o alvo `zte_fingerprint` com a imagem
`nubia-sm8850-kernel-builder:latest`, os volumes `nubia_sm8850_kernel_src` e
`nubia_sm8850_kernel_toolchains`, `clang-r536225`, `ARCH=arm64`, `LLVM=1` e
`LLVM_IAS=1`. A dependência externa foi incluída por
`KBUILD_EXTRA_SYMBOLS=vendor.Module.symvers`, contendo os quatro símbolos
exportados por `zlog_common`.

## Reprodutibilidade do build

- ciclo 1 e repetição limpa no mesmo caminho Docker: 393.384 bytes,
  SHA-256 `4dea450263ff4e7953e91d1562bbf228c7a7d97c40d4e4dbf18ba672f01573b`;
- ciclo 2 em outro caminho `M=`: 393.384 bytes,
  SHA-256 `49ff57e2f3392992ecae248dc615f06b6596b24f8510c3b43640679ce12be4b4`;
- SHA-256 da seção `.text` nos três artefatos:
  `bd847da64bf874049840232c392ae7bf265ef5ec1951fd439a043df09ad63c0a`.

A diferença entre os hashes ELF completos é atribuída aos caminhos de debug,
offsets, build-id e metadados de seção; a seção executável permaneceu idêntica.
Os três módulos Docker estão preservados em `docker_rebuild_20260901/`.
O candidato histórico do repositório é outro artefato, de 393.336 bytes e
SHA-256 `553846049bafaf30e0e7ee0349f08f0b168c93a96cdc1b0b44ae8b2264f94b34`.

## Ghidra e assembly

O ciclo 1 Docker foi analisado com Ghidra 12.1.2 para AArch64. O export dos 30
símbolos do stock foi preservado em
`offline_static/ghidra_candidate_20260901/`; o manifesto tem SHA-256
`7b5d4b387a3419a010b5b63d3d96b4e8b8f78037e00a2b3dc09dcaa3dd5c81e1` e o
executável analisado tem MD5 `7864e3646b607695f8f2df40cfc59cad`.

Comparado ao stock (`ghidra_stock/`, manifesto SHA-256
`bc05ae5c164bf576beac1cc37122b51e3b2ac23137fae091e7ea51ea9eacf52c`):

- equivalência Ghidra estrita: 3/30;
- tamanho de corpo compatível: 5/30;
- forma operacional do P-Code compatível: 3/30;
- C normalizado compatível: 3/30;
- fallbacks autorizados: não elevaram o conjunto aprovado.

A extração e comparação independente de assembly AArch64 aprovou somente
3/30; 27 funções divergiram em tamanho de símbolo, instruções ou relocations.
As diferenças abrangem `gf_ioctl`, `gf_compat_ioctl`, `gf_probe`, `gf_remove`,
IRQ, power/reset, pinctrl, netlink e `init_module`/`cleanup_module`. As únicas
funções aprovadas estritamente foram os wrappers `_inline_copy_to_user`,
`_inline_copy_from_user` e `list_del`.

## Decisão

Este checkpoint é diagnóstico e não promove o candidato. Embora o mapa e o
`STATUS.md` históricos registrem 30/30 em gates anteriores, a reexecução
independente não reproduziu essa equivalência; a paridade estática do driver
permanece aberta. Os relatórios de máquina são
`ghidra_candidate_20260901_semantic_comparison.json` e
`assembly_candidate_20260901_comparison.json`.

Revisão independente, validação supervisionada no hardware e promoção final
continuam pendentes.
