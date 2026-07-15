# Status de Reconstrucao do `zte_led`

Data da ultima auditoria estatica: 2026-07-15

## Veredito

`zte_led` esta **STATIC_VERIFIED**, mas ainda nao esta autorizado a ser chamado de
"100% reconstruido". Os gates 0 a 7 passaram. Revisao independente, teste
supervisionado no NX809J e promocao final continuam incompletos.

Nenhum `insmod`, `rmmod`, unbind, flash ou escrita de particao foi executado nesta
etapa.

## Artefato atual

- Arquivo: `zte_led.ko`
- SHA-256: `6876f2a40835018d0859531adbf988a09b8eb8beccad48fe766360fac7cf61e1`
- Tamanho: 399392 bytes
- Kernel alvo: `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`
- Stock analisado: SHA-256 `2aefcaaaae64006ddfcb21205ce2d0ffb55349c9506d06ed29d346c3f567c668`

## Evidencias concluidas

- Ghidra: inventario 58/58 e multiplicidade de chamadas 58/58.
- KCFI: 41/41 callbacks e pontos de entrada com type ID e secao compativeis.
- Funcoes diretas: 17 registradas como KCFI N/A, sem fronteira indireta.
- Layout AArch64: `struct aw22xxx` com tamanho `0x358` e offsets criticos
  protegidos por `static_assert`.
- KMI: imports indefinidos, alias I2C, namespaces, licenca e dependencia
  `zlog_common` iguais ao stock.
- Build: duas compilacoes Docker limpas produziram SHA-256 identico.
- Harness: 58/58 funcoes exercitadas; duas compilacoes e duas execucoes PASS.
- Microtarefas: 58/58 com atestacao baseada em hashes.

## Gates obrigatorios

| Gate | Estado |
|---|---|
| 0 - Seguranca | PASS |
| 1 - Stock | PASS |
| 2 - Ghidra | PASS |
| 3 - Mapa | PASS |
| 4 - ABI | PASS |
| 5 - Microtarefas | PASS |
| 6 - Build/KMI | PASS |
| 7 - Paridade | PASS |
| 8 - Revisao independente | INCOMPLETO |
| 9 - Hardware supervisionado | INCOMPLETO |
| 10 - Promocao final | INCOMPLETO |

## Regra para hardware

O driver stock controla GPIO de reset, IRQ e atualizacao de firmware do AW22XXX.
O candidato nao deve ser carregado automaticamente enquanto o stock estiver ligado
ao dispositivo I2C. O teste exige plano explicito de unbind/unload, captura continua
de `dmesg`, confirmacao do operador e rollback por reboot.

Consulte `engenharia/validation/zte_led/CYCLE_VALIDATION.md` e
`engenharia/validation/zte_led/validation_plan.json` antes de qualquer teste fisico.
