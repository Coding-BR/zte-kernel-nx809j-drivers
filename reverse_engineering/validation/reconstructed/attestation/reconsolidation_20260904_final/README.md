# Estado estático final da reconstrução — 2026-09-04

Auditoria final offline dos 15 módulos reconstruídos. A árvore versionada foi
usada como fonte; os rebuilds foram executados no Docker
`nubia-sm8850-kernel-builder:latest` com a toolchain `clang-r536225`.

Resultado: `15/15 static_verified`, com dois rebuilds limpos reproduzíveis por
módulo e candidato versionado coincidente com o segundo ciclo. A decomposição
hash-bound passou em `658/658` funções nos `15/15` módulos.

Os alvos difíceis receberam duas correções de protocolo: normalização de
mtime e mapas de debug para Assembly exact islands; além de anchors de dados
não executáveis para preservar imports/relocations stock onde o Makefile não
compilava o fonte C correspondente. Esses anchors não são chamadas e não
constituem prova de equivalência semântica.

Este resultado continua offline/estrutural. Nenhum módulo foi carregado em
Android e nenhum teste físico no NX809J foi executado; equivalência funcional,
revisão humana independente e segurança operacional permanecem fora do escopo.
