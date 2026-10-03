# Revisão estática — `tpd_touch_release`

Estado: `INITIAL_REVIEW_OPEN` — não é aprovação de segurança, equivalência
semântica integral nem validação em hardware.

## Escopo

Alvo stock `0010ec70`, com `1596` bytes e `399` instruções AArch64. O módulo
continua usando `tpd_touch_release_exact.S`; `tpd_touch_release.c` é a vista
legível para revisão e teste host.

O cruzamento entre Ghidra, P-Code, assembly exact e C confirma os dois fluxos
principais: liberação do contato ativo, incluindo duração/gestos e ghost work;
e reimpressão de edge point com seleção do work por slot. A limpeza final da
estrutura de ponto e a captura dos modos de tela também estão presentes.

## Correção verificada nesta rodada

O C tinha quatro usos de `tpd_cdev + 2776` para o mutex. O assembly exact e a
decompilação confirmam `tpd_cdev + 0xc90` (`3216`). Os quatro usos foram
corrigidos, e o harness agora rejeita qualquer endereço diferente de
`device_storage + 0xc90`.

Evidência do teste Docker: quatro casos, dois ciclos ASan/UBSan, ambos com
`PASS tpd_touch_release host tests (4 cases)` e binário reproduzível
`ef8dcfe8b481ecd933fcf76294bbf91f6f2626018b1a14b5c3723d500b77fdbc`.

## Diferença de contrato mantida explicitamente

Para `a2 >= 11` e para `a2 == 10`, o stock termina no breakpoint AArch64
`brk #0x5512`/breakpoint de software não-retornável. A vista C e o harness
usam um stub host determinístico de `__break`; isso permite testar o processo
sem derrubar o binário host, mas não deve ser interpretado como semântica de
produção. O assembly exact não foi alterado.

## Joern e ciclo de vida

O gate Joern estrito do full-driver passou sem problemas de parsing, chamadas
não resolvidas ou bloqueadores. Para esta função foram identificadas duas
sequências lock/unlock e duas chamadas `queue_delayed_work_on`. Esses achados
exigem revisão humana do ciclo de vida de `tpd_cdev`, mutex, workqueues e
`point_report_info`; não provam, isoladamente, ausência ou presença de UAF,
deadlock ou corrida.

## Decisão

O objeto exact permanece elegível apenas para a alegação offline já registrada.
A vista C está alinhada no offset do mutex e verificada no host, mas a revisão
independente, scheduler real, subsistema Android input, firmware, rollback e
execução no NX809J continuam pendentes. Não promover esta função para uso em
hardware com base somente neste documento.
