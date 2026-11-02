# Revisão inicial — `change_tp_state`

Estado: `INITIAL_REVIEW_OPEN` — não é aprovação de segurança nem revisão independente.

## Escopo e evidência

O alvo é a função stock `00110320`, com corpo de 376 bytes, microtarefa
`118_change_tp_state`. A implementação ligada pelo Makefile é
`change_tp_state_exact.S`; `change_tp_state.c` permanece como vista legível
de revisão.

| Item | SHA-256 |
|---|---|
| C reconstruído | `b1bdd0ae041100893999e49f7df929912c14e22f2dfcaecf9fdfe4a348df7f90` |
| Assembly exact | `5a5f180d48909715569fc37d5b711675cc1d8509c1d73ac5191e64fd7ab9743e` |
| Decompilação Ghidra | `e0f5e3b4f78fd9deb49d734b1305bc50f4f88b3a86385c91ef422a6129be11e7` |
| P-Code Ghidra | `e5959268131805bbc749d58208ee82e58ed599599790fc659b284152e7761aa5` |
| Joern full-driver | `7a06c9c47f575222d8479975f6630e4847ae7832c2183556ca092af87765cd56` |
| Joern da atestação | `64862455d020b30b04c3aeb879cd7a3750a4ec75d8592bd449ea5e83135d109b` |
| Comparação AArch64 | `f6f84bd878c479a601eeab5a93c31bbdbf27bd0e9a3b12d6ab2742ecc110fd60` |
| Source sync | `ed6eb29adc1541007986af64524183573fa3c0e042195ace8a69a56be1ba42d2` |

## Normalização dos achados Joern

O full-driver registra 12 itens para esta função: nove registros de
sincronização, equivalentes a seis chamadas reais (`mutex_lock`, quatro
`queue_work_on` e `mutex_unlock`). A atestação específica passou em modo
estrito com zero blockers, zero problemas de parsing e zero chamadas não
resolvidas.

Os achados de sincronização não provam, sozinhos, que o workqueue, os objetos
`work_struct` ou o mutex continuam válidos durante teardown. Esses contratos
dependem da inicialização e da ordem de desligamento do driver.

## Cruzamento C, Ghidra, P-Code e assembly

O fluxo principal coincide em:

1. adquirir `tpd_cdev + 0xcc0`;
2. rejeitar `state > 3` ou `current_lcd_state > 2`;
3. publicar a transição entre `screen_on`, `screen_off` e `screen_in_doze`;
4. zerar o flag de `ufp_tp_ops + 0x8` nos mesmos caminhos;
5. enfileirar os works em `tpd_cdev + 0x9a0` ou `+0x9c0` com CPU `0x20`;
6. liberar o mutex nos caminhos normais.

O assembly foi montado no mesmo Docker `nubia-sm8850-kernel-builder:latest`
com o Clang `clang-r536225` e desassemblado com `llvm-objdump`. A confirmação
mostra 94 instruções e o breakpoint `brk #0x5512` no destino de entrada
inválida, além das relocations para `tpd_cdev`, `current_lcd_state`,
`ufp_tp_ops + 0x8`, fila e works.

## Divergências da vista C que bloqueiam uma futura compilação C

Há duas diferenças materiais entre o C legível e o contrato extraído:

1. No caminho `current_lcd_state == 2` e `state == LCDCHANGE_OFF`, o stock
   zera também `ufp_tp_ops + 0x80`, identificado no layout preservado como
   `ufp_tp_ops.gesture_complete`/`DAT_00131c20`, antes de zerar
   `ufp_tp_ops + 0x8` e enfileirar o work. O C só zera `field_8`; portanto a
   vista C não representa o reset completo da completion.
2. Para estado inválido, Ghidra mostra breakpoint seguido de chamada
   não-retornável e o assembly termina em `brk #0x5512`. O C chama `__break`
   e depois desbloqueia e retorna. Isso foi feito para tornar o harness
   determinístico, mas não é equivalente ao comportamento stock.

Essas diferenças não alteram o módulo atual porque o Makefile exclui
`change_tp_state.c` e liga o assembly exact. O harness host também mascara a
segunda diferença: define `__break` como registro de evento e espera o
`mutex_unlock` após a entrada inválida. Assim, o PASS do harness comprova a
vista de teste, não o comportamento não-retornável do objeto stock.

Não se deve simplesmente trocar `__break` por um `panic` ou adicionar o reset
da completion no objeto exact sem uma decisão separada: isso mudaria a
equivalência offline. A correção da vista C deve ser feita com layout
explícito, teste host que modele os dois contratos e uma nova rodada de
assembly/KCFI/Joern/Docker.

## Gates offline e cobertura

A atestação `next797_change_tp_state_exact_v1` registra paridade AArch64,
KCFI `0xf4d9b23e`, build canônico Docker e harness ASan/UBSan em dois ciclos.
O harness cobre cinco transições, offsets de fila, lock/unlock e entrada
inválida, mas não pode simular a não-retorno real sem um processo separado;
também não verifica a limpeza de `gesture_complete` no caminho
`doze -> off`.

Hardware, scheduler real de workqueues, firmware, Android input subsystem e
rollback no NX809J não foram executados.

## Decisão e pendências

Decisão: **o objeto exact permanece sem divergência AArch64 comprovada, mas a
vista C e o harness não são equivalentes ao stock em dois caminhos**. Nenhuma
alteração de produção, status ou mapa foi feita.

Pendências:

1. corrigir a representação C de `gesture_complete` em offset `0x80`;
2. separar o contrato host de breakpoint do contrato stock não-retornável;
3. adicionar caso específico `doze -> off` que valide a completion zerada;
4. obter revisão independente da ordem lock -> estado -> queue -> unlock e
   do ciclo de vida dos works;
5. executar validação Android/NX809J com rollback controlado.

`PROMOTED_OFFLINE_EXACT` continua significando apenas equivalência
estática/offline do objeto, não autorização de uso em hardware.
