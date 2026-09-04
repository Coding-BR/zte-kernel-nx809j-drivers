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

A auditoria independente pública v2 também passou como `static_verified`:
recompilou o módulo em dois ciclos Docker limpos, reproduziu o mesmo SHA-256
`55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce` e confirmou
paridade AArch64, aliases, namespaces, símbolos indefinidos e vermagic alvo.
O relatório bruto está em `independent_audit_public_v2.json` e o resumo em
`independent_audit_public_v2.md`.

## Escopo

Esta atestação é estrutural/offline. Ela não declara equivalência semântica
integral, revisão independente, carregamento em Android ou comportamento no
hardware NX809J. O relatório histórico `independent_audit_blocked_20260904.*`
é preservado para mostrar a tentativa v1 contra o diretório Docker isolado;
esse modo não tinha o run histórico de aquisição/Ghidra. A v2 usa a evidência
pública versionada em `reverse_engineering/validation/reconstructed/zte_tpd/`.

Os relatórios desta pasta são hash-bound e não incluem o módulo stock OEM.
