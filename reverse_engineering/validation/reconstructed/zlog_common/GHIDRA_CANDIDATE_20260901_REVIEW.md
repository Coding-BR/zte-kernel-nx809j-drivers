# Checkpoint Ghidra — `zlog_common`

O candidato atual `zlog_common.ko` tem SHA-256
`4df05370ac748ab830a32b57029d7f3f8f2dda291718ab5be1c93d092a118297`.

Foi feita uma análise headless independente com Ghidra 12.1.2. O export
completo foi preservado em `offline_static/ghidra_candidate_20260901` e contém
13 funções, correspondentes à superfície Ghidra stock.

Na comparação estrita, 8/13 funções passaram. Com os fallbacks estreitos
autorizados para artefatos de decompilação, 10/13 passaram; permanecem abertas
`zlog_register_client`, `zlog_comm_open` e `zlog_comm_release`. Em todas as
13 funções, tamanho do corpo e forma operacional do P-Code passaram.

O Docker reproduziu o candidato em dois ciclos, ambos com o mesmo hash
`4df05370…` e 237440 bytes. Este checkpoint não promove igualdade semântica
Ghidra total: revisão independente, hardware e promoção continuam pendentes.
