# syna_tcm_v1_parse_idinfo host and Joern review

Resultado atual: MP0 a MP4 passaram. O gate Joern estrito v4.0.548 confirmou
um metodo interno mapeado, zero chamadas nao resolvidas e nenhum delta de
chamadas mapeadas.

O harness foi executado em dois ciclos deterministas no Docker com ASan e
UBSan. O sanitizer de alinhamento foi desativado somente para este alvo:
o Assembly stock faz uma carga de 32 bits no offset 0x92, que e permitida pela
arquitetura AArch64, mas rejeitada pelo sanitizer C aplicado ao cast produzido
pelo decompilador.

A repetição atual cobriu os mesmos sete contratos nos dois ciclos, sem stderr,
com binário idêntico SHA-256
`7350fa2b6019d1a339e5f8cd1e9cfbb8bfd1ca34308a9648963ab309b30b3fa1`. O
relatório hash-bound é `host_harness_report_v2.json`, SHA-256
`528fe36b2151600e00ee13719e71c5a7a8ee74dda1318092a17548b53b43c3d3`.

A revisao Ghidra e Assembly confirma: argumentos nulos ou tamanho zero geram
um log e o valor ABI zero-extended 0x00000000ffffff0f (4294967055); o tamanho
efetivo e min(a4, 48); tamanho maior que a3 gera dois logs e
0x00000000ffffffea (4294967274); caso valido copia para a1 + 0x80, sincroniza
a1 + 0x0c com a1 + 0x92 e grava o byte de a1 + 0x81 em a1 + 0x09.

A montagem candidata foi gerada com GCC AArch64 13.3.0. Ela nao prova
igualdade exata de opcodes, relocations, PAC/CFI, ABI do modulo ou
comportamento fisico do hardware. A funcao ainda nao foi promovida para
equivalencia completa: MP7 aguarda build canonico/KCFI e MP8 aguarda revisao
independente. Nao houve teste no smartphone.
