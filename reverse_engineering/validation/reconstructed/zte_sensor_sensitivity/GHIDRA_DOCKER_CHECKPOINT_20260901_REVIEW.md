# Checkpoint Ghidra/Docker — `zte_sensor_sensitivity`

Este checkpoint reexecuta a cadeia sobre o alvo `zte_sensor_sensitivity` usando
a imagem `nubia-sm8850-kernel-builder:latest`, o volume de kernel
`nubia_sm8850_kernel_src`, o volume `nubia_sm8850_kernel_toolchains` e o
toolchain `clang-r536225`. O build foi feito com `ARCH=arm64`, `LLVM=1`,
`LLVM_IAS=1` e o Makefile do alvo, sem `vendor.Module.symvers` externo.

## Reprodutibilidade do build

- ciclo 1, caminho Docker canônico: 229.392 bytes,
  SHA-256 `f42084969fc37ff4ab7f1b5cff9888a4e274b3dcd63398c868c67fc999e51af5`;
- repetição limpa no mesmo caminho Docker: mesmo tamanho e mesmo SHA-256;
- ciclo 2 em outro caminho `M=`: 229.400 bytes,
  SHA-256 `23d4b6d4f918b52d83e8e4bde503822fe26004a8e8e99cc2d95b2b4421b54287`.

A divergência entre caminhos é observável em offsets, `.debug_str`,
`.debug_addr`, `.comment`, build-id e tabelas de seção. A seção `.text` foi
comparada independentemente e teve o mesmo SHA-256
`2b114c879bcce9b16b08378520fd852ceb8eec2d94973efacff3b3b65ffb37ba` nos dois
ciclos e na repetição; o código funcional, portanto, é determinístico apesar
da diferença de metadados de debug.
Portanto, a regra operacional para os próximos alvos é fixar um único caminho
`M=` dentro do container e repetir o build nesse mesmo caminho antes de usar o
hash como evidência de determinismo.

Os três artefatos Docker estão preservados em
`docker_rebuild_20260901/`. O candidato histórico versionado continua sendo o
`.ko` de SHA-256
`f3dddeecac42f78adaa2dffa58f4030c1e53ba161f0649bb14c01afaa0a6871e` e 229.296
bytes; ele não deve ser confundido com o artefato Docker deste checkpoint.

## Ghidra headless independente

O artefato Docker do ciclo 1 foi analisado com Ghidra 12.1.2 para AArch64 e o
export completo foi preservado em
`offline_static/ghidra_candidate_20260901/`. O export contém 21 funções. A
identidade do módulo passou no comparador: o módulo analisado e o módulo
preservado em `docker_rebuild_20260901/` são o mesmo arquivo.

Comparação contra
`offline_static/ghidra_stock/`, usando C normalizado, forma do P-Code e
identidade de módulo:

- equivalência estrita: 1/21;
- tamanho de corpo compatível: 9/21;
- forma operacional do P-Code compatível: 9/21;
- C normalizado compatível: 1/21;
- fallbacks autorizados: não elevaram o resultado.

As divergências atingem `sensors_sensitivity_register`, a maioria das
callbacks sysfs e `init_module`; `cleanup_module` foi a única função aprovada
estritamente. A comparação independente de assembly AArch64 também falhou em
20/21 funções, incluindo instruções, relocations ou tamanho de símbolo.

## Decisão

Este é um checkpoint diagnóstico, não uma promoção. O estado histórico do
driver declara equivalência Ghidra, mas a reexecução independente não a
reproduziu; por isso a equivalência estática deve voltar a ser considerada
aberta até explicar as diferenças de código/compilação e atualizar as
as atestações correspondentes. Os relatórios de máquina são:

- `ghidra_candidate_20260901_semantic_comparison.json`;
- `assembly_candidate_20260901_comparison.json`.

Revisão independente, validação em hardware e promoção final continuam
pendentes.
