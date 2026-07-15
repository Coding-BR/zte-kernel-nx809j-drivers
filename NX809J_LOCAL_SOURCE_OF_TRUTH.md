# NX809J (REDMAGIC 11 Pro+): Politica de Fonte Local da Verdade

## Regra obrigatoria

Para o NX809J, nenhum kernel, driver, offset, assinatura, DTS ou comportamento
publicado na Internet pode ser usado como prova de implementacao. A Internet nao
e fonte de verdade para este aparelho.

Somente os seguintes artefatos locais podem sustentar uma afirmacao sobre o
NX809J:

1. O modulo stock adquirido, identificado por caminho, tamanho e SHA-256.
2. ELF, assembly AArch64, relocacoes, strings, KCFI e namespaces extraidos desse
   mesmo modulo stock.
3. Pseudocodigo, P-Code, grafo de chamadas e exports Ghidra gerados a partir do
   modulo stock cujo hash foi verificado.
4. DTS/DTBO extraido localmente da imagem ou do aparelho, tambem com hash.
5. Evidencia runtime somente leitura obtida do aparelho: `dmesg`, sysfs, procfs,
   tracefs e propriedades, sempre com data, comandos e logs brutos.
6. Resultados de build e testes executados localmente, com entradas e saidas
   identificadas por SHA-256.

Documentacao generica do GKI pode explicar uma API do Kernel 6.12, mas nunca
pode provar offsets, hardware, sequencia de inicializacao ou logica do NX809J.

O procedimento offline completo esta em
`reverse_engineering/docs/PIPELINE_RECONSTRUCAO_OFFLINE_TOTAL.md`. O registro de
hardware inferido e desconhecido esta em
`reverse_engineering/docs/NX809J_DOSSIE_HARDWARE_REVERSO.md`.

## Ciclo de engenharia reversa

1. Verifique o SHA-256 do `.ko` stock antes de qualquer analise.
2. Extraia a funcao completa por endereco inicial e tamanho do simbolo ELF.
3. Rejeite assembly truncado. A ultima instrucao deve cobrir todo o intervalo.
4. Cruze assembly, relocacoes, strings, P-Code e pseudocodigo. Nenhuma dessas
   fontes isolada autoriza uma conclusao.
5. Reconstrua tipos e callbacks sem casts que escondam incompatibilidade CFI.
6. Compare o KCFI stock e candidato para toda funcao ou callback tocado.
7. Teste ramos de sucesso, falha, limites, concorrencia e teardown em harness.
8. Execute dois builds completamente limpos e compare SHA-256 e tamanho.
9. Compare aliases, vermagic, namespaces, imports e simbolos definidos.
10. Registre todo desvio de seguranca em relacao ao stock e a evidencia local que
    o justifica. Nao remova um desvio validado apenas para obter paridade numerica.
11. Teste em hardware somente com procedimento controlado, logs e rollback.

## Regra de atestacao

Os termos `100%`, `static_verified` e `hardware_verified` sao proibidos enquanto
qualquer gate estiver pendente. Compilacao, boot ou `insmod` isolados nao provam
equivalencia funcional. Cada afirmacao deve citar o artefato local e seu hash.

Sem smartphone, o estado maximo permitido e `STATIC_ALIGNED_CANDIDATE`: todos
os gates offline passaram, mas a equivalencia fisica continua explicitamente
pendente. Esse estado nao autoriza o uso isolado da palavra `100%`.

Para o `zte_tpd`, a fonte stock atual e:

- SHA-256: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
- Tamanho: `633536` bytes
- Caminho: `runs/NX809J-20260711T011653Z/01_acquisition/modules/zte_tpd.ko`
