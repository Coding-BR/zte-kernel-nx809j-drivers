# Revisão semântica do zte_tpd — rodada 13

## Correção no C reconstruído

O C de `syna_tcm_read_flash_address` zerava `access`, executava `syna_tcm_set_up_flash_access` e seguia sem inicializar `access.mutex`. O helper de setup não inicializa esse campo. Ghidra e a montagem stock mostram `__mutex_init` depois do setup bem-sucedido — ou depois do caminho que já começa no bootloader — e antes de tratar o comprimento. Acrescentei `mutex_init(access.mutex);` na linha 48, nessa posição.

A montagem `.S` do módulo já continha essa chamada e continua inalterada. Portanto, a falha era uma divergência do mirror C; não foi uma falha comprovada do módulo stock em runtime. Também não provei que um caminho ativo desta rotina use esse mutex. A correção restaura a paridade do source legível, sem alterar o binário selecionado.

## Alertas de lifetime

O gate estrito Joern passou para a fonte corrigida e reportou quatro callsites: o `mutex_init`, o `devm_kfree` do buffer anterior, o `devm_kmalloc` do buffer de saída e o `devm_kfree` do contexto de flash. O buffer de saída é guardado em `buffer->data` e devolvido ao chamador; não é um temporário local. Na troca de tamanho, existe uma retenção condicional herdada do stock: se a primeira consulta do device falha e uma repetição encontra o device, a alocação antiga pode ser sobrescrita sem `devm_kfree`, ficando sob devres até o teardown. O mesmo padrão condicional existe na limpeza do buffer temporário do contexto. Não reproduzi essas interleavings.

## Docker e evidências

A sincronização para o snapshot curado copiou só `syna_tcm_read_flash_address.c`, sem remoções, e terminou sem divergências. O build canônico executou dois ciclos independentes com 848 insumos, passou e reproduziu `zte_tpd.ko` com SHA `5c464fbd0b21907b80b1941f183f32b406ad080bc4ce9d58a6482e987c18b4eb`, igual ao build da rodada 11. O Makefile exclui o C mirror e seleciona `syna_tcm_read_flash_address_exact.o`, então esse build verifica o snapshot e preserva o binário stock; ele não compila o C mirror.

A comparação AArch64 e a comparação KCFI existentes para a montagem exata continuam passando e essa `.S` não mudou. O harness ASan/UBSan existente passou em oito casos para o hash C anterior (`eaa178…`); não foi repetido e não é evidência da fonte corrigida. O gate Joern atual passou com a fonte hash `0894d1…`.

O relatório full-surface anterior contava 128 alertas antes desta alteração. A verificação Joern desta rodada foi escopada ao alvo; não afirmo uma nova contagem global.

## Limites

A correção é de paridade do C legível. O módulo stock permanece idêntico; não houve teste de runtime Android ou hardware NX809J. Não houve execução nova do harness nem revisão humana independente.

## Próximo lote

Continuar pelo próximo conjunto de alertas não revisado, mantendo a distinção entre divergência do C mirror e comportamento já presente na montagem stock.
