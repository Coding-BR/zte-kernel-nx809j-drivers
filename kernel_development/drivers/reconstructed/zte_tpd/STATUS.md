# Status de Reconstrucao e Validacao do Driver `zte_tpd`

## Estado Atual - 2026-07-23

- **Classificacao do build:** `static_verified`
- **Veredito do protocolo offline:** `INCOMPLETE`
- **Kernel alvo:** Android 16 / GKI 6.12.23 / AArch64
- **Stock SHA-256:** `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
- **Candidato SHA-256:** `d8c3cf5c315406dbb4d8424aaa0732ca79bcabb765853196a3751847a23607e8`
- **Candidato:** `24592200` bytes
- **Teste em hardware desta revisao:** nao executado

`static_verified` descreve build, ELF, KMI, layouts e rastreabilidade
estrutural. Nao significa equivalencia semantica integral nem validacao de
hardware.

## Gates Offline

PASS:

- O0 identidade e escopo;
- O1 ELF stock local;
- O2 assembly stock integral;
- O3 exports Ghidra, pseudocodigo e P-Code;
- O4 mapa estrutural `367/367`, incluindo nomes duplicados por endereco;
- O5 ABI/layout com probe compilado no Clang `r536225`;
- O8 KCFI da superficie selecionada `176/176`, incluindo as oito familias
  recuperadas `143/143`.

INCOMPLETE:

- O6: `166/367` microtarefas possuem build, decisao KCFI e teste direto
  atestados;
- O8/O9: a superficie KCFI integral recuperavel esta em `305/322`;
- O10: revisao independente ainda nao foi realizada.

Hardware permanece `DEFERRED`.

## Checkpoint Next26 - Remocao Controlada da Hierarquia Sysfs

O Next26 fechou `syna_sysfs_remove_dir` com a assinatura:

```c
void syna_sysfs_remove_dir(struct syna_tcm *tcm);
```

O fluxo stock foi preservado byte a byte: log de handle nulo e retorno;
retorno silencioso quando `sysfs_dir` em `syna_tcm + 0x398` e nulo; chamada
de `syna_testing_remove_dir`; remocao do grupo `attr_debug_group` e
`kobject_put` do diretorio `utility` em `+0x3a0`, quando presente; por fim,
remocao de `attr_group` e `kobject_put` do diretorio principal. Os ponteiros
nao sao zerados, conforme o `.ko` stock.

O corpo coincide exatamente com o stock em `132` bytes, `33` instrucoes,
secao e relocations resolvidas, sem equivalencias permissivas. Stock e
candidato possuem KCFI `0x3175607e`. Uma importacao limpa no Ghidra 12.1.2
confirmou C normalizado identico e `83/83` operacoes P-Code.

O harness direto passou quatro cenarios em dois ciclos Clang 19.0.1 com
ASAN+UBSAN: handle nulo, ausencia do diretorio principal, teardown sem
`utility` e teardown completo. Ele valida offsets `+0x398/+0x3a0`, ordem,
argumentos, log exato e retencao dos ponteiros.

Dois builds canonicos sem diagnosticos produziram o mesmo modulo de
`24.592.200` bytes e SHA-256
`d8c3cf5c315406dbb4d8424aaa0732ca79bcabb765853196a3751847a23607e8`.
O probe de layout AArch64 passou, a decomposicao permanece `367/367`, a
superficie direta KCFI permanece `176/176` e as oito familias permanecem
`143/143`. A microtarefa `210_syna_sysfs_remove_dir` foi promovida:
`166 PASS / 201 READY`.

Documento autoritativo:
`../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT26_SYSFS_REMOVE_VALIDATION_20260723.md`.

## Checkpoint Next25 - Criacao da Hierarquia Sysfs

O Next25 fechou `syna_sysfs_create_dir` com a assinatura:

```c
int syna_sysfs_create_dir(struct syna_tcm *tcm,
			  struct platform_device *parent);
```

A funcao cria `sysfs` sob `parent->dev.kobj`, armazena o objeto em
`syna_tcm + 0x398`, cria `attr_group` e chama
`syna_testing_create_dir`. Os tres caminhos de falha preservam retorno, log,
ordem e rollback stock: `-20` quando o kobject nao pode ser criado,
`kobject_put` apos falha do grupo e
`sysfs_remove_group` seguido de `kobject_put` apos falha do diretorio de
testes. Retornos positivos dos dois helpers sao tratados como sucesso.

O corpo coincide exatamente com o stock em `212` bytes, `53` instrucoes,
secao e `18` relocations de dados resolvidas, sem equivalencias permissivas.
Stock e candidato possuem KCFI `0x720adbbe`. Uma importacao limpa no Ghidra
12.1.2 confirmou C normalizado identico, as tres strings de erro e
`154/154` operacoes P-Code.

O harness direto passou cinco cenarios em dois ciclos Clang 19.0.1 com
ASAN+UBSAN. Ele valida o offset `+0x398`, `parent->dev` em `+0x10`,
argumentos, ordem das chamadas, retornos, rollback e logs exatos. O probe de
layout tambem passou contra a arvore GKI 6.12 e agora declara
`syna_tcm.sysfs_dir == 0x398`.

Os hashes historicos de evidencias tambem foram vinculados aos blobs Git em
LF, removendo dependencia de CRLF do checkout Windows. A verificacao direta
do indice passou em `495/495` referencias das `165` tarefas PASS.

Dois builds canonicos e dois builds independentes sem diagnosticos
produziram o mesmo modulo de `24.590.136` bytes e SHA-256
`f828a61670510ed2da430a80ced9d6858a3d5b8807af96391fba14bef0e8358b`.
O KCFI global permanece em `305/322` (`94,72%`), a superficie direta em
`176/176` e as oito familias de callback em `143/143`. Somente a
microtarefa `209_syna_sysfs_create_dir` foi promovida:
`165 PASS / 202 READY`.

Documento autoritativo:
`../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT25_SYSFS_CREATE_VALIDATION_20260723.md`.

## Checkpoint Next24 - Aquisicao dos GPIOs SPI

O Next24 fechou `syna_spi_get_gpio` com a assinatura:

```c
int syna_spi_get_gpio(unsigned int gpio, int output,
		      unsigned int state, char *label);
