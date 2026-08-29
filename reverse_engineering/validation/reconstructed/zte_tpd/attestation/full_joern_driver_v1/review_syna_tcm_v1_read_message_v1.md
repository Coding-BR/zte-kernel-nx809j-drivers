# Revisão inicial — `syna_tcm_v1_read_message`

Estado: `INITIAL_REVIEW_OPEN` — não é aprovação de segurança nem revisão independente.

## Escopo e evidência fixada

Esta revisão cobre a função stock `0011f838`, com 5484 bytes, e o alvo
`261_syna_tcm_v1_read_message`. O módulo final não compila o C reconstruído
desta função: o `Makefile` o exclui de `src-files` e inclui
`syna_tcm_v1_read_message_exact.S`. Portanto, a análise Joern do C é uma
verificação de modelo/contrato; a equivalência do objeto final é sustentada
separadamente pela comparação AArch64.

Hashes da base analisada:

| Item | SHA-256 |
|---|---|
| C reconstruído | `63877f2424610e07d6e2a10505a0a747569dd7d93a43003965ea5360a068e401` |
| Assembly exact | `1bdcf67fe09bea2d821d78aaebc518144e4e86f19092cb20c2db69ab8f2b847a` |
| Decompilação Ghidra | `73b56aa6346d2cc7a503d1cb9d793b01322364f2eaf63e61c183924b846e1ba4` |
| P-Code Ghidra | `468421e6c09c5325ceddec136878d8d956e0c0080e94c2b80a2e423bcbafa197` |
| Joern full-driver | `7a06c9c47f575222d8479975f6630e4847ae7832c2183556ca092af87765cd56` |
| Joern da atestação da função | `4dda40a3d2600b6c2a1144aadef2179d4d142a750f7b6dd26af613e7f1694634` |

## Resultado Joern

O relatório full-driver contém 71 registros para esta função:

- 58 de sincronização, correspondendo a 29 chamadas reais; cada chamada é
  registrada duas vezes pela representação com cast e sem cast do ponteiro de
  `mutex`.
- 13 de lifetime, correspondendo às 13 chamadas reais de `devm_kmalloc` ou
  `devm_kfree`.
- Nenhum desses registros, isoladamente, prova bug, use-after-free ou
  deadlock; Joern não conhece sozinho ownership do device, domínio de
  firmware, validade dos offsets nem a correlação de caminhos entre labels.

## Cruzamento com Ghidra/P-Code

O C e a decompilação preservam a mesma sequência estrutural de chamadas
observáveis: 29 chamadas de `mutex_lock`/`mutex_unlock`, 13 operações de
memória gerenciada, quatro chamadas a `syna_tcm_v1_read`/`parse_idinfo` e
quatro chamadas explícitas a `syna_tcm_buf_unlock` no C reconstruído. Os
offsets do C correspondem aos offsets Ghidra:

| C reconstruído | Ghidra | Papel observado |
|---:|---:|---|
| `a1 + 840` | `param_1 + 0x348` | lock externo da função |
| `a1 + 592` | `param_1 + 0x250` | buffer principal |
| `a1 + 272` | `param_1 + 0x110` | buffer de report |
| `a1 + 344` | `param_1 + 0x158` | buffer de response |
| `a1 + 736` | `param_1 + 0x2e0` | leitura continuada |

O caminho inicial adquire `+840` e depois `+592`. Os caminhos de erro
liberam o lock de buffer antes de convergir para o cleanup final de `+840`.
Os caminhos de report/response usam os locks aninhados observados no stock e
chamam `syna_tcm_buf_unlock` nos ramos de falha correspondentes. Isso é
consistente com o decompilado, mas a contagem textual não substitui uma prova
path-sensitive de lock balance.

As 13 operações de lifetime também aparecem nas mesmas regiões do
decompilado: liberação antes de realocação, alocação condicionada à obtenção
do managed device e liberação do temporário nos caminhos de erro. Ainda falta
provar, por injeção de falha, que cada ponteiro e cada contexto de device têm
ownership válido em todas as combinações.

## Equivalência do objeto final

A atestação `next544_syna_tcm_v1_read_message_exact_v1` registra:

- 1371/1371 instruções stock/candidato;
- 5484/5484 bytes de corpo;
- relocations e seção coincidentes;
- KCFI `0xe10dda21` coincidente;
- build Docker em dois ciclos e harness ASan/UBSan host em dois ciclos.

Isso sustenta equivalência offline do objeto exact, não comportamento em
hardware. O harness direto agora cobre quatro casos determinísticos: os dois
retornos iniciais, um erro de leitura de transporte com unwind dos locks e o
caminho de sucesso com mensagem vazia e reset do buffer. Ainda não cobre
falhas de alocação, mensagens continuadas, dispatch de report/response ou
teardown concorrente.

## Decisão e pendências

Decisão desta revisão: **não há divergência estática nova comprovada**, mas os
achados permanecem `OPEN`. Não houve alteração no C de produção, no assembly,
no status da microtarefa ou no mapa de reconstrução.

Para fechar este grupo ainda são necessários:

1. revisão independente dos caminhos de lock/unlock e ownership;
2. harness direto com injeção de falha para cada alocação/leitura e limites de
   tamanho;
3. validação controlada no NX809J, incluindo transporte SPI, firmware e
   concorrência de reports;
4. registro separado da decisão do revisor independente.

Até esses gates, `PROMOTED_OFFLINE_EXACT` significa somente equivalência
estática/offline do objeto e não autorização de uso em hardware.
