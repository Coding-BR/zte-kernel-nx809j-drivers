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
  `34877123f6b30268189d3bbaf3e849cc78311941ceb558ce64b5737e425183bd`.
- A superficie selecionada possui `167/167` funcoes com o mesmo type ID KCFI e
  secao ELF do stock; nela, as oito familias recuperadas somam `143/143`.
- Na superficie integral recuperavel, `242/322` funcoes possuem o mesmo Type ID
  KCFI; restam `80` assinaturas divergentes e nenhuma funcao candidata ausente.

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
- `reset_callback`: `0x3b0`;
- `post_reset_context`: `0x23d8`;
- `post_reset_callback`: `0x23e0`;
- tamanho minimo comprovado do overlay atual: `0x23e8`.

O probe `probes/layout_probe.c` compila esses offsets junto com o layout do
platform device no Clang Android `r536225`. Isso prova consistencia de ABI com os
headers configurados, mas nao comportamento eletrico.

## Cobertura Dinamica Offline

Os dez harnesses locais registram `106` casos PASS. Eles cobrem callbacks de
firmware, proc feature/scalar/special, work/void, zlog, validadores restantes e
as rotinas TCM de reset/delay, dados CS/MTP e configuracao estatica. O harness
mais recente verifica a ABI comum
`int (struct tcm_dev *, char *, unsigned int, unsigned int)` e exercita os seis
argumentos de `write_message`, delays explicito/default/suprimido, copia de
resposta, limites, alocacao, falhas e cleanup. Transporte SPI e resposta real do
firmware permanecem fora do teste host.

Os harnesses usam stubs controlados e nao reproduzem IRQ real, temporizacao do
scheduler, SPI fisico, energia, display ou suspend/resume do aparelho. O
manifesto possui `139` microtarefas `PASS`, cada uma com hashes de build, KCFI e
teste, e `228` tarefas `READY_FOR_IMPLEMENTATION`. Por isso o driver nao pode ser
chamado de `100%`.

## Registros Historicos de Hardware

Logs antigos de crash, watchdog e retorno do touch sao material de diagnostico,
mas nao atestam o SHA atual. Em especial, alegacoes anteriores de estabilidade
"100%" e de necessidade do platform device dinamico foram retiradas por conflito
com o ELF stock. Qualquer validacao futura deve registrar hash do candidato,
janela temporal, logs completos e rollback controlado.

## Conclusao Atual

O `zte_tpd` e um candidato estaticamente verificavel, reprodutivel e alinhado na
superficie KMI observada. A auditoria offline permanece `INCOMPLETE`: faltam 228
microtarefas com teste direto, 80 assinaturas KCFI, revisao independente e a
validacao controlada em hardware.