```

A funcao preserva o fluxo stock: formatacao de `tcm_gpio_%d\n` em um buffer
de 16 bytes, requisicao do GPIO, conversao para descriptor, selecao entre
direcao de saida raw e entrada e propagacao exata dos erros. Os tres logs
stock e o bloco de erro compartilhado foram preservados.

O corpo coincide exatamente com o stock em `224` bytes, `56` instrucoes,
secao e `12` relocations resolvidas. Uma importacao limpa no Ghidra 12.1.2
confirmou C normalizado identico, as strings recuperadas e `147/147`
operacoes P-Code.

O stock nao possui um preambulo KCFI valido para esta funcao. Os grafos
Ghidra stock e candidato comprovam cinco referencias de entrada, todas
`UNCONDITIONAL_CALL` diretas a partir de `syna_spi_probe`, com a mesma
multiplicidade. A decisao automatizada e
`KCFI_NOT_APPLICABLE_DIRECT_CALL_ONLY`; o type ID adicional emitido pelo
compilador candidato nao e apresentado como correspondencia stock.

O harness direto passou seis cenarios em dois ciclos Clang 19.0.1 com
ASAN+UBSAN: falha de formatacao, falha de `gpio_request`, sucesso e falha
nas direcoes de saida e entrada. Ele valida retornos, ordem das chamadas,
argumentos, label e logs exatos.

Dois builds canonicos e dois builds independentes, todos sem diagnosticos,
produziram o mesmo modulo de `24.582.320` bytes e SHA-256
`d7267e60da8fef2ea6b217fdc9b27952afbbb9e292bf91be2105c34630efd8e6`.
O KCFI global permanece em `305/322` (`94,72%`), a superficie direta em
`176/176` e as oito familias de callback em `143/143`. Somente a
microtarefa `208_syna_spi_get_gpio` foi promovida:
`164 PASS / 203 READY`.

Documento autoritativo:
`../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT24_SPI_GET_GPIO_VALIDATION_20260723.md`.

## Checkpoint Next23 - Registro da Interface de Hardware

O Next23 fechou `syna_hw_interface_init` com a assinatura:

```c
int syna_hw_interface_init(void);
```

A funcao preserva a ordem stock: log de entrada, registro do
`syna_spi_device`, publicacao de `p_device`, registro do
`syna_spi_driver` e inicializacao de `buf_size`, `rx_buf` e `tx_buf`
somente no caminho de sucesso. Os dois erros retornam o codigo original e
emitem suas strings stock sem executar efeitos posteriores.

O corpo coincide exatamente com o stock em `196` bytes, `49` instrucoes,
secao e relocations. O KCFI coincide em `0x6fbb3035`. Uma importacao limpa
no Ghidra 12.1.2 confirmou C normalizado, as quatro strings e `149/149`
operacoes P-Code. A unica normalizacao necessaria foi a diferenca de sintaxe
`&syna_spi_device` versus `syna_spi_device`; o ELF comprova em ambos os
casos o mesmo objeto de `1008` bytes e as relocations exatas.

O harness direto cobre falha no registro do platform device, falha no
registro SPI, sucesso com retorno zero e sucesso com retorno positivo. Os
quatro casos passaram em dois ciclos Clang 19.0.1 com ASAN+UBSAN, incluindo
ordem de chamadas, argumentos, logs e estado global.

Dois builds canonicos em caminhos `M=` distintos, com mtimes normalizados,
produziram o mesmo modulo de `24.582.360` bytes e SHA-256
`9237c4cd4e2cb8bafd0824b4066fc6882ccdc9e0aceb9e597bc424deee681657`,
sem diagnosticos. A auditoria independente repetiu dois builds e reproduziu
o mesmo hash; o primeiro ciclo registrou apenas um aviso de clock skew do
bind mount e o segundo teve stderr vazio. O artefato nao foi promovido com
base nesse aviso: a promocao usa os dois builds canonicos sem diagnosticos.

O KCFI global permanece em `305/322` (`94,72%`), a superficie direta em
`176/176` e as oito familias de callback em `143/143`. Somente a
microtarefa `198_syna_hw_interface_init` foi promovida:
`163 PASS / 204 READY`.

Documento autoritativo:
`../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT23_HW_INTERFACE_INIT_VALIDATION_20260723.md`.

## Checkpoint Next21/Next22 - Release e Reset do Transporte SPI

O Next21 fechou `syna_spi_release` com a assinatura GKI:

```c
void syna_spi_release(struct device *dev);
```

O rascunho ja tinha ABI, tamanho e opcodes corretos, mas referenciava o
marcador artificial `unk_3420F`, cujo conteudo nao correspondia ao stock. A
implementacao agora usa a string comprovada
`"\0016[info ] %s: SPI device removed\n"`. O corpo coincide em `44` bytes,
`11` instrucoes, secao, relocations, KCFI `0x6c81b8c8`, C normalizado e
`34/34` operacoes P-Code. O harness direto valida o log exato e o argumento
`dev` deliberadamente ignorado, inclusive quando nulo.

O Next22 fechou `syna_spi_hw_reset` sem alterar seu corpo, que ja coincidia
integralmente com o stock. A funcao preserva os campos `reset_gpio` em
`+0xf0`, `reset_on_state` em `+0xf4` e `reset_active_ms` em `+0xfc`, a
polaridade, o atraso ativo condicional, o atraso final de `80 ms` e a ordem
das chamadas GPIO. O corpo coincide em `144` bytes, `36` instrucoes,
relocations, KCFI `0x2b3cba1b`, C normalizado e `110/110` operacoes P-Code.
O harness cobre quatro cenarios em dois ciclos ASAN+UBSAN.

Dois builds canonicos em caminhos `M=` diferentes produziram o mesmo modulo
de `24.581.424` bytes e SHA-256
`2f5454ccdf37b7b34b4bcbc72d52c314dcb76ad974813c396973255ca144b4f8`.
Uma auditoria independente repetiu outros dois builds limpos, obteve o mesmo
hash e registrou stderr vazio nos dois ciclos.
O KCFI global permaneceu em `305/322` (`94,72%`), a superficie direta em
`176/176` e as oito familias de callback em `143/143`. Somente as
microtarefas `197_syna_spi_hw_reset` e `200_syna_spi_release` foram
promovidas: `162 PASS / 205 READY`.

Documento autoritativo:
`../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT21_22_SPI_LIFECYCLE_VALIDATION_20260723.md`.

## Checkpoint Next20 - Controle de IRQ do Transporte SPI

O Next20 fechou `syna_spi_enable_irq` com a assinatura:

```c
int syna_spi_enable_irq(struct tcm_hw_platform *platform, bool enable);
```

Uma busca nominal local de `1.222.980` tags, corrigida para aplicar mascara
de 64 bits em todas as caudas xxHash64, recuperou
`struct tcm_hw_platform`. O type ID `0x342e61b1` coincide com o stock. A
mesma tag tambem reproduz os type IDs de `syna_spi_read`,
`syna_spi_write` e `syna_tcm_allocate_device`, confirmando o contrato por
quatro fronteiras independentes.

O layout agora representa `struct tcm_hw_platform` embutida em `+0x08` e
`struct syna_hw_attn_data` em `+0xa8`. Os campos comprovados sao
`irq_id` em `+0xb8`, `irq_enabled` como `u8` em `+0xbc` e
`struct mutex` em `+0xc0`. O uso de `u8` e necessario: o stock testa o bit
zero no caminho de enable e o byte inteiro no caminho de disable.

O corpo candidato coincide exatamente com o stock em `216` bytes, `54`
instrucoes, secao e relocations. O Ghidra 12.1.2 confirmou C normalizado
identico, cinco strings resolvidas e `159/159` operacoes P-Code com a mesma
forma. O harness direto passou seis cenarios em dois ciclos ASAN+UBSAN,
cobrindo handle invalido, IRQ ausente, transicoes e chamadas idempotentes.

Dois builds canonicos em caminhos `M=` diferentes produziram o mesmo modulo
de `24.581.960` bytes e SHA-256
`6bd9588301a6f56e23de34f6687f7b13d27c3234dd9942236b54f0c05fbb959f`.
A auditoria independente repetiu dois builds limpos sem warnings. A
superficie KCFI global subiu para `305/322` (`94,72%`) e somente a
microtarefa `205_syna_spi_enable_irq` foi promovida:
`160 PASS / 207 READY`.

Documento autoritativo:
`../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT20_SPI_ENABLE_IRQ_VALIDATION_20260723.md`.

## Checkpoint Next18 - Comando de Teste de Producao

O Next18 fechou `syna_tcm_run_production_test` com a assinatura canonica:

```c
int syna_tcm_run_production_test(struct tcm_dev *tcm_dev,
				 unsigned char test_code,
				 struct tcm_buffer *test_data,
				 unsigned int response_mode);
