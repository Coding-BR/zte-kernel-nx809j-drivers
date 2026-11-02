# Checkpoint Ghidra/Docker — `zte_ir`

Este checkpoint reexecuta o cadeia do `zte_ir` com a imagem
`nubia-sm8850-kernel-builder:latest`, os volumes `nubia_sm8850_kernel_src` e
`nubia_sm8850_kernel_toolchains`, `clang-r536225`, `ARCH=arm64`, `LLVM=1` e
`LLVM_IAS=1`. O módulo não possui `vendor.Module.symvers` externo.

## Reprodutibilidade Docker

- ciclo 1 e repetição limpa no mesmo caminho `M=`: 238.624 bytes,
  SHA-256 `b5ed488b168aa9600943ce730430b4988b289ab8860460758347dd7609e07ccd`;
- ciclo 2 em outro caminho `M=`: 238.624 bytes,
  SHA-256 `ddeb1dd90c42dee193cc0bc450c921820d2e38a1bbb3a8caa066b789e4316159`;
- SHA-256 da seção `.text` nos três artefatos:
  `f1d2e6664e5554b31eeb6d8e8a5083f5b8e1278a5adc304cc81336bbda9508ae`.

A seção executável permaneceu idêntica; a divergência do ELF completo está nos
metadados/debug dependentes do caminho. Os artefatos estão em
`docker_rebuild_20260901/`.

## Ghidra e assembly

O ciclo 1 Docker foi analisado com Ghidra 12.1.2 para AArch64. O export está em
`offline_static/ghidra_candidate_20260901_docker/`; o manifesto tem SHA-256
`17edde8c6772305c6f13a919d536945f0ceccb52712186da7896ad83a5935ef6`, MD5 do
executável `12fe1df1098b74c9e16b54621a2ec35e` e 12 funções detectadas.

O stock export contém 8 funções. Nos 8 símbolos comuns:

- equivalência Ghidra estrita: 0/8;
- tamanho de corpo compatível: 0/8;
- forma operacional do P-Code compatível: 0/8;
- C normalizado direto: 0/8;
- comparação independente de assembly AArch64: 0/8.

O candidato expõe quatro funções adicionais ao export stock, e todos os oito
símbolos comuns divergem em tamanho, instruções e relocations. Isso confirma
que as diferenças deliberadas registradas no `STATUS.md` não podem ser
tratadas como equivalência estática ao módulo OEM.

## Decisão

Este checkpoint é diagnóstico e não promove o candidato. A revisão do fonte
deve separar as extensões de segurança/robustez (`zte_ir_write`, ioctl,
probe/remove) do comportamento comprovado pelo stock antes de qualquer nova
atestação. Revisão independente, validação supervisionada no hardware e
promoção final continuam pendentes.

Os relatórios de máquina são `ghidra_candidate_20260901_docker_semantic_comparison.json`
e `assembly_candidate_20260901_docker_comparison.json`.
