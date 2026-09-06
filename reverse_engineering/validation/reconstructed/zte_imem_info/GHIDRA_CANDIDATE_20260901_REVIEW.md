# Checkpoint Ghidra — `zte_imem_info`

O candidato atual `zte_imem_info.ko` tem SHA-256
`df1e2304a98b22e604eb786f52f971914615fbefae6028ef4c5d5eabb168426d`.

Foi feita uma nova análise headless com Ghidra 12.1.2 e o export completo foi
preservado em `offline_static/ghidra_candidate_20260901`. As seis funções da
superfície stock passaram em identidade, tamanho, C decompilado normalizado e
forma operacional do P-Code.

O mesmo hash do módulo aparece em três artefatos de rebuild Docker já
preservados em `kernel-docker-workspace/engenharia/validation/zte_imem_info_exact_20260828`.

O verificador checkout-only de microtarefas não foi promovido neste checkpoint:
o manifesto ainda referencia `engenharia/validation/zte_imem_info`, caminho
externo que não está disponível neste checkout. Isso é uma lacuna de
rastreabilidade da evidência, não uma aprovação implícita.

Este é um checkpoint estático, não uma promoção final: revisão independente,
validação no aparelho e manifesto de promoção continuam pendentes.
