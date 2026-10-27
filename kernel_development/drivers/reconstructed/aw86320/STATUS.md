# Status do driver `aw86320`

Estado: `STATIC_VERIFIED_OFFLINE`; candidato estático reconstruído e validado.

- 37/37 funções mapeadas; paridade de assembly e relocações: PASS.
- KCFI: 37/37 comparações requeridas: PASS.
- Ghidra: identidade do módulo e comparação semântica estrutural: PASS; 5 funções usam a exceção explícita de ilha exata de assembly porque o C decompilado diverge, embora os bytes do corpo e o formato P-Code coincidam.
- Docker: 2 builds limpos reproduzíveis; SHA-256 `1e8b30b92fea439507a5e7e3b9fa982ac06a9aef54145250273ad8197ef0ada1`.
- Joern estrito e slice: PASS, sem chamadas não resolvidas.
- Evidência versionada: `reverse_engineering/validation/reconstructed/aw86320/attestation/next001_aw86320_exact_static_v1/`.
- Revisão independente e teste de hardware: pendentes; promoção não autorizada.
- Classificação: driver AWINIC/device-vendor em revisão; não classificado como proprietário ZTE/Nubia.

`STATIC_VERIFIED_OFFLINE` confirma os gates estáticos do candidato; não afirma equivalência C, comportamento físico nem validação no NX809J.
