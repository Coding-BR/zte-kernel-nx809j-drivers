# Next28: syna_sysfs_debug_store

## Veredito

`PASS` offline, sem teste no smartphone.

A funcao `syna_sysfs_debug_store` foi reconstruida e validada contra o ELF
stock local do `zte_tpd.ko`. O candidato atual e o modulo inteiro produzido
pelo build canonico:

- Stock SHA-256:
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato SHA-256:
  `e0ba557f6d5ab22719e4ad5fe776d5d97f3b8658103028dcebc1036f66dc0f62`.
- Candidato: `24588112` bytes.
- Microtarefa: `212_syna_sysfs_debug_store`.
- Entrada stock: `0011a9a0`.
- Corpo stock e candidato: `312` bytes.
- Instrucoes stock e candidato: `78`.
- Contagem global apos este checkpoint: `167 PASS / 200 READY`.

## Correcao aplicada

O decompilador havia introduzido quatro artefatos:

- duas leituras manuais de `SP_EL0`, duplicando o stack protector do compilador;
- dois argumentos variadicos inexistentes nas chamadas stock de `printk`;
- tres simbolos `unk_*` apontando para placeholders `"zte_tpd_log"` em vez das
  mensagens reais da `.rodata`.

O fonte agora preserva os literais stock:

- `Fail to create sysfs sub directory for debugging`;
- `Fail to create sysfs debug group`;
- `Unknown option %d (0:disable / 1:enable)`.

Os offsets observados permanecem `syna_tcm + 0x398`, `+0x3a0` e `+0x398` do
parent para o ponteiro de `syna_tcm`.

## Gates Estritos

### Build canonico

O build `next28_debug_probe2` passou em dois ciclos, em containers limpos,
com caminhos Linux deliberadamente diferentes, sem diagnosticos. Os dois
artefatos foram byte-identicos:

`reverse_engineering/validation/reconstructed/zte_tpd/build_next28_debug_probe2_report.json`

### Assembly e relocations

O comparador AArch64 confirmou:

- secao `.text`: PASS;
- tamanho do simbolo: `312 == 312`;
- instrucoes: `78 == 78`;
- relocations resolvidas: PASS;
- equivalencias permissivas: nenhuma.

Evidencia:

`reverse_engineering/validation/reconstructed/zte_tpd/assembly_comparison_next28_debug_probe2.json`

### KCFI

O type ID stock e candidato coincide em `0x9ce291cd`. O tamanho e a secao
tambem coincidem.

Evidencia:

`reverse_engineering/validation/reconstructed/zte_tpd/kcfi_comparison_next28_debug_probe2.json`

### Ghidra

Uma importacao limpa no Ghidra 12.1.2 confirmou:

- corpo de `312` bytes;
- C descompilado normalizado identico;
- `225` registros P-Code em ambos;
- shape de operacoes P-Code identico;
- strings de erro com o mesmo conteudo e hash.

Evidencia:

`reverse_engineering/validation/reconstructed/zte_tpd/ghidra_semantic_comparison_next28_debug_probe2.json`

### Harness host

O harness passou em dois ciclos com Clang 19.0.1, ASAN e UBSAN, cobrindo nove
casos:

- falha de parse;
- opcao desconhecida;
- enable quando ja existe;
- falha ao criar subdiretorio;
- falha ao criar grupo;
- enable normal;
- retorno positivo de `sysfs_create_group`;
- disable sem objeto;
- disable com teardown completo.

O caso de falha de grupo confirma inclusive a retencao do ponteiro stock antes
do retorno, sem "corrigir" silenciosamente o comportamento observado.

Evidencia:

`reverse_engineering/validation/reconstructed/zte_tpd/harness/next28_sysfs_debug_store_host_test_report.json`

## Limites

O PASS e offline e restrito a esta microtarefa. O harness substitui kobject,
sysfs, parser e printk; ele nao prova lifetime real sob concorrencia, politica
de permissao sysfs, userspace Android ou hardware SPI. A microtarefa
`211_syna_sysfs_info_show` continua `READY` porque ainda falha no tamanho
estrito do corpo e nos gates Assembly/KCFI/Ghidra correspondentes.
