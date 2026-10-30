# Checkpoint Ghidra/Docker — `zte_reboot_ext`

O candidato versionado `zte_reboot_ext.ko` tem SHA-256
`e6146dfb5cf51b0ec46e1f32bfd7b5f7315d089eebc96beef6fadf6eb79bf17f` e 236096 bytes.

O protocolo Docker foi repetido em dois ciclos limpos com a imagem
`nubia-sm8850-kernel-builder:latest`, o volume de kernel `nubia_sm8850_kernel_src`
e o toolchain `clang-r536225`. Os dois ciclos produziram exatamente o hash e o
tamanho do candidato.

Foi gerado um export headless independente com Ghidra 12.1.2 para AArch64 e
preservado em `offline_static/ghidra_candidate_20260901`, cobrindo as 14 funções
do export stock. A comparação estrita passou em 8/14 funções; 11/14 passaram em
tamanho de corpo, 8/14 em forma operacional do P-Code e 9/14 no C normalizado.
Os fallbacks autorizados não alteraram o resultado.

As divergências abertas concentram-se em `fill_nvmem_buf`, `count_format_args`,
`entry_panic`, `zte_reboot_ext_probe`, `save_panic_buf_data_to_nvmem` e
`boot_nvmem_show`. Como este driver participa do caminho de panic/reboot, revisão
independente, validação controlada no aparelho e promoção continuam pendentes.
Nenhuma igualdade total foi declarada.
