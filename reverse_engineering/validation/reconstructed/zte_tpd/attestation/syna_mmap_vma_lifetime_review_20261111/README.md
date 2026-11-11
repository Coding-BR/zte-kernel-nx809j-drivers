# Revisão de lifetime de VMA e poll — 2026-11-11

## Resultado

`STATIC_REVIEW_PASS_FOR_MMAP_AND_POLL_LIFETIME`; o estado geral do driver permanece `PARTIAL_SOURCE_MAP`. Esta revisão cobre o lifetime do buffer passado a `syna_mmap` e a waitqueue usada pela interface `poll`/`epoll`. Não demonstra comportamento em runtime nem no NX809J.

## Identidade e vínculo com o snapshot

- Módulo stock: `reference_modules/stock/zte_tpd.ko`, SHA-256 `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato presente no snapshot curado do Docker: SHA-256 `05169eb97da2317d87b6921c946bd3970d3d111c4ba708a04378668a99d1e251`, 7.276.320 bytes; coincide com `reconstruction_map.json`.
- O Assembly stock de `syna_mmap` (`001147ec`) registra 44 instruções/176 bytes e permanece `PROMOTED_OFFLINE_EXACT`. O Assembly stock de `syna_poll` (`00114510`) também está preservado. O mapa marca `syna_dev_remove` e `syna_cdev_remove` como hardening deliberado.
- As oito fontes examinadas coincidem em conteúdo textual com `engenharia/curated/zte_tpd`. `syna_cdev_create.c` tinha dois finais de linha diferentes; depois de normalizar CRLF/LF, o texto e o SHA-256 coincidem. O hash binário do candidato no Docker foi conferido, mas não houve rebuild nesta revisão.

## Caminho do buffer mapeado

1. `syna_input_agent_open` cria/obtém `syna_input_buffer_owner`, captura o buffer em `tcm + 0x460`, mantém uma referência de dispositivo e acrescenta uma referência para cada arquivo aberto.
2. `syna_input_agent_mmap` entra no gate de operações ativas e chama o corpo stock exato `syna_mmap`. O gate impede que o teardown libere o estado do TCM enquanto a chamada de mmap ainda está executando.
3. No kernel alvo, `mm/mmap.c` atribui `vma->vm_file = get_file(file)` ao VMA. `mm/vma.c:remove_vma` chama `vma_close` e depois `fput(vma->vm_file)`. Portanto, fechar o descritor de usuário não dispara `release` enquanto ainda houver um VMA sustentando o arquivo.
4. `syna_cdev_quiesce` marca o dispositivo offline, acorda os pollers e espera `syna_cdev_active_operations` chegar a zero. `syna_cdev_remove` então chama `syna_input_agent_retire`: remove o owner global, zera o slot `tcm + 0x460` e solta a referência do dispositivo. As referências dos arquivos/VMAs mantêm o buffer original alocado.
5. Depois de `syna_cdev_remove`, `syna_dev_remove` lê o slot zerado e o `kfree` subsequente recebe `NULL`. O `syna_input_agent_release` final solta a última referência do owner e libera o buffer original somente quando o arquivo e seus VMAs não o mantêm mais.

## Caminho de `poll`/`epoll`

- O `zte_fops` atual usa `.owner = THIS_MODULE` e despacha `.poll` para `syna_input_agent_poll`; não despacha para o corpo stock `syna_poll` que espera em uma waitqueue embutida no TCM.
- O wrapper atual registra o poller somente em `syna_input_agent_poll_wait`, uma waitqueue estática do módulo. `syna_dev_process_touch_report_wrapper` acorda essa fila depois de processar cada relatório; `syna_cdev_quiesce` também a acorda durante a remoção.
- Isso evita que uma entrada persistente de `epoll` retenha um ponteiro para `tcm->frame_wait` depois de `syna_tcm_remove_device` liberar o TCM. Após o gate ficar offline, novas operações retornam antes de desreferenciar `ctx->tcm`; o `release` tardio só solta o owner do buffer e o contexto.
- A leitura do kernel confirma que as entradas persistentes de `epoll` são removidas da waitqueue associada quando o item é desregistrado. Como a fila usada pelo wrapper é estática e o arquivo fixa `THIS_MODULE`, essa waitqueue continua viva enquanto a inscrição mantiver o arquivo aberto.

## Limites

- A conclusão é estática e limitada aos caminhos VMA e poll da versão de candidato indicada pelos hashes acima.
- Não houve `mmap`, `epoll`, corrida de remove, carregamento do módulo ou teste no smartphone.
- A janela de callback tardio do `panel_event_notifier.ko` externo continua aberta e não é resolvida por esta revisão.
- Não houve mudança de fonte, mapa, candidato ou snapshot; por isso não foi executado novo build Docker. O estado geral continua incompleto.

Evidência estruturada e hashes: `review.json`.
