# Revisão semântica do zte_tpd — rodada 11

## Resultado

Os três alertas Joern em `syna_tcm_write_flash` cobrem o `mutex_lock`, o `devm_kfree` do buffer antigo e o `devm_kmalloc` de reposição. Todas as validações anteriores retornam antes do lock; depois dele, erros de chunk, alocação, cópia e comando passam pelo release comum que atualiza `release_required` e executa `mutex_unlock`. Não encontrei lock sem balanceamento.

No resize, a montagem stock tem dois resultados condicionais. Se a primeira consulta do device falha e a repetição retorna um device, o caminho aloca outra área sem liberar a antiga; se ambas falham, o stock zera o ponteiro e o tamanho, deixando a liberação do bloco antigo para o ciclo de vida do devres. Não provei que essa interleaving ocorra durante uma chamada ativa.

Corrigi o C mirror para zerar `managed_allocation` e o tamanho nos dois caminhos de falha por ausência do device, como mostram Ghidra e assembly stock. A `.S` selecionada pelo Kbuild permaneceu intacta; a correção alinha a fonte reconstruída, sem alterar o módulo stock.

## Docker e evidências

A sincronização curada copiou somente `syna_tcm_write_flash.c`. O build canônico compilou os 848 insumos em dois ciclos independentes e passou com o mesmo SHA do módulo anterior (`5c464fbd…`). Isso confirma que o C mirror continua fora da seleção Kbuild e que a `.S` exata manteve o binário.

O relatório Joern e o harness ASan/UBSan existentes foram gerados para o hash anterior do C. Os callsites de lock/alocação/free não mudaram; os arquivos foram registrados como evidência histórica e não como validação do hash novo. O harness não foi executado novamente.

O mapa segue `PROMOTED_OFFLINE_EXACT`. A montagem stock ainda contém o caminho condicional de retenção do buffer; corrigi a fidelidade do mirror C, não introduzi hardening que alterasse o comportamento stock. Runtime Android e hardware NX809J continuam pendentes.

## Próximo lote

Continuar pelo próximo grupo residual de lifetime/sincronização, comparando o source atualizado com Ghidra e montagem stock e validando no Docker qualquer entrada Kbuild alterada.
