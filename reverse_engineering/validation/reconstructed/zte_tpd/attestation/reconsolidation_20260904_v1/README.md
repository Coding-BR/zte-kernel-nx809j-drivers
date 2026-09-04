# `zte_tpd` reconsolidation 2026-09-04

Esta atestação registra a geração atual do módulo reconstruído usando a árvore
versionada do repositório e o snapshot curado que o Docker compila.

## Resultado

O rebuild canônico passou em dois ciclos independentes e reproduzíveis. O
módulo candidato rastreado tem SHA-256
`55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce` e
tamanho `6.307.336` bytes. A superfície KCFI recuperável passou em `322/322`
funções stock, e a decomposição publicada passou em `367/367` funções com
bijeção entre Ghidra, P-Code e Assembly.

O Docker utilizado foi `nubia-sm8850-kernel-builder:latest`, imagem
`sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`,
com a toolchain `clang-r536225` no volume
`nubia_sm8850_kernel_toolchains`.

## Escopo

Esta atestação é estrutural/offline. Ela não declara equivalência semântica
integral, revisão independente, carregamento em Android ou comportamento no
hardware NX809J. A auditoria independente reproduzível também registra um
bloqueio de proveniência quando executada somente contra o diretório Docker:
o run histórico de aquisição/Ghidra não existe nesse snapshot; a evidência
derivada versionada permanece em `offline_static/`.

Os relatórios desta pasta são hash-bound e não incluem o módulo stock OEM.
