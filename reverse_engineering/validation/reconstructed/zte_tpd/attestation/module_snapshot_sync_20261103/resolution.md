# Correção do snapshot `zte_tpd` — 2026-11-03

A auditoria global encontrou um único desencontro: o mapa declarava `adaccd92…`, mas o `.ko` no repositório e no Docker ainda era `5c63a4e7…`; o mapa curado do Docker também estava antigo. A árvore atual de 858 arquivos C/H/Assembly/Makefile coincide hash a hash com a entrada do build canônico Docker.

O build canônico já havia passado em dois ciclos independentes, ambos gerando `adaccd92ac5b2b657626d0e3912441d386a1ef04a7326abfd3251ac4c660c143` (7.259.840 bytes). Copiei esse artefato para o `.ko` versionado e para `engenharia/curated/zte_tpd/zte_tpd.ko`; sincronizei também o mapa atual para `engenharia/curated/zte_tpd/reconstruction_map.json`.

A auditoria repetida agora confirma 24/24 árvores com `.ko` repo, `.ko` Docker, stock e inventário Ghidra; 1.039 funções Ghidra cobertas; 24/24 candidatos iguais ao Docker; 24/24 mapas, inputs e snapshots de fonte alinhados; zero achados estruturais. `zte_tpd` tem mapeamento de identidade 367/367. Ainda há 34 funções classificadas como `HARDENED_STOCK_DEVIATION`, portanto esse resultado não afirma equivalência semântica completa nem validação em hardware.

Relatório de resolução: `resolution.json` (SHA-256 `8a3130e3f010ae62bed9f216aa8a235c1ef03b18cf897809c2e5a5cc53bada7e`). Inventário anterior preservado em `inventory_before_sync.json`/`.md`; inventário pós-correção em `reverse_engineering/validation/driver_inventory_audit_20261103.json`/`.md`.
