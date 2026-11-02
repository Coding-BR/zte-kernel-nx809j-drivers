# Revisão semântica do zte_tpd — rodada 8

## Resultado

Foram classificados os 6 alertas Joern em `syna_tcm_read_mtp_data` e `syna_tcm_read_flash_mtp_config`: duas inicializações de mutex, dois `devm_kfree`, um `devm_kfree` de buffer antigo e um `devm_kmalloc`. Os mutexes locais são inicializados após validar os argumentos, e os caminhos posteriores convergem para a limpeza comum. Não foi confirmado double free.

Há dois riscos condicionais de liberação imediata quando `syna_request_managed_device()` retorna `NULL`. No chamador MTP, os ponteiros são zerados após a tentativa de free; no helper de configuração, um buffer antigo pode ser abandonado durante resize. Essas formas de controle também aparecem no Ghidra stock e na montagem stock. A ocorrência durante detach não foi demonstrada dinamicamente. O buffer passado pelo chamador MTP é novo e zerado, então o risco de abandono durante resize diz respeito ao uso com um buffer já preenchido, como o caminho de `syna_tcm_read_flash_area`.

O Makefile exclui os dois C mirrors e seleciona os objetos `.S` exatos. Portanto, os riscos descritos são comportamento herdado da baseline stock. Mantive a baseline sem alterações; uma correção exigiria uma variante de hardening separada com revisão de ciclo de vida do device.

## Evidência e validação

As fontes e montagens dos dois alvos coincidem byte a byte com o snapshot curado Docker e com as entradas correspondentes do manifesto canônico de 848 arquivos. O relatório Docker reaproveitado passou dois ciclos independentes. Como nenhum insumo Kbuild mudou, não foi necessário sincronizar nem executar outro build. O harness ASan/UBSan existente para `syna_tcm_read_mtp_data` passou 5 casos em dois ciclos para o hash atual; ele não foi executado novamente nesta rodada.

O mapa mantém ambos os alvos em `PROMOTED_OFFLINE_EXACT`. Runtime Android e hardware NX809J continuam sem validação. A revisão eleva o acumulado para 66 de 128 alertas Joern; restam 62.

## Próximo lote

Continuar pela próxima função com alertas de lifetime/sincronização no inventário residual, preservando a comparação entre source, Ghidra, montagem stock e o snapshot Docker.
