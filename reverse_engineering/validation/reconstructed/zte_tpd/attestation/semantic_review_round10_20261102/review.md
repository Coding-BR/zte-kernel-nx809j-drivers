# Revisão semântica do zte_tpd — rodada 10

## Resultado

Os quatro alertas Joern em `syna_tcm_update_cs_config` são duas inicializações de mutex e duas liberações `devm_kfree`. A validação de argumentos acontece antes da inicialização. Todos os caminhos seguintes, inclusive erros de setup/leitura, validações de geometria, varredura de dados e escrita, chegam à limpeza comum.

O buffer de boot é liberado se tiver sido alocado, inclusive quando a leitura falha depois da alocação. A alocação do contexto flash também chega ao mesmo cleanup. Os frees dependem de `syna_request_managed_device()` retornar um device; sem ele, o devres permanece até o detach. O Ghidra stock mostra as mesmas condições e não foi comprovado que o provider fique indisponível durante uma chamada ativa.

O aviso para `access.release_required` não aponta um unlock ausente: `syna_tcm_write_flash` balanceia o contador e chama `mutex_unlock` no sucesso e nos erros após adquirir o lock. O helper de leitura não altera `boot_config.lock_depth`.

O Makefile seleciona a montagem `.S` exata. Mantive a baseline stock sem alterações.

## Evidência e validação

A fonte, a montagem do alvo e a montagem do helper de escrita coincidem com o snapshot curado Docker e o manifesto canônico de 848 arquivos. O build Docker já registrado passou dois ciclos independentes. O harness ASan/UBSan existente corresponde ao hash atual e passou 11 casos em dois ciclos; não foi executado novamente. Nenhum insumo Kbuild mudou, então não foi necessário novo build.

O mapa mantém a função em `PROMOTED_OFFLINE_EXACT`. Runtime Android e hardware NX809J continuam sem validação.

## Próximo lote

Continuar pelo próximo grupo residual de lifetime/sincronização, priorizando funções com mais alertas e comparando cada fluxo com Ghidra e montagem stock.
