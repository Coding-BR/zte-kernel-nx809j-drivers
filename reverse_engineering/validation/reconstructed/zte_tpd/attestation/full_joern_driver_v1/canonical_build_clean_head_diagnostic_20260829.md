# Diagnóstico de reproducibilidade — `HEAD` limpo

Estado: `OPEN_BUILD_INTEGRATION_GAP` — diagnóstico, não promoção.

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

O gap de integração deve ser resolvido pelo responsável pelas alterações
paralelas: revisar, testar e commitar o conjunto mínimo de mudanças que
define as seções e a composição do módulo. Até lá, os commits deste branch
continuam comprovando apenas os blocos individuais já atestados; não declarar
build canônico final reproduzível.
