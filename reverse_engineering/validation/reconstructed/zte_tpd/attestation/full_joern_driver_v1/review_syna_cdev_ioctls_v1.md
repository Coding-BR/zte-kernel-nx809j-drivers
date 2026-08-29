# Revisão inicial — `syna_cdev_ioctls`

Estado: `INITIAL_REVIEW_OPEN` — não é aprovação de segurança nem revisão independente.

## Escopo e material auditado

O alvo é a função stock `001150ec`, com corpo de 8584 bytes, microtarefa
`190_syna_cdev_ioctls`. O C reconstruído não é o objeto final: o `Makefile`
exclui `syna_cdev_ioctls.c` e inclui `syna_cdev_ioctls_exact.S`. A análise de
usercopy e lifetime do C é, portanto, uma verificação de contrato; a
equivalência do módulo final é verificada pelo objeto AArch64 exact.

| Item | SHA-256 |
|---|---|
| C reconstruído | `5e0d09a4ae2cdd432c1789fb423b5414d1e6af1c683ca4b27c97d72ff41ed57a` |
| Assembly exact | `1b5bfa64bc1b1cda3e118f755cc8ef0c3f58f780fe45be8d4854e524de9b2368` |
| Decompilação Ghidra | `73f05587c429142b81fb485efa5fd90071c9e9debfd2e294109b0864b99a1414` |
| P-Code Ghidra | `9c60c3c2aac12e0a3db2d7f8b4419bb356f0ba62595648d51aa7af53dbf97095` |
| Joern full-driver | `7a06c9c47f575222d8479975f6630e4847ae7832c2183556ca092af87765cd56` |
| Joern da atestação exact | `03faf7ad93e2d3d69aaa7134a9877e16af839c4f50e78c273de2706b49ab7add` |

## Achados Joern e normalização

O relatório full-driver contém 37 registros para esta função:

- 20 de sincronização, equivalentes a 10 chamadas reais; cada chamada de
  mutex aparece nas formas com cast e sem cast.
- 17 de lifetime, equivalentes a 13 operações reais: quatro chamadas `kfree`
  são duplicadas pelo cast e nove operações `devm_k*` aparecem uma vez.
- Não há prova automática de bug nesses registros. Em particular, o modelo
  não resolve sozinho a associação entre um `kfree` e o nó removido da lista,
  o contexto retornado por `syna_request_managed_device()` ou o caminho que
  deve liberar cada mutex.

A atestação Joern específica da função passou em modo estrito, com uma função
solicitada, sem `review_findings` próprios. Isso não invalida os achados do
full-driver: eles continuam sendo a lista de revisão consolidada e devem ser
tratados junto com o relatório específico e com o Ghidra.

## Cruzamento C/Ghidra/P-Code

As duas representações têm a mesma contagem para a superfície relevante:

| Operação | C | Ghidra | Observação |
|---|---:|---:|---|
| `__arch_copy_{to,from}_user` | 14 | 14 | máscaras de ponteiro, limites e retorno preservados |
| `mutex_lock`/`mutex_unlock` | 10 | 10 | locks globais e alias de unlock preservados |
| `kfree`/`devm_k*` | 13 | 13 | remoção de frames e buffers temporários |
| `_mutex_init` | 1 | 1 | mutex local do envio de mensagem |
| chamadas `syna_cdev_ioctl_*` | 60 tokens | 60 tokens | mesmas rotas e labels observáveis |

As rotas identificadas no switch incluem legacy, raw read/write, get frame,
send message, queued types, check/clear frame, application info, hardware
reset, set config e get config params. Os caminhos de usercopy preservam a
limpeza de bytes não copiados e os retornos negativos observados no stock.
Não foi encontrado, neste cruzamento, acréscimo ou remoção estática de uma
operação de fronteira userspace.

## Ponto de maior risco: lock compartilhado

O lock externo `qword_316A0` tem par direto na rota legacy. O lock de frame
`qword_316D0` tem duas aquisições e duas liberações: uma aparece diretamente
como `mutex_unlock(&qword_316D0)` e a outra converge pelo alias `v113`/label
comum. O mesmo padrão aparece nos dois arquivos e precisa ser verificado por
CFG path-sensitive.

O lock de buffer `qword_31668` é compartilhado por send message, set config e
get config params. O C contém três aquisições e duas chamadas textuais com
nome `qword_31668`, sendo uma delas `mutex_unlock(v113)`; o Ghidra mostra o
mesmo alias (`puVar20`). Isso é evidência de preservação do stock, não prova
de balanceamento em todas as combinações. A revisão independente deve provar
que `v113`/`puVar20` sempre aponta para o mesmo mutex após cada aquisição e
que as rotas de erro não saltam o cleanup.

## Usercopy e lifetime

As cópias usam as mesmas validações de faixa, máscara de ponteiro, tamanhos
fixos de 4/5/16/20 bytes e tratamento de retorno não-zero no C e no
decompilado. Ainda não há teste de compatibilidade com um userspace real para
ponteiros inválidos, cópia parcial, overflow de tamanho ou concorrência entre
ioctls.

As operações de lifetime seguem os padrões do stock: `kfree` de payload e nó
após remoção da lista, `devm_kfree` antes de realocação e `devm_kmalloc` após
obter o managed device. Falta injeção de falha para demonstrar ausência de
vazamento, double-free e uso após liberação em cada rota.

## Gates já passados

A atestação `next726_syna_cdev_ioctls_exact_v4` registra 8584/8584 bytes,
2146/2146 instruções, relocations normalizadas coincidentes e KCFI
`0x2af6cdbb` coincidente. A repetição consolidada mais recente executou as
14 rotas em duas repetições Docker; todas passaram e cada binário foi
reproduzido identicamente entre os ciclos. O relatório é
`syna_cdev_ioctls_host_current_v5.json` (SHA-256
`441bde9b313e0aea09ea043b9cbb18e359ca8414553695da6bb66f2b23d1f6ca`).

Esses gates validam equivalência offline e oráculos de rota, não integração
ABI completa, temporização de kernel, firmware ou execução no NX809J.

## Decisão e pendências

Decisão desta revisão: **não há divergência estática nova comprovada**, mas os
37 registros do full-driver permanecem `OPEN`. Não houve alteração no C, no
assembly, no status da microtarefa ou no mapa.

Para fechar este grupo ainda são necessários:

1. revisão independente do CFG de cleanup, especialmente `qword_31668`,
   `qword_316D0` e aliases de unlock;
2. testes de usercopy parcial/inválida, tamanhos de fronteira e falhas de
   todas as alocações;
3. teste controlado das rotas com userspace Android real e do hardware;
4. registro separado da decisão do revisor independente.

Até esses gates, `PROMOTED_OFFLINE_EXACT` significa somente equivalência
estática/offline do objeto e não autorização de uso em hardware.
