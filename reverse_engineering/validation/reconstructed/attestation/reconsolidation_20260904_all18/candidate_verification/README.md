# Verificação hash-bound dos candidatos — 2026-09-04

Os 18 relatórios desta pasta foram gerados por
`workspace_tools/reconstruction_pipeline/verify_promoted_candidate.py` usando
`driver_audit_all18.json` como referência independente do build.

Resultado: `18/18 passed`. Em cada módulo, os dois ciclos Docker têm o mesmo
SHA-256 e tamanho, e o `.ko` curado coincide com o segundo ciclo.

Isso comprova identidade/reprodutibilidade do artefato. Não comprova
equivalência semântica, revisão humana independente ou funcionamento no
NX809J; nenhum módulo foi carregado no aparelho.

