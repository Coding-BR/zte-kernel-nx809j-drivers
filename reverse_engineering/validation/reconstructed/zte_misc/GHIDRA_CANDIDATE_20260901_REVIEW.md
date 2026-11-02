# Revisão do export candidato Ghidra — `zte_misc`

## Escopo

Checkpoint headless do candidato atual, analisado com Ghidra `12.1.2_PUBLIC` e
comparado ao stock preservado. O binário candidato é:

- `kernel_development/drivers/reconstructed/zte_misc/zte_misc.ko`
- SHA-256: `91ad71bf9559a553a8711139208afc1c7ece86592e2dd7ffbe7b58dc7981ce5f`

O mesmo SHA-256 foi reproduzido nos ciclos Docker `patched_baseline` e
`patched_cycle_2` do checkpoint `zte_misc_exact_20260828`.

## Resultado estrito

- Ghidra exportou 14 funções candidatas, igual ao inventário stock.
- A comparação estrita passou em 14/14 funções.
- Foram aprovados C decompilado normalizado, forma de P-Code, sequência de
  mnemônicos, tamanhos, seções e identidade MD5 dos módulos analisados.
- O resultado não altera o escopo já documentado: a paridade de assembly,
  KCFI, microtarefas e build Docker continuam sendo gates independentes.

## Pendências

Este é um checkpoint estático forte, não uma declaração de equivalência
funcional absoluta. Permanecem:

- revisão independente por outro revisor;
- validação controlada em hardware com captura de logs e rollback.

## Artefatos

- Export candidato: `offline_static/ghidra_candidate_20260901`
- Comparação: `offline_static/ghidra_candidate_20260901_semantic_comparison.json`
- Stock: `offline_static/ghidra_stock`
- Assembly exato: `offline_static/assembly_comparison_exact_20260828.json`
- Status geral: `kernel_development/drivers/reconstructed/zte_misc/STATUS.md`

Status deste checkpoint: evidência Ghidra versionada e aprovada
estaticamente; gates 8 e 9 continuam abertos.
