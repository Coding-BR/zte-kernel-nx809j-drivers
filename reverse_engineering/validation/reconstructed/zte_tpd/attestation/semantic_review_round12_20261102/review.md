# Revisão semântica do zte_tpd — rodada 12

## Resultado

Revisei os três alertas Joern em `syna_tcm_update_mtp_data`: inicialização do mutex, alocação `devm_kmalloc` e liberação `devm_kfree`. O mutex é inicializado antes de a estrutura ser usada; o caminho de escrita trava e destrava o mutex no release comum. A liberação no chamador corresponde a `access.managed_allocation`, o buffer interno de escrita. Ela não libera o `payload` alocado separadamente.

O `payload` é alocado com `devm_kmalloc`, copiado e passado a `syna_tcm_write_flash`. A função retorna sem chamar `devm_kfree(payload)`. Ghidra e a montagem stock confirmam a mesma sequência: alocação em `0x213bc`, passagem do payload em `x3` para `syna_tcm_write_flash` em `0x21408`, e única chamada de `devm_kfree` em `0x21454` usando o ponteiro da alocação de `access`. A rotina de escrita lê/copia o dado recebido e libera apenas seu próprio buffer interno antigo.

Isso confirma retenção de memória herdada do stock: cada chamada que aloca o payload conserva `rounded_length` bytes sob devres até o device ser removido; chamadas repetidas antes da remoção podem acumular memória. A retenção termina no teardown do device, portanto não é permanente. Não alterei a `.S` escolhida pelo Kbuild, pois corrigir esse comportamento mudaria a semântica stock. Uma correção de hardening deve ser tratada como variante separada e validada como desvio intencional.

## Evidência e validação

- C reconstruído, pseudocódigo Ghidra, P-Code e assembly stock foram comparados. O C e a `.S` do alvo têm os hashes registrados em `review.json`; a cópia curada do Docker coincide byte a byte com ambos.
- O C do alvo é excluído pelo Makefile e `syna_tcm_update_mtp_data_exact.o` entra no módulo. O build canônico da rodada 11 cobre os mesmos 848 insumos, passou em dois ciclos e produziu o mesmo SHA do módulo nos dois ciclos. Como esta rodada só registra análise e evidência, não foi necessário repetir o build.
- O harness existente corresponde ao SHA atual do C, passou em 10 casos e foi reproduzível em dois ciclos com ASan/UBSan. O relatório não descreve contabilização de alocações em chamadas repetidas; esse resultado não invalida o achado estático. Nenhum harness foi executado novamente.
- Joern marcou três callsites desta função. A revisão acumulada chega a 80 de 128 alertas, com 48 restantes, seguindo a contagem das rodadas anteriores.

## Limites

A conclusão é estática e sobre o comportamento stock. Não houve teste de pressão de memória em runtime Android nem validação no hardware NX809J. Revisão humana independente não foi realizada. A função continua `PROMOTED_OFFLINE_EXACT`: a revisão confirma uma retenção stock, não uma divergência do código reconstruído.

## Próximo lote

Continuar a revisão semântica do próximo grupo de alertas Joern de lifetime/sincronização, comparando fonte, pseudocódigo e montagem stock; executar o build Docker sempre que um insumo selecionado pelo Kbuild mudar.
