# Checkpoint Ghidra/Docker — `zlog_test`

O candidato versionado `zlog_test.ko` tem SHA-256
`d1a19d632dd9039fa1b6c63e1d453d552a8dca95cec2143735e5f98ebe3e6fb9` e 160448 bytes.

Foi gerado um export headless independente com Ghidra 12.1.2 para AArch64 e
preservado em `offline_static/ghidra_candidate_20260901`. A comparação com o
export stock cobre as 11 funções: 10/11 passam estritamente; somente
`zlog_enable_test_set` permanece diferente no C normalizado. Os 11/11 corpos
passam em tamanho e forma operacional do P-Code. Os fallbacks autorizados não
reduzem essa única divergência.

O protocolo Docker atual foi executado em três ciclos limpos. Os ciclos 1 e 2,
com caminho canônico e `-ffile-prefix-map`, produziram o mesmo módulo
`39cd0c7360c133f9ec271976deafe8b61674e69d9259bc8c2a99a07455c5d753` (160448
bytes). O ciclo 3 repetiu o ponto de montagem histórico e produziu
`fb8a6f7d198fcd5d44b1284c5aaec478d8e6679e02799d922d2be0ce6f9f9364`.

A comparação de assembly entre o candidato e o ciclo Docker confirmou 11/11
corpos com instruções, tamanhos de símbolo e seções equivalentes; as
relocações não foram declaradas iguais porque o extractor resolveu algumas
referências locais de `.rodata` com representações diferentes. A divergência
integral do ELF permanece aberta e o candidato não foi substituído.

Este checkpoint não é promoção final: revisão independente, validação no
aparelho e reprodutibilidade bit-a-bit do módulo continuam pendentes.
