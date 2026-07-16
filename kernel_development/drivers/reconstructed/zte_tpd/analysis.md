# Analise de Engenharia Reversa - `zte_tpd`

## Escopo e Fonte da Verdade

Esta analise usa exclusivamente o `zte_tpd.ko` extraido do NX809J, seus exports
Ghidra locais, pseudocodigo, P-Code, assembly, relocacoes, strings, KCFI e os
headers da arvore GKI 6.12.23 configurada. Codigo de driver publicado na Internet
nao foi usado como referencia de comportamento do NX809J.

O modulo integra o touch ZTE com o transporte Synaptics TCM, SPI, input, sysfs,
eventos de tela e caminhos de impressao digital. Essa amplitude torna a
equivalencia funcional muito mais exigente que a simples compilacao do `.ko`.

## Reconstrucao Estatica Comprovada

- O Ghidra identificou `367` funcoes stock.
- O mapa final vincula cada identidade `nome@endereco` a fonte, pseudocodigo,
  P-Code e assembly hashados.
- Os `359` simbolos de texto stock estao presentes no candidato.
- Os imports KMI sao exatamente `152/152`.
- Dois builds limpos produziram o candidato canonico
  `24513b1187c4b7ad60411a66552a1905ac15408350407f595fde9a41d127f5e6`.
- Cinquenta fronteiras indiretas selecionadas possuem o mesmo type ID KCFI do
  stock.

O mapa e classificado como `structural_identity_only`. Ele nao converte
automaticamente rastreabilidade em equivalencia semantica.

## Platform Device e Callback Release

A revisao anterior afirmava que o stock deveria ser substituido por um platform
device dinamico e que a chamada direta de `dev.release` deveria virar
`platform_device_put()`. A evidencia binaria atual demonstrou que essa afirmacao
nao reproduzia o stock.

Fatos medidos no ELF e assembly:

- `syna_spi_device` e um objeto local de `1008` bytes (`0x3f0`);
- a relocacao para `syna_spi_release` esta no offset `+0x338` do objeto;
- os headers GKI compilados confirmam `platform_device.dev = 0x10` e
  `device.release = 0x328`;
- o stock usa `platform_device_register(&syna_spi_device)`;
- no erro de `platform_device_add`, o stock verifica KCFI `0x6c81b8c8` e chama
  `pdev->dev.release(&pdev->dev)`;
- o teardown usa `platform_device_unregister()`.

O candidato atual reproduz esse contrato tipado. Os imports artificiais
`platform_device_register_full` e `platform_device_put` foram eliminados.

## Layout TCM Parcial

O header `zte_tpd_tcm_layout.h` contem apenas offsets sustentados por evidencia
local e usa padding explicito:

- `firmware_mode`: `0x09`;
- `transport`: `0x48`;
- `command_delay_ms`: `0x20c`;
- `write_message`: `0x398`;
- tamanho minimo do overlay atual: `0x3a0`.

O probe `probes/layout_probe.c` compila esses offsets junto com o layout do
platform device no Clang Android `r536225`. Isso prova consistencia de ABI com os
headers configurados, mas nao comportamento eletrico.

## Cobertura Dinamica Offline

Os tres harnesses locais exercitam diretamente 38 funcoes distintas e registram
27 testes PASS. O lote atual acrescenta 26 callbacks de firmware/estado e usa
ASan/UBSan para verificar offsets, limites, ramos ativo/inativo e retornos. Os
harnesses usam stubs controlados e nao reproduzem IRQ real, temporizacao do
scheduler, SPI fisico, energia, display ou suspend/resume do aparelho.

A superficie KCFI diretamente verificada cresceu de 14 para 50 funcoes. Quatro
familias foram integralmente corrigidas: 18 getters, 15 setters inteiros, o
setter `u8` de sensibilidade e duas callbacks de texto. Os oraculos das familias
proc read/write, workqueue e `void(void)` ja foram resolvidos, mas seus corpos
ainda nao foram promovidos neste checkpoint.

O manifesto agora possui 38 microtarefas `PASS`, cada uma com hashes de build,
KCFI e teste, e 329 tarefas `READY_FOR_IMPLEMENTATION`. Por isso o driver nao
pode ser chamado de `100%`.

## Registros Historicos de Hardware

Logs antigos de crash, watchdog e retorno do touch sao material de diagnostico,
mas nao atestam o SHA atual. Em especial, alegacoes anteriores de estabilidade
"100%" e de necessidade do platform device dinamico foram retiradas por conflito
com o ELF stock. Qualquer validacao futura deve registrar hash do candidato,
janela temporal, logs completos e rollback controlado.

## Conclusao Atual

O `zte_tpd` e um candidato estaticamente verificavel, reprodutivel e alinhado na
superficie KMI observada. O protocolo offline esta em `8/10`: faltam cobertura
direta das microtarefas e revisao independente. Hardware permanece adiado.
