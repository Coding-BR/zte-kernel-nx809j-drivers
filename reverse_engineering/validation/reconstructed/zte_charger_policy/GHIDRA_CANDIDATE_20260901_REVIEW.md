# Checkpoint Ghidra/Docker — `zte_charger_policy`

O candidato versionado `zte_charger_policy.ko` tem SHA-256
`e603c3f553c4d4375655dc7c9afe2595c449999c15e60acd5efdd2206309e927` e 301184 bytes.

O protocolo Docker foi repetido em dois ciclos limpos com a imagem
`nubia-sm8850-kernel-builder:latest`, o volume de kernel `nubia_sm8850_kernel_src`
e o toolchain `clang-r536225`. Os dois ciclos produziram exatamente o hash e o
tamanho do candidato.

Foi gerado um export headless independente com Ghidra 12.1.2 para AArch64 e
preservado em `offline_static/ghidra_candidate_20260901`, cobrindo as 38 funções
do export stock. A comparação estrita passou em apenas 4/38 funções; 11/38
passaram em tamanho de corpo e forma operacional do P-Code, e 4/38 no C
normalizado. Os fallbacks autorizados não alteraram o resultado.

As diferenças abrangem a maior parte da lógica de política de carga, incluindo
as rotinas de estado, propriedades, probe e workers. Este checkpoint é
diagnóstico e corrige a confiança excessiva em auditorias históricas: a
reprodutibilidade Docker do candidato está confirmada, mas a equivalência
estática Ghidra permanece materialmente incompleta. Revisão independente,
validação de hardware e promoção continuam pendentes.
