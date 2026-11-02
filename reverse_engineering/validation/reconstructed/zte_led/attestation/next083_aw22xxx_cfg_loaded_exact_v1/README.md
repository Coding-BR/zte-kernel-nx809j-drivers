# aw22xxx_cfg_loaded — exact offline attestation

Esta unidade promove `aw22xxx_cfg_loaded@001040cc` como `PROMOTED_OFFLINE_EXACT`.

- O stock e o candidato têm 476 bytes e 119 instruções.
- A comparação Assembly/relocations passou após normalização dos endereços relocáveis.
- O módulo foi compilado duas vezes no Docker `nubia-sm8850-kernel-builder:latest` com `clang-r536225`, produzindo o mesmo SHA-256.
- O Ghidra 12.1.2 gerou uma exportação fresca; corpo e shape de P-Code passaram.
- KCFI é aplicável: o preâmbulo e o type ID `0x879dc3f4` coincidem.
- Joern e o harness host passaram com cobertura de 58/58 funções.

A C normalizada do Ghidra não foi usada como gate de promoção porque esta função é uma ilha Assembly exata; a exceção é explícita em `decision.json`. A diferença de símbolo indefinido `mem_alloc_profiling_key` pertence à baseline do módulo e não altera a paridade desta função.
