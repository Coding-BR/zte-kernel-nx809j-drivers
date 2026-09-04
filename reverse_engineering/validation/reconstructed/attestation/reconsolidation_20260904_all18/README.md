# Reconsolidação estática final — 18 módulos — 2026-09-04

Esta é a primeira auditoria consolidada da árvore reconstruída completa. O
auditor público foi executado no Docker de engenharia com dois rebuilds limpos
por módulo, usando a imagem `nubia-sm8850-kernel-builder:latest`, toolchain
`clang-r536225` e o kernel alvo registrado no repositório.

Resultado do build/KMI/ELF: `18/18 static_verified`, sem falhas. Resultado da
decomposição: `731/731` funções com bijeção `stock ELF -> Ghidra -> C
decompilado -> P-Code -> Assembly AArch64` nos `18/18` módulos.

Os três auxiliares incorporados nesta rodada são:

- `fp_goodix`: 30 funções;
- `gpio_keys_nubia`: 24 funções;
- `nubia_hw_version`: 19 funções.

Os candidatos foram confirmados contra os rebuilds Docker e os manifests
hash-bound foram atualizados. Nenhum módulo foi carregado em Android; revisão
humana independente, equivalência semântica integral e validação física no
NX809J continuam pendentes. `static_verified` não autoriza `insmod`, `rmmod`,
unbind, flash ou substituição automática do stock.

Arquivos desta atestação:

- `driver_audit_all18.json` e `DRIVER_AUDIT_all18.md`: build, ELF, modinfo,
  KMI, traceabilidade e candidato curado;
- `module_decomposition_all18.json` e `MODULE_DECOMPOSITION_all18.md`:
  decomposição canônica;
- `module_decomposition_all18_check.json` e
  `MODULE_DECOMPOSITION_all18_check.md`: repetição sem escrita, também PASS.

