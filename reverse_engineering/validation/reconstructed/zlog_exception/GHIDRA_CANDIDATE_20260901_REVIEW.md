# Checkpoint Ghidra — `zlog_exception`

O candidato atual `zlog_exception.ko` tem SHA-256
`93ddac9f92973e0c8e13c438ccca8fca68ccd5334303de2f1a7baac2dd073d41` e 232552 bytes.

Foi feita uma análise headless independente com Ghidra 12.1.2 para AArch64. O
export completo foi preservado em `offline_static/ghidra_candidate_20260901` e
contém as 10 funções da superfície stock.

Na comparação estrita, 7/10 funções passaram. Em todas as 10 funções passaram
o tamanho do corpo e a forma operacional do P-Code. As três divergências
restantes — `zlog_open`, `zlog_release` e `init_module` — estão limitadas ao C
normalizado produzido pelo decompilador; não foram convertidas em igualdade
semântica por fallback.

O Docker reproduziu o mesmo candidato em três artefatos independentes:
`layout_transplant`, `clean_builds/cycle_1` e `clean_builds/cycle_2`, todos com
232552 bytes e o mesmo SHA-256 do candidato. Este checkpoint não promove
igualdade semântica Ghidra total: revisão independente, validação de hardware e
promoção continuam pendentes.
