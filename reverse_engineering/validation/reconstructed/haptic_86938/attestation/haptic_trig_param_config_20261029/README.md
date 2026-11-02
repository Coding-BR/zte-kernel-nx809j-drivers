# Atestação dos helpers de parâmetros de trigger

## Escopo e resultado

Foram reconstruídos `aw8693x_trig1_param_config@00106bac`,
`aw8693x_trig2_param_config@00106ca4` e
`aw8693x_trig3_param_config@00106d98`.

O protocolo `core_v5` terminou com `CORE_GATES_PASS` em 2026-10-29. Isso valida
somente estes três helpers contra as provas estáticas registradas. O mapa os
mantém como `candidate_under_static_validation`; equivalência global do driver
não foi estabelecida.

## Problemas encontrados e correções

- Os três arquivos C existiam, mas estavam fora do `Makefile` e do mapa. Foram
  adicionados ao build e vinculados aos endereços stock.
- O kernel Docker compila com `-ftrivial-auto-var-init=zero`. Isso inseria
  `str wzr, [sp, #4]` no início de cada função, fazendo o corpo candidato ficar
  4 bytes maior. O buffer local agora usa `__uninitialized`; `data[0]` recebe
  um valor antes de cada chamada e `i2c_w_bytes` lê somente um byte.
- A ordem dos operandos de OR mudou os registradores e a ordem das instruções
  geradas. As expressões foram organizadas para calcular primeiro o bit de
  polaridade. Os três corpos agora coincidem integralmente em tamanho,
  instruções e relocations.
- O inventário KCFI reportava “preamble overlap”. A inspeção do call graph e do
  Assembly mostrou que os helpers não têm preâmbulo KCFI válido e são chamados
  diretamente por `trig_store`; portanto KCFI não é exigido para eles. O texto
  do mapa explica que o overlap é uma heurística do scanner.
- O overlay Joern `data-flow` global excedeu 300 segundos; a source view
  restrita gerou um slice vazio porque não há semânticas source/sink definidas
  para estes acessos de campos e chamadas I2C. O gate final usa `usages`, que
  registra os casts, os acessos e as chamadas de cada helper. MP2 e MP6
  preservam o ledger manual de estado e barramento; o slice não é apresentado
  como prova de fluxo de dados.

## Provas do protocolo

- Docker: dois builds limpos produziram bytes idênticos. O módulo candidato
  registrado pelo protocolo final `core_v5` tem SHA-256
  `74a201b0ca35ddb222aadd288be40b531acda4fe1256e83e4e27ff8066c3ebf6`.
- Assembly/relocations: comparação passou para os três helpers.
- Ghidra: pseudocódigo normalizado, bytes do corpo e forma das operações
  P-Code passaram para os três helpers. A exportação candidata contém 68
  funções e tem executable MD5 `3aca6a94c6fe130662de9368dbaaf703`.
- Joern: gate estrito e escopo passaram; o slice `usages` registra 23
  referências/chamadas por helper.
- KCFI: `NOT_REQUIRED` para os três helpers, conforme a evidência stock.
- Identidade de entrada e mapa: passaram.

O relatório amplo do Docker ainda classifica `haptic_86938` como
`incomplete_or_failed`: este módulo reconstruído é parcial e não corresponde
ao módulo completo quanto a vermagic, aliases e imports. O gate
`DOCKER_REPRODUCIBLE` do protocolo confirma reprodutibilidade do build parcial,
não compatibilidade ou conclusão do driver completo.

## Trabalho pendente

A decisão de promoção é `NOT_AUTHORIZED`. Permanecem pendentes harness de host,
sanitizers/modelagem limitada, revisão independente, validação física do
barramento e os demais itens listados em `core_v5/promotion_decision.json`.

As evidências completas estão em `core_v5/`, a exportação Ghidra candidata em
`candidate_ghidra_fixed2/`, e as entradas MP0–MP6 em `pre_candidate/`.
