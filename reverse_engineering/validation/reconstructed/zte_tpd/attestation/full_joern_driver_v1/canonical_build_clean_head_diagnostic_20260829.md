# Diagnóstico de reproducibilidade — `HEAD` limpo

Estado: `RESOLVED_BY_MINIMAL_SECTION_ANCHOR_FIX` — validação offline, não promoção
de hardware.

Foi executado o builder canônico Docker em dois ciclos a partir de um
snapshot criado por `git archive HEAD`, sem alterações do worktree. Ambos
falharam antes de gerar o módulo, com referências indefinidas às seções
`.bss` e `.data` em objetos exact como `syna_request_managed_device_exact.o`,
`syna_dev_module_init_exact.o`, `syna_dev_module_exit_exact.o` e
`cleanup_module_exact.o`.

O relatório bruto está preservado em
`canonical_build_clean_head_failed_20260829.json` (SHA-256
`4446b865c8b3c0857bd84feea9761a5e892e440eee189a9daea784e279460e7`).

## Comparação com o snapshot atual

Após sincronizar a árvore atual, que contém alterações paralelas ainda não
commitadas em `Makefile`/`globals.c`, o mesmo builder passou em dois ciclos e
produziu o módulo `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`
de `6307336` bytes. Esse resultado não é publicável como build reproduzível
do branch porque depende dessas alterações fora do `HEAD`.

## Decisão

## Correção mínima validada

O conjunto mínimo foi isolado sobre um `git archive HEAD` e validado em dois
ciclos Docker: os seis arquivos de relocação abaixo substituem referências
diretas a `.bss/.data` por símbolos globais materializados e adicionam as
âncoras de seção necessárias durante a montagem:

- `cleanup_module_exact.S`
- `syna_dev_module_exit_exact.S`
- `syna_dev_module_init_exact.S`
- `syna_hw_interface_exit_exact.S`
- `syna_request_managed_device_exact.S`
- `syna_testing_remove_dir_exact.S`

O relatório hashado está em
`canonical_build_section_anchor_fix_20260829.json`. Os dois ciclos terminaram
com código zero, sem diagnósticos, e produziram o módulo idêntico
`fdeb065f74505f6748b1d340c578c968826523094cd56bb745ddd978663e8f11`.
Esta validação resolve o erro de montagem do `HEAD` limpo; a declaração de
equivalência total do driver e a validação em hardware continuam fora do
escopo.
