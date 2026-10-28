# rdbg_write@00100a9c — atestação estática

## Resultado

- Estado: `implemented_pending_independent_review`.
- Núcleo automatizado: `CORE_GATES_PASS`; promoção permanece `false`.
- Assembly/relocações: passou; 267 instruções, símbolo de 1068 bytes e relocações comparadas sem equivalências relaxadas.
- Ghidra: passou; corpo stock/candidato de 1064 bytes, 909 operações P-Code, C normalizado e forma P-Code alinhados.
- KCFI: passou.
- Joern estrito e slice: passaram.
- Dois builds Docker limpos: reproduzíveis. SHA-256 do módulo candidato: `7126067fff531209f15b641088cee1d70ba335767107a0fd362336e23c600f87`.
- O snapshot `engenharia/curated/rdbg` foi sincronizado; dois builds limpos do snapshot produziram o mesmo hash do módulo candidato.

## Causa e correção

A fonte anterior introduzia um `BUG_ON(nsize < 0)` redundante antes de `copy_from_user`, alterando o codegen e acrescentando um caminho de trap que não corresponde ao stock. A fonte v35 remove essa verificação extra; a validação do tamanho permanece no caminho do helper de cópia. O guard de GPIO foi expresso com o breakpoint stock observado (`brk #0x5512`) e fluxo explicitamente inalcançável depois dele. Assembly/relocações e Ghidra/P-Code do módulo resultante passaram sem fallback de equivalência.

## Limites ainda abertos

A auditoria do driver RDBG completo continua sem status `static_verified`: `init_module@00101638` ainda não está reconstruído e o módulo parcial apresenta imports/vermagic que dependem de fechar essa função e reconciliar o ambiente alvo. A auditoria completa não autoriza dizer que o driver está 100% reconstruído. Também faltam harness/modelo limitado, revisão independente, provas de locks/lifetime, ledger de barramento e teste controlado no aparelho. Nenhum módulo foi carregado e nenhum teste de hardware foi executado.

## Identidade

- Stock SHA-256: `05aaaf7e0da03cbf25343e32d9a0a7a965de6907eef342a1d9d4b0b55cd11a12`.
- Fonte canônica: `kernel_development/drivers/reconstructed/rdbg/rdbg_fn_06_write.c`.
- Fonte e mapa usados pelo protocolo: `candidate_source/rdbg` (snapshot hashado em `protocol_core/input_manifest.json`).
- Módulo candidato: `candidate_module/rdbg.ko`.
- Job: `workspace_tools/reconstruction_pipeline/hard_driver_job.rdbg_write_20261028.json`.