```

O oraculo KCFI local avaliou `10.584` declaracoes e recuperou o type ID stock
`0x0b6a0563`. A implementacao preserva os retornos `-241`, o comando `42`, a
selecao IRQ/polling, o atraso em `+0x20c`, a resposta em `+0x148` e as cinco
strings stock. A unidade `syna_tcm_func_base_unit.c` tambem restaura o helper
`syna_tcm_buf_copy` como simbolo local da mesma unidade de traducao, removendo
o alias global artificial usado no rascunho anterior.

O corpo final coincide exatamente com o stock em `392` bytes, `98`
instrucoes, secao e relocations, sem equivalencia permissiva. Uma importacao
limpa no Ghidra 12.1.2 confirmou C normalizado identico e `287/287` registros
P-Code com a mesma forma ordenada. O harness direto passou nove cenarios em
dois ciclos ASAN/UBSAN e gerou binarios identicos.

Dois builds canonicos limpos, executados em caminhos `M=` deliberadamente
diferentes, produziram o mesmo modulo de `24.413.752` bytes, SHA-256
`214eb06c1a1074b329818fb0b0a7c9d0e9ca1e6880a1454442b8355fd3f4ea97`,
sem diagnosticos e com identidade byte a byte. O KCFI global permaneceu em
`303/322` (`94,10%`) sem regressao
nas 302 funcoes previamente aprovadas. Somente a microtarefa
`287_syna_tcm_run_production_test` foi promovida: `158 PASS / 209 READY`.

O bloqueio historico de `syna_spi_enable_irq` documentado em
`../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT18_IRQ_ABI_SEARCH_20260722.md`
foi resolvido no Next20 por uma busca nominal corrigida e correlacao entre
quatro fronteiras KCFI.

Documento autoritativo:
`../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT18_PRODUCTION_TEST_VALIDATION_20260722.md`.

Gate de independencia de caminho:
`../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT18_PATH_INDEPENDENCE_20260722.md`.

## Checkpoint Next17 - ABI e Fluxo do `unlocked_ioctl`

O Next17 fechou `syna_ioctl` com a assinatura canonica de
`struct file_operations.unlocked_ioctl`:

```c
long syna_ioctl(struct file *file, unsigned int cmd, unsigned long arg);
```

O KCFI stock e candidato agora usam o type ID `0x2af6cdbb`. O oraculo local
compilou `500` declaracoes e encontrou oito aliases equivalentes de
`long/ssize_t`, `unsigned int/u32` e `unsigned long/u64`; todas normalizam para
a assinatura acima. O cast `(void *)` foi removido de `zte_fops`, preservando
CFI no ponto de chamada indireta.

O fluxo recuperado testa os comandos `0xc0047003`, `0xc0047002` e
`0xc0047001` na ordem stock. O uso do tipo real `struct wait_queue_entry`
tambem recuperou o layout de pilha do OEM. O corpo candidato coincide
exatamente com o stock em `616` bytes, `154` instrucoes, secao e nas `11`
relocations, sem equivalencia permissiva. Uma importacao limpa no Ghidra
12.1.2 confirmou C normalizado identico e `401/401` registros P-Code com a
mesma forma ordenada.

O harness direto passou `10/10` em duas execucoes ASAN/UBSAN. Ele cobre
comando invalido, estado desabilitado, evento ja pronto, wake em
`prepare_to_wait_event`, interrupcao, ciclo por `schedule`, os dois valores
copiados e falha `-EFAULT` com unlock. Dois builds limpos produziram o mesmo
modulo de `24.450.896` bytes, SHA-256
`a26584d01155f435141ab78a2d5fe0f9b70572d62b2ad03695b6be08d51930fe`.

O KCFI global subiu para `302/322` (`93,79%`) e somente a microtarefa
`175_syna_ioctl` foi promovida: `157 PASS / 210 READY`. Este veredito e
restrito a funcao; scheduler real, `copy_to_user` real e hardware permanecem
fora do harness host.

Documento autoritativo:
`../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT17_IOCTL_VALIDATION_20260722.md`.

## Checkpoint Next16 - Roteamento de Eventos TouchComm

O Next16 fechou `syna_tcm_get_event_data` com a assinatura KCFI
`int (struct tcm_dev *, unsigned char *, struct tcm_buffer *)`, type ID
`0x2431fd45`. O oraculo local compilou `1.200` declaracoes e recuperou o nome
nominal `struct tcm_buffer`; um segundo oraculo de `150` declaracoes confirmou
o callback `read_message` como `int (struct tcm_dev *, unsigned char *)`, KCFI
`0xe10dda21`.

O layout agora representa os dois buffers de `72` bytes comprovados pelo ELF:
`report_buf` em `+0x100`, com `data_length` em `+0x10c`, e `resp_buf` em
`+0x148`, com `data_length` em `+0x154`. O corpo do alvo coincide exatamente
com o stock em `316` bytes, `79` instrucoes, secao, relocations e destinos dos
dois saltos para a copia `static` local. Nao foi usada equivalencia permissiva.

Uma importacao limpa no Ghidra 12.1.2 confirmou C normalizado identico, as
cinco strings exatas e `236/236` registros P-Code com a mesma forma ordenada.
O comparador passou a normalizar enderecos `LAB_*` por mapeamento bijetivo e
possui testes que rejeitam alteracao do grafo de labels. O harness direto
passou `14/14` em duas execucoes ASAN/UBSAN, incluindo limites `0/1/15/16/254/255`,
selecao de `report_buf`/`resp_buf`, erros e propagacao dos retornos.

Dois builds limpos produziram o mesmo modulo de `24.381.040` bytes, SHA-256
`0b279dc039ab6ad9d670ebd66308d977fd2c286234a2852b70370683b3e8d5ce`.
O KCFI global subiu para `301/322` (`93,48%`) e somente a microtarefa
`269_syna_tcm_get_event_data` foi promovida: `156 PASS / 211 READY`.

`syna_tcm_v1_read_message` recebeu apenas a assinatura comprovada. Sua
microtarefa continua READY porque o corpo candidato tem `5612` bytes contra
`5484` stock e ainda nao possui paridade de assembly, Ghidra e harness integral.

Documento autoritativo:
`../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT16_EVENT_DATA_VALIDATION_20260722.md`.

## Checkpoint Next15 - Orquestracao de Reflash

O Next15 fechou `syna_dev_do_reflash` com a assinatura KCFI
`int (struct syna_tcm *, bool)`, type ID `0x796eea76`. O oraculo local
compilou `882` declaracoes; somente `struct syna_tcm *`, retorno inteiro de
32 bits e um segundo argumento de um byte produziram o ID stock. Os dois
chamadores locais, os valores `0/1` e o uso como bit de forca sustentam
`bool` como declaracao canonica.

O corpo candidato coincide com o stock em `260` bytes, `65` instrucoes,
secao e todas as relocations. Uma importacao limpa no Ghidra 12.1.2 tambem
coincide em C normalizado e na forma ordenada dos `190` registros P-Code. O
harness direto passou `10/10` em duas execucoes ASAN/UBSAN, cobrindo
`request_firmware`, propagacao de erros, update, logs exatos, truncamento de
tamanho, bit `force` e `release_firmware` na ordem stock.

Dois builds limpos produziram o mesmo modulo de `24.262.064` bytes, SHA-256
`647340ba7ca988b83d3f18f20013bc8c0726e765b0a1da83724aeafba9c84ad8`.
O KCFI global subiu para `299/322` (`92,86%`) e a microtarefa
`144_syna_dev_do_reflash` foi promovida: `155 PASS / 212 READY`.

A assinatura direta de `syna_tcm_do_fw_update` tambem foi recuperada como
`int (struct tcm_dev *, const unsigned char *, unsigned int, unsigned int,
bool)`, KCFI `0xb9434444`. Esta dependencia permanece READY: seu corpo ainda
tem `860` bytes contra `824` stock e nao recebeu harness/assembly estritos
proprios.

Documento autoritativo:
`../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT15_REFLASH_VALIDATION_20260722.md`.

## Checkpoint Next14 - Extracao de Bits do Touch Report

O Next14 fechou `syna_tcm_get_touch_data` com a assinatura KCFI
`int (const unsigned char *, unsigned int, unsigned int, unsigned int,
unsigned int *)`, type ID `0xfd344c7d`. O oraculo local compilou `6.400`
declaracoes e encontrou somente a familia acima; as 32 correspondencias sao
aliases equivalentes de `u8/u32` e `unsigned char/unsigned int`.

O corpo candidato coincide com o stock em `244` bytes, `61` instrucoes,
secao e todas as relocations. A nova importacao no Ghidra 12.1.2 tambem
coincide em C normalizado e na forma ordenada dos `220` registros P-Code,
sem equivalencia permissiva. O harness direto passou `10/10` em duas
execucoes ASAN/UBSAN e comparou `1.024` combinacoes validas por execucao com
um extrator de referencia, alem dos caminhos de erro e limites de 32 bits.

Dois builds limpos e independentes produziram o mesmo modulo de `24.076.520`
bytes, SHA-256
`9a168340ee6147c6547276f1c63a442ecc9302ec34180259b4740286078b85b7`.
O KCFI global subiu para `297/322` (`92,24%`) e a microtarefa
`315_syna_tcm_get_touch_data` foi a unica promocao: `154 PASS / 213 READY`.

Documento autoritativo:
`../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT14_TOUCH_DATA_VALIDATION_20260722.md`.

## Checkpoint Next13 - Ciclo de Firmware

O Next13 revalidou nove funcoes do ciclo de firmware por assembly AArch64,
relocations, Ghidra, P-Code, KCFI e dois harnesses diretos. Stock e candidato
coincidem exatamente nas nove funcoes, somando `533` instrucoes e `1.249`
registros P-Code. Os harnesses passaram `24/24` casos por repeticao, em duas
execucoes com ASAN/UBSAN.

O descritor `struct tpd_firmware_data` foi corrigido de `0x10` para `0x18`
bytes. O campo `data` permanece em `+0x08`, seguido de oito bytes reservados.
Essa correcao e imposta por `static_assert` e substitui a inferencia publicada
no Next12. Os offsets canonicos em `tpd_cdev` sao `+0x448`, `+0xc58`,
`+0xc60`, `+0xe18`, `+0xee8`, `+0xf98` e `+0xfa0`.

Dois builds limpos produziram o mesmo modulo de `24.076.504` bytes e SHA-256
`328777a498b79f5cb3fb2ce2e4ce7fbe841049d9ac69faa0c66095074d2b863e`.
O KCFI global chegou a `296/322` (`91,93%`). O manifesto preservou os 150 PASS
anteriores, promoveu tres novas funcoes e terminou em `153 PASS / 214 READY`.
Os callers `syna_testing_pt01_zte`, `syna_testing_pt05_zte` e
`syna_testing_pt0a_zte` permanecem READY: a chamada de copia foi tipada, mas
os corpos ainda divergem do stock e nao possuem teste direto integral.

Documento autoritativo:
`../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT13_FIRMWARE_LIFECYCLE_VALIDATION_20260719.md`.

## Checkpoint Report Dispatch

O grupo de tres callbacks Synaptics usa a assinatura KCFI comprovada
`int (unsigned char, const u8 *, unsigned int, void *)`, com type ID
`0x9f93c40a` em stock e candidato. A comparacao de P-Code/assembly tambem
corrigiu argumentos varargs que nao existiam no binario stock e restaurou os
limites dos logs de copia.

O novo candidato passou duas compilações limpas reproduziveis com o SHA-256
`8e48658fd32194a08d59aa7a9e2dc61526e2952db366727e9af89aac41c8021a`. O harness
offline de `syna_dev_process_unexpected_reset` passou `6/6` em duas execucoes
ASAN/UBSAN; apenas essa microtarefa foi promovida. `syna_cdev_process_reports` e
`syna_dev_process_touch_report` permanecem `READY_FOR_IMPLEMENTATION` ate haver
um teste direto do payload/parser. A comparacao de assembly estrita e
`0/3`, documentando divergencia de corpo recompilado e nao equivalencia.

## Checkpoint Control-Value

O lote adicionou `set_lcd_reset_processing`, `tpd_report_uevent` e
`tpd_reset_gpio_output`. O oraculo KCFI encontrou `void (unsigned char)` para
as tres funcoes, com type ID `0xa2fce979` para o callback GPIO. O novo
`control_value_harness_report.json` passou `7/7` casos em duas execucoes
ASAN/UBSAN, cobrindo offset `tpd_cdev + 0x18`, os quatro valores de uevent e o
caminho de callback nulo.

Depois da correcao de tipagem do marcador KCFI, dois builds limpos produziram
o SHA-256 `2eba92f2f3b95b556b19c336b0369e3150080cf0275889b54d864c497b7678b8`.
A comparacao de assembly estrita permanece `0/3`: `tpd_report_uevent` foi
otimizada pelo compilador para uma tabela de saltos, e o shim local de
`__break` preserva um aviso seguro em vez do breakpoint stock. Esses pontos
continuam abertos para revisão de fidelidade.

## Checkpoint Synaptics Config

O lote atual recuperou no Clang/KCFI a assinatura comum de oito funcoes:

```c
int syna_dev_*(struct syna_tcm *tcm, int value,
               unsigned int delay_ms);
