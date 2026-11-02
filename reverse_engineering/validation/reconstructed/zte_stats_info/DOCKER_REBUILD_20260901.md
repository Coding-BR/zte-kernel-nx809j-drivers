# Rebuild Docker versionado — `zte_stats_info`

Data: 2026-09-01
Imagem: `nubia-sm8850-kernel-builder:latest`
Digest: `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`
Toolchain: `clang-r536225`

O snapshot atual foi compilado em dois ciclos limpos usando o kernel preparado
no volume Docker `nubia_sm8850_kernel_src` e o toolchain `nubia_sm8850_kernel_toolchains`.
Os dois ciclos produziram o mesmo módulo:

`22f93083062922e5a2932e387d91db714e123896818e13a2ef853948308349e7`
`329768 bytes`

Esse hash é exatamente o mesmo do candidato curado no repositório.

Depois do build, o módulo de cada ciclo foi desassemblado no próprio ambiente
Docker com `llvm-objdump` e comparado por instruções AArch64, relocação resolvida,
seção e tamanho de símbolo. O resultado foi **PASS em 8/8 funções**, sem falhas.

As microtarefas foram rechecadas depois da publicação e passaram em **8/8**;
as hashes antigas do manifesto estavam desatualizadas e foram corrigidas para
os artefatos atualmente versionados.

A rechecagem Ghidra estrita está em
`ghidra_semantic_recheck_20260901.json`: 5/8 funções passam na igualdade
normalizada do C decompilado e 8/8 passam em tamanho/P-Code. As três diferenças
restantes (`zte_add_del_listener`, `zte_prepare_reply` e `init_module`) são
mantidas como bloqueador de igualdade semântica Ghidra estrita.

## Controle de caminho de build

Um build diagnóstico inicial com `M=/work/validation/zte_stats_info/cycle_1`
gerou um hash diferente porque o caminho absoluto acabou incorporado em
`.rodata.str1.1`. Esse artefato não foi aceito. O protocolo final fixa
`M=/work/validation/zte_stats_info` e usa `-ffile-prefix-map` para impedir que o
nome do diretório do ciclo altere o ELF.

## Estado

Esta evidência confirma reprodutibilidade Docker e alinhamento estático do
candidato com o export/comparação Ghidra já preservado. Ela não substitui
revisão independente nem validação controlada no aparelho; os Gates 8–10
continuam incompletos.
