# Revisão inicial — `syna_tcm_v1_write_message`

Estado: `INITIAL_REVIEW_OPEN` — não é aprovação de segurança nem revisão independente.

## Escopo e evidência

O alvo é a função stock `0011eeac`, com corpo de 2084 bytes, microtarefa
`258_syna_tcm_v1_write_message`. O `Makefile` exclui o C reconstruído e inclui
`syna_tcm_v1_write_message_exact.S`; os achados Joern do C são usados como
checagem de contrato, enquanto a equivalência do objeto final vem do gate
AArch64 exact.

| Item | SHA-256 |
|---|---|
| C reconstruído | `822d37d7e9efc7ed3a8399bce6f76610f642f34b634617c096e237ac0fe01dbe` |
| Assembly exact | `cd39202d8b3e15a3e26c585e298465db79623e4b3124270652c034329899fad5` |
| Decompilação Ghidra | `6417e468db0a71499db06dccfe0a2b2ea5e0e1503f1c9c6ba40bf89bbd5d84f8` |
| P-Code Ghidra | `436c43005f7e22cfc5098de3c3a5632415d28cbacd4de51609e4c6b857378be2` |
| Joern full-driver | `7a06c9c47f575222d8479975f6630e4847ae7832c2183556ca092af87765cd56` |
| Joern da atestação exact | `c202ad22f3d41a6043381a405f291b44952b2ae55e9672dcccfe1463102ff0e0` |

## Achados e cruzamento

O full-driver registra 22 itens para esta função: 20 de sincronização, que
representam 10 chamadas reais duplicadas pelo cast, e duas operações de
lifetime (`devm_kfree`/`devm_kmalloc`). O relatório específico da atestação
passou em modo estrito.

O C e o Ghidra preservam a mesma sequência de 10 mutexes:

- lock externo: `a1 + 792` = Ghidra `param_1 + 0x318`;
- lock de transporte: `a1 + 840` = `param_1 + 0x348`;
- lock de IRQ: `a1 + 80` = `param_1 + 0x50`, adquirido/liberado duas vezes;
- lock de buffer de escrita: `a1 + 664` = `param_1 + 0x298`;
- liberações em ordem compatível: `+664`, `+840`, `+792`, com `+80` em
  torno dos callbacks de IRQ.

O caminho de escrita mantém o CRC16, a fragmentação, os marcadores de
continuação e a chamada indireta de transporte. A alocação temporária ocorre
sob o lock de buffer, libera o buffer anterior antes de realocar e zera o
estado de tamanho no erro, como no decompilado. Não foi observada divergência
estática nova de lock, alocação ou chamada de transporte.

## Gates offline

A atestação `next542_syna_tcm_v1_write_message_exact_v1` registra 521/521
instruções, 2084/2084 bytes, relocations e KCFI `0x24203a8e` coincidentes. O
build Docker passou em dois ciclos e o harness ASan/UBSan host passou em dois
ciclos. Hardware, firmware, transporte físico e concorrência real permanecem
sem execução.

## Decisão e pendências

Decisão: **não há divergência estática nova comprovada**, mas os achados
permanecem `OPEN`. Não houve alteração no C, no assembly, no status da
microtarefa ou no mapa.

Ainda são necessários:

1. revisão independente do lock order durante callback de IRQ e da reentrada
   por `syna_tcm_v1_read_message`;
2. injeção de falha em `devm_kmalloc`, transporte negativo, buffer nulo e
   fragmentação/limites CRC;
3. teste Android/NX809J com firmware e concorrência real;
4. registro da decisão do revisor independente.

`PROMOTED_OFFLINE_EXACT` continua significando apenas equivalência
estática/offline do objeto, não autorização de uso em hardware.
