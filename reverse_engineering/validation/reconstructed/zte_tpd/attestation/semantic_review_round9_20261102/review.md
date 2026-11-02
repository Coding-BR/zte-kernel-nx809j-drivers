# Revisão semântica do zte_tpd — rodada 9

## Resultado

Os quatro alertas Joern de `syna_tcm_update_lockdown_config` são duas inicializações de mutex e duas liberações `devm_kfree`. As validações retornam antes da inicialização; todos os caminhos posteriores convergem para a limpeza comum. O buffer de boot é liberado inclusive quando a leitura falha depois de alocá-lo, e a alocação do contexto flash também é coberta pela limpeza.

As liberações dependem de `syna_request_managed_device()` retornar um device. Se retornar `NULL`, a liberação imediata não ocorre e o devres permanece até a desmontagem do device. O Ghidra stock mostra a mesma condição; não foi comprovada uma corrida de detach que torne esse caminho alcançável em runtime.

O código também só registra um aviso se `access.release_required` continuar diferente de zero. O helper de escrita incrementa esse estado depois de travar o mutex e passa tanto sucesso quanto erros posteriores pelo cleanup que atualiza o contador e executa `mutex_unlock`. Não encontrei lock sem balanceamento nos caminhos revisados.

O Makefile escolhe a montagem `.S` exata, que coincide com o snapshot Docker. A baseline stock foi preservada.

## Evidência e validação

A fonte, a montagem exata e a montagem do helper de escrita coincidem com o snapshot curado Docker e com as entradas do manifesto canônico de 848 arquivos. O relatório Docker reutilizado passou dois ciclos independentes. O harness ASan/UBSan existente corresponde ao hash atual e passou 23 casos em dois ciclos; não foi executado novamente. Nenhum insumo Kbuild mudou, então não foi necessário novo build.

O mapa mantém a função em `PROMOTED_OFFLINE_EXACT`. Runtime Android e hardware NX809J continuam sem validação.

## Próximo lote

Seguir para `syna_tcm_update_cs_config`, que aparece entre os próximos grupos com alertas de lifetime/sincronização.
