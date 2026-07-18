# Validacao KCFI das Rotinas TCM CS/MTP - 2026-07-18

## Escopo

Este checkpoint recupera a ABI de quatro rotinas de dados de flash do
`zte_tpd` usando exclusivamente o modulo stock local, exports Ghidra,
pseudocodigo, P-Code, assembly AArch64 e o toolchain GKI configurado. Nenhum
codigo NX809J publicado na Internet e nenhum teste no smartphone foram usados.

Funcoes stock analisadas:

- `syna_tcm_read_cs_data`;
- `syna_tcm_read_mtp_data`;
- `syna_tcm_update_cs_config`;
- `syna_tcm_update_mtp_data`.

## Assinatura Recuperada

- Type ID stock: `0xdd66a5c9`.
- Oraculo: `1920` assinaturas candidatas.
- Resultado: 24 grafias C equivalentes da assinatura canonica:

```c
int syna_tcm_flash_data_fn(struct tcm_dev *tcm, char *data,
                           unsigned int length, unsigned int offset,
                           unsigned int delay_mode);
```

Os aliases `u8 *`/`unsigned char *` e `u32` produzem o mesmo contrato. O
oraculo rejeitou buffer `const`, retorno `void`, retorno `bool` e comprimentos
assinados. O uso stock confirma `x0` para contexto, `x1` para buffer mutavel e
`w2`, `w3`, `w4` para comprimento, offset e modo de delay.

Quatro wrappers MTE auxiliares (`sub_2B710`, `sub_2BAF8`, `sub_2BE10` e
`sub_2C180`) foram alinhados ao mesmo prototipo. Eles nao existem na superficie
stock comparavel; por isso o diff KCFI stock contem exatamente as quatro funcoes
nomeadas acima.

## Build e Gates

- Stock SHA-256:
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Dois builds limpos e reproduziveis do candidato:
  `2befd21fc877b1083eb805e709c49690266cf5f483154dc535af36a02839fdc9`.
- Tamanho: `19167344` bytes; `static_verified`; 501 fontes; zero warnings do
  auditor; vermagic alvo e imports aprovados.
- KCFI integral: `239/322`, contra `235/322` no checkpoint anterior.
- Exatamente quatro Type IDs stock mudaram para `0xdd66a5c9`; zero regressao.
- Superficie selecionada: `164/164 PASS`.
- Familias de callback: `143/143` em `8/8` familias.
- Layout ABI: PASS; decomposicao: `367/367`.
- Nove harnesses: PASS, `86` casos. O harness CS/MTP passou `9/9` tanto na
  arvore publica quanto em `engenharia/curated`.
- Microtarefas: `136 PASS / 231 READY`, quatro promocoes, 132 PASS retidos e
  zero PASS obsoleto.
- Testes focados dos gates afetados: `39/39 PASS`.
- Suite global: `105/106`; a unica falha e a divergencia externa ja conhecida
  entre `nx809j_kernel.config` e `environment.lock.json`.

## Cobertura do Harness

O harness compila diretamente os quatro fontes e verifica a assinatura comum,
contratos nulos e de buffer invalido, propagacao de falha do setup de flash,
selecao dos delays, limpeza do flag ocupado nas rotinas de update e retorno ao
modo de firmware durante cleanup.

Os stubs encerram os caminhos em uma falha controlada de
`syna_tcm_set_up_flash_access`. Leitura e gravacao bem-sucedidas, SPI, MMIO,
temporizacao eletrica e conteudo real da flash nao foram exercitados nem sao
reivindicados. Nenhum comando ADB, fastboot, `insmod`, `rmmod` ou escrita de
particao foi executado.

## Veredito

O checkpoint e estaticamente reproduzivel e hash-bound, mas o driver permanece
`INCOMPLETE`: ainda existem 83 assinaturas KCFI divergentes, 231 microtarefas
sem teste direto, revisao independente pendente e validacao de hardware
`DEFERRED`.
