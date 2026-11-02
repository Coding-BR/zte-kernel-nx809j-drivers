# Revisão inicial — `tp_edge_report_limit_write`

Estado: `INITIAL_REVIEW_OPEN` — não é aprovação de segurança nem revisão independente.

## Escopo e evidência

O alvo é a função stock `0010b690`, com corpo de 952 bytes, microtarefa
`054_tp_edge_report_limit_write`. O C reconstruído é uma vista semântica para
revisão; o objeto final usa `tp_edge_report_limit_write_exact.S`, porque o
Makefile exclui `tp_edge_report_limit_write.c` da compilação.

| Item | SHA-256 |
|---|---|
| C reconstruído | `de6c2da9a2886d8a388bd418a780d5c9836b1a190f70e22c387aafb9cc6d3ea7` |
| Assembly exact | `14d992182ce68a221569602358eb81efb51656c3e281e907ef92a5f7893199ed` |
| Decompilação Ghidra | `bb6a6a78c898fc627f3f822c0487449f4e9ac60a2905a9056d2d78f8a20afc8d` |
| P-Code Ghidra | `a737250890ccbd4472e203bf3a7f4eb62573cb767cf231859144869a00083444` |
| Joern full-driver | `7a06c9c47f575222d8479975f6630e4847ae7832c2183556ca092af87765cd56` |
| Joern da atestação | `c150c25eda41efda4f8993da1ff1392fe82512d855232728a497380ca9c031df` |
| Joern summary | `63897df1998f474d94f3eb2afd26031179d68b46b36afe521a082e1505070107` |

## Normalização dos achados Joern

O full-driver registra 14 itens para esta função. São duas representações do
mesmo call site (`kstrtouint` com casts explícitos e normalizados) em sete
locais reais: `algo_open`, `jitter_pixel`, `jitter_timer`, `click_pixel`,
`long_press_open`, `long_press_timer` e os elementos de
`long_press_pixel`.

O gate estrito passou com zero blockers, zero problemas de parsing e zero
chamadas não resolvidas. Os sete achados `userspace_ingress` de severidade
alta são alertas de revisão para uma entrada procfs; não são, isoladamente,
prova de uma divergência ou autorização de uso físico.

## Cruzamento C, Ghidra, P-Code e assembly

As vistas preservam a mesma lógica observável:

1. limitam `count` a 100 bytes;
2. copiam a entrada de userspace quando `buffer` não é nulo;
3. resolvem o item nomeado e, para entrada numérica, aceitam níveis de 0 a
   10 e calculam os limites derivados com a fórmula stock;
4. atualizam os mesmos offsets de `tpd_cdev` para os sete itens, incluindo a
   replicação de `click_pixel` e o vetor de quatro valores de
   `long_press_pixel`;
5. preservam os retornos stock: `-EINVAL` para falha de cópia, falha de
   conversão numérica ou item desconhecido, e o comprimento limitado para
   comandos reconhecidos;
6. mantêm canário de stack, chamadas, branches, relocations e strings do
   objeto original.

O mapeamento de offsets também coincide: C `+27/+36/+62/+38..+42/+37/+60/
+52..+55/+56/+44/+46` corresponde a Ghidra `0x1b/0x24/0x3e/0x26..0x2a/
0x25/0x3c/0x34..0x37/0x38/0x2c/0x2e`.

## Divergência de manutenção no C legível

O C contém `*(_QWORD *)s = 0`, que zera somente os primeiros 8 bytes do
buffer local de 104 bytes. Ghidra e o assembly stock zeram os 104 bytes antes
da cópia. Portanto, o C legível não deve ser reativado como implementação
compilável sem corrigir a inicialização de `s`; com uma entrada de até 100
bytes sem NUL, a versão C poderia deixar as operações de string sem
terminação garantida.

Isso não muda o módulo atual: o Makefile filtra o C e liga o assembly exact,
cujo prólogo contém as inicializações completas. A correção futura do C deve
ser tratada como mudança separada, com nova comparação AArch64/KCFI, Joern e
harness; não foi aplicada neste bloco para preservar o objeto promovido.

## Riscos residuais e cobertura ausente

O caminho nomeado faz `strchr(s, ':') + 1` sem verificar o retorno. Como
`get_tp_algo_item_id` pode reconhecer um nome sem o separador, uma entrada
malformada como `algo_open` sem `:` deve ser testada explicitamente. Ghidra,
P-Code, C e assembly preservam esse comportamento stock; não há base para
alterá-lo dentro da reconstrução exact.

Também permanecem sem casos dedicados no harness: uma entrada reconhecida
sem `:`, uma entrada de 100 bytes totalmente não terminada, conversões
inválidas em cada ramo e vetores incompletos ou com elemento inválido. O
harness atual cobre quatro casos, executados duas vezes com ASan/UBSan:
campos reconhecidos, vetor, nível numérico e falhas/limite de tamanho.

`tpd_cdev` é um ponteiro global externo e os offsets usados dependem do
estado de inicialização do driver. A função não faz validação nula própria,
em concordância com o stock; concorrência, ciclo de vida procfs e efeitos no
hardware NX809J continuam sem validação física.

## Gates offline

A atestação `next443_tp_edge_report_limit_write_exact_v2` registra 238/238
instruções, 952/952 bytes, paridade de relocations e KCFI `0xc3d43b4d`. O
build canônico Docker passou em dois ciclos independentes e o harness
ASan/UBSan passou em dois ciclos com quatro casos. Hardware, Android input
subsystem, firmware e rollback no NX809J não foram executados.

## Decisão e pendências

Decisão: **não há divergência nova no objeto exact**, mas a revisão permanece
aberta por causa do risco de reativação do C sem inicialização completa e do
caso de nome reconhecido sem `:`. Nenhuma alteração de produção, status ou
mapa foi feita.

Pendências:

1. corrigir ou bloquear explicitamente a compilação futura do C legível;
2. adicionar testes isolados para nome sem `:`, entrada sem NUL no limite de
   100 bytes e cada falha de conversão;
3. obter revisão independente sobre a ABI procfs e os valores gravados em
   `tpd_cdev`;
4. executar validação Android/NX809J com rollback controlado e registrar a
   decisão independente.

`PROMOTED_OFFLINE_EXACT` continua significando apenas equivalência
estática/offline do objeto, não autorização de uso em hardware.
