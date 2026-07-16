# Matriz de variantes do `gpio_keys_probe`

Ultima atualizacao: 2026-07-16 (America/Sao_Paulo).

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
| `bool active_low` | 3600 | 900 | 164 | nao | nao | 95,1111% | melhorou o codegen; tipo C original nao provado |
| `bool` + `nb_setup_secondary` | 3600 | 900 | 164 | nao | sim | 95,2222% | recuperou lock class e melhorou CFG; helper de estado ainda global |
| Stage 4: dois helpers inline + `bool` | 3600 | 900 | 164 | nao | sim | 95,2222% | promovido: fonte mais fiel, ainda nao exato |
| Stage 4 com `int active_low` | 3608 | 902 | 164 | nao | sim | 95,0055% | rejeitado: precomputou triggers e alterou vidas de registradores |
| Saida de erro comum do parser | 3580 | 895 | 159 | nao | nao | 96,0446% | rejeitado: removeu cinco chamadas/relocacoes `_printk` |
| Log antes do teste explicito de `child` | 3660 | 915 | 170 | nao | nao | 95,5372% | rejeitado: criou uma sexta chamada `_printk` |
| Stage 4 com ramo `if (!child)` | 3600 | 900 | 164 | nao | sim | 95,2222% | rejeitado: nenhuma mudanca material |
| Helper recebe `struct device *` | 3600 | 900 | 164 | nao | sim | 95,1111% | rejeitado: piorou a sequencia sem explicar o stock |
| Caminho OEM `soc-repo/.../nubia_gpio_keys` | 3600 | 900 | 164 | nao | sim | 95,2222% | rejeitado como fator: caminho nao altera o corpo normalizado |
| Otimizacao de alocacao experimental | 3460 | 865 | 165 | nao | nao | 86,9122% | rejeitado: forma de controle incompativel com o stock |

## Interpretacao

Igualar apenas tamanho, numero de instrucoes ou quantidade de relocacoes nao e
atestacao. As primeiras variantes `3600/900/164` alteraram o bloco de
`wakeup_trigger_type` e foram rejeitadas apesar da coincidencia agregada.

O Stage 4 foi promovido por motivos adicionais e verificaveis: a forma C com
`bool active_low` removeu spills observados apenas no candidato, mas isso nao
prova que o tipo C original era `bool`;
`nb_setup_secondary.__key` e `nb_key_is_need_report.stat_rec` voltaram a
coincidir com os simbolos locais OEM; `gpio_keys_gpio_report_event` permaneceu
exata; e os totais CFG do `probe` coincidem em `228/387/67`. Ainda ha 21
posicoes de relocation em ordem diferente, portanto a promocao melhora a
fidelidade do fonte sem autorizar uma declaracao de 100%.

O checkpoint da ROM userdebug confirmou duas copias byte a byte identicas do
modulo stock, uma em `vendor_boot` e outra em `vendor_dlkm_a`. Isso reforca a
proveniencia, mas nao fornece um segundo build para analise diferencial. O ELF
nao possui DWARF/BTF e somente preserva o compilador Android clang `19.0.1`
(`r536225`) e o caminho
`../soc-repo/drivers/vendor/common/nubia_gpio_keys/gpio_keys_nubia.c`.

Depois das variantes acima, a diferenca dominante continua sendo a forma do
fonte original no parser DT e nas saidas frias do `probe`. Em particular, o
stock antecipa o endereco de `"wakeup-source"` e o mantem em registrador,
enquanto o candidato materializa o endereco perto do uso. Forcar esse efeito
com `volatile`, barreiras, padding ou Assembly inline nao seria reconstrucao
baseada em evidencia.

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
5. Sem nova evidencia independente, preservar o Stage 4 e direcionar o esforco
   para outro driver incompleto, sem transformar tentativa lexical em prova.

Dados estruturados: `reverse_engineering/validation/reconstructed/gpio_keys_nubia/probe_variant_matrix.json`.