```

O type ID stock e candidato agora e `0x1eb3b73d` para:

- `syna_dev_get_frame_data`;
- `syna_dev_set_charger_mode`;
- `syna_dev_set_display_rotation`;
- `syna_dev_set_follow_hand_level`;
- `syna_dev_set_play_game`;
- `syna_dev_set_sensibility_level`;
- `syna_dev_set_stability_level`;
- `syna_dev_set_tp_report_rate`.

O oraculo compilou `768` candidatos e encontrou quatro grafias equivalentes
por typedef, todas normalizadas para a assinatura acima. P-Code, assembly e
call sites confirmam tres argumentos. A comparacao entre checkpoints detectou
exatamente oito mudancas KCFI, todas `MISMATCH -> MATCH`, sem regressao.

## Checkpoint Synaptics Context

O lote seguinte recuperou uma assinatura comum de contexto para oito funcoes:

```c
int syna_context_fn(struct syna_tcm *tcm);
```

O type ID stock e candidato agora e `0xae20471c` para:

- `syna_dev_connect`;
- `syna_dev_disconnect`;
- `syna_dev_set_up_app_fw`;
- `syna_recovery_game_mode_after_reset`;
- `syna_testing_create_dir`;
- `syna_testing_pt01_zte`;
- `syna_testing_pt05_zte`;
- `syna_testing_pt0a_zte`.

O oraculo compilou 140 candidatos e encontrou uma unica assinatura. O assembly
tambem provou que dois `printk` usam somente formato e nome da funcao; os
argumentos extras inferidos pelo decompilador foram removidos. A comparacao
detectou exatamente oito mudancas KCFI, todas `MISMATCH -> MATCH`, sem regressao.

## Checkpoint Synaptics Void Context

O terceiro lote recuperou a assinatura sem retorno de seis rotinas de contexto:

```c
void syna_void_context_fn(struct syna_tcm *tcm);
```

O type ID stock e candidato agora e `0x3175607e` para:

- `syna_cdev_remove`;
- `syna_dev_free_input_events`;
- `syna_sysfs_remove_dir`;
- `syna_testing_remove_dir`;
- `syna_tpd_register_fw_class`;
- `zte_reset_frame_list`.

O oraculo compilou 140 candidatos e encontrou uma unica assinatura. Retornos
inferidos pelo decompilador foram removidos dos corpos reais; os wrappers
`sub_*` preservam sua ABI decompilada e retornam zero depois da chamada tipada.
O assembly stock tambem eliminou seis argumentos varargs fantasmas em chamadas
`printk`. A comparacao entre checkpoints registrou exatamente seis mudancas
KCFI, todas `MISMATCH -> MATCH`, sem regressao.

## Checkpoint Device PM

O quarto lote recuperou a assinatura comum de cinco rotinas de dispositivo:

```c
int syna_device_fn(struct device *dev);
```

O type ID stock e candidato agora e `0x2a703c0b` para:

- `syna_dev_resume`;
- `syna_dev_suspend`;
- `syna_pm_resume`;
- `syna_pm_suspend`;
- `syna_ts_check_dt`.

O oraculo compilou 140 candidatos e encontrou unicamente
`int (struct device *)`. O assembly confirma acesso a `driver_data` em `+0x98`
e ao `of_node` em `+0x2e8`. As relocacoes stock tambem revelaram uma tabela
`syna_dev_pm_ops` ausente no candidato anterior: ela foi restaurada com
`.suspend`/`.resume` em `+0x10/+0x18`, e `syna_dev_driver + 0xa0` agora aponta
para a tabela. A comparacao KCFI registrou cinco melhorias e zero regressao.

## Checkpoint Validadores de Producao

O quinto lote recuperou a assinatura comum dos validadores de dados e limites:

```c
bool syna_testing_bound_fn(void *data, void *limit, int column, int row);
```

O type ID stock e candidato agora e `0xa33285f2` para:

- `syna_tcm_testing_0100_check_data`;
- `syna_tcm_testing_0500_check_lower_bound`;
- `syna_tcm_testing_0500_check_upper_bound`;
- `syna_tcm_testing_0A00_check_lower_bound`;
- `syna_tcm_testing_0A00_check_upper_bound`.

O oracle compilou 770 candidatos e reduziu o resultado a duas grafias
equivalentes (`int`/`s32`). O callsite indireto stock verifica esse mesmo type
ID antes de `blr` e passa ponteiros, coluna e linha em `x0`, `x1`, `w2` e `w3`.
Os quatro diagnosticos de limite tambem voltaram a encaminhar linha, coluna,
valor e limite ao `printk`, como observado no assembly. A comparacao entre
checkpoints detectou exatamente cinco mudancas KCFI e zero regressao.

## Checkpoint TCM Reset e Delay

O sexto lote recuperou a ABI comum das rotinas de reset e temporizacao:

```c
int syna_tcm_delay_fn(struct tcm_dev *tcm, unsigned int delay_ms);
```

O type ID stock e candidato e `0x627e4777` para `syna_tcm_reset`,
`syna_tcm_rezero`, `syna_tcm_erase_mtp_data` e
`syna_tcm_preserve_touch_report_config`. O overlay de `struct tcm_dev` foi
estendido ate `0x23e8` com os callbacks comprovados em `0x3b0`, `0x23d8` e
`0x23e0`. O harness dedicado passou `10/10` contratos offline.

## Checkpoint TCM CS/MTP

O lote atual recuperou a ABI comum das quatro rotinas de dados de flash:

```c
int syna_tcm_flash_data_fn(struct tcm_dev *tcm, char *data,
                           unsigned int length, unsigned int offset,
                           unsigned int delay_mode);
