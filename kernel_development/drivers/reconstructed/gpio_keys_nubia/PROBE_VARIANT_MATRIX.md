# Matriz de variantes do `gpio_keys_probe`

Data do ciclo: 2026-07-15 (America/Sao_Paulo).

## Escopo

Este ciclo avaliou formas C semanticamente equivalentes para os trechos inlined
de `gpio_keys_setup_key` e `gpio_keys_get_devtree_pdata`. Cada variante foi
compilada duas vezes em workspace Docker isolado com GKI 6.12.23 e
`clang-r536225`, seguida de extracao AArch64 e comparacao contra o `.ko` stock.

Referencia stock:

- tamanho de `gpio_keys_probe`: 3600 bytes;
- instrucoes: 900;
- relocacoes: 164;
- SHA-256 do modulo: `8cb89f5068195396a5db5fba1c51f2cf6056884dbb00f7ee8af5041ccd6f32b3`.

## Resultados

| Variante | Bytes | Instrucoes | Relocacoes | Ordem exata | Multiconjunto exato | Similaridade de mnemonicos | Decisao |
|---|---:|---:|---:|---|---|---:|---|
| Stage 3 publicado | 3608 | 902 | 164 | nao | nao | 94,8946% | mantido como baseline parcial |
| Um unico log antes de `fwnode_handle_put` | 3588 | 897 | 159 | nao | nao | 95,2699% | rejeitado: perdeu cinco relocacoes stock |
| Ramo `!child` invertido | 3608 | 902 | 164 | nao | nao | 94,8946% | rejeitado: nenhum ganho |
| Ramos explicitos para trigger | 3616 | 904 | 164 | nao | nao | 95,0111% | rejeitado: quatro instrucoes adicionais |
| Trigger por expressao aritmetica | 3596 | 899 | 164 | nao | nao | 94,6081% | rejeitado: fluxo local diferente |
| `label` e `active_low` em escopo interno | 3564 | 891 | 164 | nao | nao | 94,6957% | rejeitado: vida de variavel incompativel |
| Atribuicao pontual de `label = NULL` | 3612 | 903 | 164 | nao | nao | 94,9529% | rejeitado: tres instrucoes adicionais |
| `label` pontual mais trigger aritmetico | 3600 | 900 | 164 | nao | sim | 94,6667% | rejeitado: igualdade agregada sem paridade de fluxo |
| Variante anterior mais parser `if/else` | 3600 | 900 | 164 | nao | sim | 94,4444% | rejeitado: similaridade menor |

## Interpretacao

Igualar apenas tamanho, numero de instrucoes ou quantidade de relocacoes nao e
atestacao. As duas variantes `3600/900/164` alteraram o bloco de
`wakeup_trigger_type`: o stock usa `cmp`, `mov` e `cinc`, enquanto o candidato
usou `add` ou carga de pilha. Elas tambem mantiveram 21 posicoes de relocacao em
ordem diferente. Promove-las seria ajustar o resultado numerico sem reconstruir
o grafo real.

O baseline Stage 3 continua sendo o fonte canonico porque preserva a expressao
C semanticamente sustentada pelo pseudocodigo, os 63 imports stock e as 23
funcoes ja exatas. Nenhuma variante deste ciclo autoriza `insmod`, substituicao
OEM ou declaracao de 100%.

## Regras para o proximo ciclo

1. Segmentar o `probe` pelos limites de chamadas e comparar os blocos basicos
   inlined do parser DT, configuracao GPIO e saidas de erro separadamente.
2. Usar Assembly, P-Code e pseudocodigo locais como fontes primarias; nao
   introduzir `volatile`, barreiras do otimizador, padding ou Assembly manual
   apenas para aproximar contagens.
3. Promover uma variante somente quando secao, tamanho, opcodes e relocacoes
   ordenadas forem exatos e todos os demais gates permanecerem verdes.
4. Manter teste de hardware separado e controlado; paridade estatica nao prova
   comportamento eletrico de GPIO/IRQ.

Dados estruturados: `reverse_engineering/validation/reconstructed/gpio_keys_nubia/probe_variant_matrix.json`.
