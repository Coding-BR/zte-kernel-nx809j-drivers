# `get_ram_num` — checkpoint de reconstrução

Estado: `candidate_under_static_validation`. Esta execução não promoveu a função.

## Problemas identificados e correções

- O runner comparava o preâmbulo KCFI de `get_ram_num` embora o mapa declare
  `kcfi_required=false`. Para o perfil `CALLBACK_ABI`, a prova necessária são
  os guards dos callsites indiretos dentro da função. O runner agora separa
  esses dois critérios e compara cada slot, guard e type ID. O gate KCFI passou.
- A expressão C de byte swap gerava uma instrução extra. Uma ilha inline de
  `rev16`, derivada da instrução observada no módulo stock, igualou o tamanho e
  a contagem de instruções do corpo.

## Evidência desta execução

- Joern scoped e Joern slice: `PASS`.
- Duas compilações limpas com Docker e Clang `clang-r536225`: reprodutíveis;
  módulo candidato SHA-256
  `88575e71b2d8de5883a93ad6f3abbdc9e53cbbd5117e51727f87a43b269a1da9`.
- KCFI: `PASS`; cinco callsites indiretos guardados em cada módulo, com slots e
  type IDs correspondentes. Consulte `kcfi/callsite_comparison.json`.
- Assembly: seção `.text`, tamanho de 460 bytes, 115 instruções e relocations
  correspondem. A sequência de instruções ainda difere na ordem de cargas e na
  disposição dos blocos de erro/epílogo; por isso `ASSEMBLY_RELOCATIONS=FAIL`.
- Ghidra: C normalizado e tamanho do corpo correspondem. A sequência P-Code
  ordenada difere, então `CANDIDATE_GHIDRA_PCODE=FAIL`. O diagnóstico em
  `ghidra/pcode_order_diagnostic.json` mostra que os multiconjuntos de formas
  P-Code coincidem, mas isso não é tratado como prova semântica.
- Resultado geral: `CORE_GATES_FAIL`; promoção continua desautorizada.

O comparador estrito foi mantido. A divergência residual precisa de análise de
codegen/CFG e revisão independente antes de qualquer mudança de estado no mapa.
