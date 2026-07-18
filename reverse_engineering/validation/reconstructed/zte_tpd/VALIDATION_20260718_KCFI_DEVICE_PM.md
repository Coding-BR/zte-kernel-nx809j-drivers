# Validacao KCFI Device PM - 2026-07-18

## Escopo

Este checkpoint corrige a ABI de cinco rotinas de dispositivo e restaura a
tabela PM comprovada pelas relocacoes do modulo stock NX809J. A fonte de verdade
stock tem SHA-256
`a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
Nenhum driver publicado na Internet e nenhum teste em smartphone foram usados.

## Assinatura Recuperada

- Type ID stock: `0x2a703c0b`.
- Oracle: 140 assinaturas candidatas.
- Correspondencia unica: `int (struct device *)`.
- Funcoes: `syna_dev_resume`, `syna_dev_suspend`, `syna_pm_resume`,
  `syna_pm_suspend` e `syna_ts_check_dt`.
- Assembly/P-Code: `driver_data` em `struct device + 0x98`; `of_node` em
  `struct device + 0x2e8`.

## Registro PM Restaurado

O stock contem `syna_dev_pm_ops` em `.rodata+0xf00`, com tamanho 192 bytes:

- `+0x10 -> syna_pm_suspend`;
- `+0x18 -> syna_pm_resume`;
- `syna_dev_driver + 0xa0 -> syna_dev_pm_ops`.

O candidato reproduz a mesma topologia em enderecos locais diferentes:

- tabela em `.rodata+0x320`, tamanho 192;
- `+0x10 -> syna_pm_suspend` e `+0x18 -> syna_pm_resume`;
- `syna_dev_driver + 0xa0 -> .rodata+0x320`.

Os detalhes auditaveis estao em `syna_device_pm_relocation_audit.json`.

## Build e KCFI

- Dois builds limpos: SHA-256
  `d61b2892ad748d3c91b31b88c5363aca70699d51ed99a6441561e0107122da18`.
- Tamanho: `19146232` bytes.
- `static_verified`, `reproducible_build=true`, 152/152 imports.
- KCFI antes: `221/322`; depois: `226/322`.
- Exatamente cinco type IDs mudaram para `0x2a703c0b`; zero regressao.
- Superficie selecionada: `151/151 PASS`; familias: `143/143 PASS`.

## Gates

- Layout ABI: PASS.
- Sete harnesses ASAN/UBSAN: PASS, 60 casos.
- Microtarefas: `123 PASS / 244 READY`, zero PASS obsoleto.
- Decomposicao: `367/367` em pseudocodigo, P-Code e assembly.
- Hardware e revisao independente: pendentes.

## Limites

KCFI e relocacoes provam ABI e topologia de registro estatico, nao a ordem real
de suspend/resume, temporizacao, IRQ, SPI ou comportamento eletrico. Nenhum
comando ADB, fastboot, `insmod`, `rmmod` ou escrita de particao foi executado.