```

O type ID stock e candidato e `0xdd66a5c9` para:

- `syna_tcm_read_cs_data`;
- `syna_tcm_read_mtp_data`;
- `syna_tcm_update_cs_config`;
- `syna_tcm_update_mtp_data`.

O oraculo compilou `1920` candidatos e encontrou 24 grafias C equivalentes da
mesma assinatura. Ponteiro `const`, retorno `void`, `bool` e comprimentos
assinados foram rejeitados pelo KCFI. A comparacao stock detectou exatamente
essas quatro mudancas; os quatro wrappers auxiliares `sub_*`, ausentes do stock,
tambem receberam a ABI correta. O harness direto passou `9/9` contratos, mas os
caminhos de sucesso de leitura e gravacao da flash permanecem nao exercitados.

## Checkpoint TCM Configuracao Estatica

O lote atual recuperou a ABI comum de tres rotinas de configuracao:

```c
int syna_tcm_static_config_fn(struct tcm_dev *tcm, char *config,
                              unsigned int length,
                              unsigned int delay_ms);
```

O type ID stock e candidato e `0x135bb445` para:

- `syna_tcm_get_static_config`;
- `syna_tcm_set_static_config`;
- `syna_tcm_set_touch_report_config`.

O oraculo compilou `800` candidatos e encontrou 12 grafias equivalentes por
aliases `char`/`u8` e `unsigned int`/`u32`. O assembly revelou uma perda
funcional no candidato anterior: `syna_tcm_set_static_config` chamava
`write_message` sem argumentos. A chamada agora encaminha `tcm`, comando
`0x22`, buffer, comprimento, resposta nula e delay, e restaura o delay padrao
de `tcm + 0x20c`. O harness dedicado passou `20/20` contratos offline.

## Checkpoint TCM Ciclo de Vida

O lote seguinte recuperou a assinatura comum de tres funcoes e do callback
armazenado em `struct tcm_dev + 0x3a0`:

```c
void syna_tcm_lifecycle_fn(struct tcm_dev *tcm);
```

O Type ID stock e candidato e `0x9b7e2760` para:

- `syna_tcm_clear_command_processing`;
- `syna_tcm_remove_device`;
- `syna_tcm_v1_terminate`.

O oraculo compilou `30` candidatos e encontrou somente
`void (struct tcm_dev *)`. A correcao removeu dois argumentos residuais das
entradas, tipou o callback de `0x3a0` e passou um unico contexto ao `blr`. O
harness de ciclo de vida passou `11/11`, cobrindo cleanup e completion.

## Resultados Medidos

- Dois builds completamente limpos produziram o mesmo SHA-256
  `647340ba7ca988b83d3f18f20013bc8c0726e765b0a1da83724aeafba9c84ad8`.
- Imports KMI: `152/152`, sem ausentes ou inesperados.
- Aliases, namespaces, vermagic alvo e arquitetura AArch64 ET_REL: PASS.
- Todos os `359` simbolos de texto stock existem no candidato.
- O candidato possui `151` simbolos de texto adicionais classificados: 131
  subrotinas do decompilador, 9 duplicatas renomeadas, 2 wrappers de assinatura
  e 9 helpers diversos.
- Superficie KCFI integral: `299/322` matches, `23` divergencias, zero registro
  candidato ausente e `46` preambulos stock excluidos para revisao separada.
- Harnesses do Next13: `24/24` casos por repeticao, duas repeticoes ASAN/UBSAN.
- Harness Next14: `10/10` casos por repeticao, duas repeticoes ASAN/UBSAN,
  incluindo `1.024` combinacoes validas por execucao.
- Harness Next15: `10/10` casos por repeticao, duas repeticoes ASAN/UBSAN,
  cobrindo o ciclo request/update/log/release.
- Microtarefas: `155 PASS`, `212 READY`, uma promocao nova no Next15 e zero
  PASS obsoleto.
- Decomposicao: pseudocodigo, P-Code e assembly presentes para `367/367`.
- Suite focal das ferramentas relacionadas: `48/48 PASS`.
- Suite global do pipeline: `136/136 PASS`.
- O hash obsoleto do config userdebug em `environment.lock.json` foi corrigido
  contra o arquivo rastreado e a auditoria de observabilidade voltou a PASS.

## Evidencia Autoritativa

- `../../validation/zte_tpd/driver_audit_static_final.json`
- `../../validation/zte_tpd/driver_audit_kcfi_syna_dev_config.json`
- `../../validation/zte_tpd/driver_audit_kcfi_syna_context.json`
- `../../validation/zte_tpd/driver_audit_kcfi_syna_void_context.json`
- `../../validation/zte_tpd/driver_audit_kcfi_device_pm.json`
- `../../validation/zte_tpd/driver_audit_kcfi_testing_bound.json`
- `../../validation/zte_tpd/driver_audit_kcfi_tcm_delay.json`
- `../../validation/zte_tpd/driver_audit_kcfi_tcm_flash_data.json`
- `../../validation/zte_tpd/driver_audit_kcfi_tcm_static_config.json`
- `../../validation/zte_tpd/driver_audit_kcfi_tcm_lifecycle.json`
- `../../validation/zte_tpd/offline_reconstruction_audit.json`
- `../../validation/zte_tpd/header_layout_probe.json`
- `../../validation/zte_tpd/abi_validation.json`
- `../../validation/zte_tpd/kcfi_direct_surface_final_comparison.json`
- `../../validation/zte_tpd/kcfi_full_surface.json`
- `../../validation/zte_tpd/kcfi_callback_families.json`
- `../../validation/zte_tpd/driver_audit_kcfi_syna_report_dispatch.json`
- `../../validation/zte_tpd/report_dispatch_harness_report.json`
- `../../validation/zte_tpd/driver_audit_kcfi_syna_control_value_v2.json`
- `../../validation/zte_tpd/control_value_harness_report.json`
- `../../validation/zte_tpd/assembly_comparison_syna_control_value_final.json`
- `../../validation/zte_tpd/signature_oracles/syna_control_value_kcfi_candidates.json`
- `../../validation/zte_tpd/microtask_progress.json`
- `../../validation/zte_tpd/module_decomposition_audit.json`
- `../../validation/zte_tpd/parity_report.json`
- `../../validation/zte_tpd/signature_oracles/syna_dev_config_kcfi_report.json`
- `../../validation/zte_tpd/signature_oracles/syna_context_kcfi_report.json`
- `../../validation/zte_tpd/signature_oracles/syna_void_context_kcfi_report.json`
- `../../validation/zte_tpd/signature_oracles/syna_device_pm_kcfi_report.json`
- `../../validation/zte_tpd/signature_oracles/syna_device_pm_relocation_audit.json`
- `../../validation/zte_tpd/signature_oracles/testing_bound_callback_kcfi_report.json`
- `../../validation/zte_tpd/signature_oracles/tcm_delay_kcfi_report.json`
- `../../validation/zte_tpd/signature_oracles/tcm_flash_data_kcfi_report.json`
- `../../validation/zte_tpd/signature_oracles/tcm_static_config_kcfi_report.json`
- `../../validation/zte_tpd/signature_oracles/tcm_lifecycle_kcfi_report.json`
- `reconstruction_map.json`
- `MICROTASKS.json`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT15_REFLASH_VALIDATION_20260722.md`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT17_IOCTL_VALIDATION_20260722.md`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT14_TOUCH_DATA_VALIDATION_20260722.md`
- `../../../reverse_engineering/validation/reconstructed/zte_tpd/NEXT13_FIRMWARE_LIFECYCLE_VALIDATION_20260719.md`

Nenhum comando ADB, fastboot, `insmod`, `rmmod` ou escrita de particao foi
executado nesta revisao.
