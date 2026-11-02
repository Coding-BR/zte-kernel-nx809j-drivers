# Revisão semântica do zte_tpd — rodada 7

## Resultado

Os 4 alertas Joern de `syna_tcm_read_cs_data` são dois `mutex_init` e dois `devm_kfree`. Os mutexes locais são inicializados após a validação dos argumentos e antes de os contextos serem entregues aos helpers de flash. Os dois buffers gerenciados são liberados no cleanup comum, alcançado depois de falha no setup, erro no arredondamento, erro de leitura, tamanho insuficiente ou sucesso. Não encontrei caminho local com double free ou alocação sem liberação.

O código copia para `data` somente depois de validar que o buffer de configuração existe e contém pelo menos `length` bytes. O Ghidra stock mostra a mesma ordem de inicialização, leitura e limpeza.

## Evidência e validação

A fonte e a montagem coincidem com o snapshot curado Docker e com o manifesto atual de 848 entradas. Reutilizei o build canônico já aprovado porque este lote não alterou insumos Kbuild. O harness ASan/UBSan existente cobre 10 casos para o hash atual da fonte; ele não foi executado novamente nesta rodada.

O mapa de reconstrução segue `PROMOTED_OFFLINE_EXACT` para esta função. Runtime Android e hardware NX809J continuam pendentes.

## Próximo lote

Continuar por `syna_tcm_read_mtp_data`, que também concentra alertas de alocação e usa os mesmos helpers de buffer gerenciado.
