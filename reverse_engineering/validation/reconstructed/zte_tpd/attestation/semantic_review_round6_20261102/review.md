# Revisão semântica do zte_tpd — rodada 6

## Alertas de alocação

Foram analisados os 7 alertas Joern em `string_change`; são 5 call sites, pois cada `kfree` aparece duplicado no grafo com uma variante de cast. Nos caminhos normais e de falha de alocação, não há double free: falha ao alocar `s_copy` retorna sem recurso; falha ao alocar `out_buf` libera `s_copy`; sucesso libera `s_copy` uma vez e devolve `out_buf` ao chamador. A ausência de `kfree(out_buf)` dentro da função é transferência de ownership.

O harness ASan/UBSan existente passou 7 casos em duas repetições para o hash atual da fonte; não o executei novamente nesta rodada.

## Diferença condicional no fallback C

Quatro guardas de limite chamam `__break` e seguem para `LABEL_77`. No espelho C, `defs.h` mapeia `__break` para `pr_warn`, que retorna; se um guarda disparar nesse caminho, `s_copy` não é liberada. O `out_buf` é devolvido com comprimento zero, então sua ownership fica com o chamador.

No stock Ghidra o destino é um `SoftwareBreakpoint` sem retorno, e a montagem exata contém `BRK #1`. O Makefile exclui `string_change.c` e inclui `syna_string_change_exact.S`; portanto, esse fallback C não altera o módulo reconstruído atual. Os guards são defensivos e o fator `3 * strlen` parece folgado para as expansões observadas, mas esta revisão não provou a impossibilidade para toda entrada malformada. Mantive o baseline exato; uma mudança segura do fallback pertence a uma variante explícita de hardening e precisa de cobertura direta.

## Docker e rastreabilidade

A fonte C e a montagem correspondem ao snapshot curado Docker e ao manifesto de 848 entradas do build canônico mais recente. Como nenhum insumo Kbuild mudou, não gerei outro build. A reconstrução permanece offline; runtime e hardware NX809J continuam pendentes.

## Próximo lote

Seguir para os alertas de lifetime nas rotinas de leitura/configuração de flash que ainda não foram revisadas, começando pelo próximo grupo do relatório Joern após excluir os escopos já cobertos.
