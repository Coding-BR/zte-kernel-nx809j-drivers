# Revisão inicial — `syna_tcm_v1_detect`

Estado: `INITIAL_REVIEW_OPEN` — não é aprovação de segurança nem revisão independente.

## Escopo e evidência

O alvo é a função stock `0011e914`, com corpo de 1236 bytes, microtarefa
`255_syna_tcm_v1_detect`. O C é a vista legível de revisão; o módulo final usa
`syna_tcm_v1_detect_exact.S`.

| Item | SHA-256 |
|---|---|
| C reconstruído | `53872b742272195026cc19fee6436e9341d6660b8968ed216b09825b410b6157` |
| Assembly exact | `eea4811bdfc120f6575eea475d35e4da2a448e5f6d2acecf6ee7d2647613bd82` |
| Decompilação Ghidra | `9b98129a81eab20994678a26ddd0c426f168f7c8c746ae4d1a96677952276c9f` |
| P-Code Ghidra | `0582a3f90d56a513922249994f5e55072ee0ff59da9f4abea25d0a2a2419cf85` |
| Joern full-driver | `7a06c9c47f575222d8479975f6630e4847ae7832c2183556ca092af87765cd56` |
| Joern da atestação | `511c8f1d7217cee41a8887bf2d4c166eed7f3fdbea11f962ee5b9cb70656e24d` |

## Normalização dos achados

O full-driver registra 18 itens: 16 de sincronização e dois de lifetime. Os
16 registros são oito chamadas reais duplicadas pelo cast: aquisição do lock
externo `+840`, aquisição do buffer `+592` e seis liberações distribuídas nos
caminhos de sucesso, erro de leitura, erro de alocação e erro de parsing. Os
dois itens de lifetime são a liberação do buffer anterior e a alocação de 54
bytes.

## Cruzamento com Ghidra/P-Code

O C e o Ghidra preservam:

1. retorno antecipado para handle nulo;
2. fast path quando o segundo argumento tem o bit 0, registrando os cinco
   callbacks em `a1 + 912/+920/+928/+936/+944`, equivalentes a
   `param_1 + 0x390/+0x398/+0x3a0/+0x3a8/+0x3b0`;
3. lock order `+840` e depois `+592`, seguido de leitura de 54 bytes;
4. liberação dos locks antes das chamadas de escrita/parsing subsequentes;
5. `syna_tcm_buf_lock`/`unlock` em torno da extração de CRC e de
   `syna_tcm_v1_parse_idinfo`;
6. chamada de `syna_tcm_v1_write_message` com comprimento 2 ou 4 conforme o
   modo, e chamada de `syna_tcm_v1_check_max_rw_size`;
7. publicação dos callbacks somente após os gates de leitura, parsing e
   tamanho passarem.

Não foi observada divergência estática nova de lock, offsets, callbacks,
alocação ou códigos de erro.

## Riscos de ciclo de vida e callback

O fast path grava ponteiros de função sem executar a leitura inicial. Isso é
comportamento stock confirmado pelo Ghidra, mas pressupõe que `a1` seja um
contexto válido e que os consumidores não chamem os callbacks antes da
inicialização correspondente. A função também pressupõe que `a1 + 72` e os
mutexes/buffers associados tenham sido inicializados nos caminhos normais.

Quando a capacidade é menor que 54, o stock libera o buffer antigo antes de
obter e alocar o novo. Se a alocação falhar, os contadores são zerados e ambos
os locks são liberados; não há divergência entre C e Ghidra. A revisão não
prova, porém, que nenhum chamador concorrente observa o ponteiro intermediário
ou que o device retornado para `devm_kfree` corresponde ao mesmo owner.

## Gates offline

A atestação `next541_syna_tcm_v1_detect_exact_v1` registra 1236/1236 bytes,
equivalência AArch64 estrita, KCFI `0x24cba334`, build Docker em dois ciclos e
harness ASan/UBSan em dois ciclos com nove casos: handle nulo, fast path,
falha de alocação, startup bem-sucedido, callback de leitura ausente, leitura
negativa, escrita negativa, parsing negativo e falha de
`check_max_rw_size`. O relatório é `host_harness_report_v2.json` (SHA-256
`c6fc05fd961e992debe6fdf0e382db355b4dcbbcdd22eee5effd83d68914a9dc`), com o
mesmo binário (`1509ca3b8d00679d19eca7fb176c461afee4a4d71ac835d4f4f2488437b0a8b4`)
nos dois ciclos.

O harness não executa firmware, transporte físico, concorrência de callback ou
hardware NX809J.

## Decisão e pendências

Decisão: **não há divergência estática nova comprovada**; os 18 registros do
full-driver permanecem `OPEN`. Não houve alteração no C, no assembly, no
status da microtarefa ou no mapa.

Pendências:

1. revisão independente da pré-condição do fast path e da publicação dos
   callbacks;
2. teste de corrida entre detect, read/write e teardown;
3. injeção adicional de falha no managed device e alocação durante o detect;
4. validação Android/NX809J e registro do revisor independente.

`PROMOTED_OFFLINE_EXACT` continua significando apenas equivalência
estática/offline do objeto, não autorização de uso em hardware.
