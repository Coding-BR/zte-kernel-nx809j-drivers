# Dossie Reverso de Hardware do NX809J

## 1. Identidade e finalidade

Este dossie documenta o hardware necessario para reconstruir os drivers do
**NX809J, REDMAGIC 11 Pro+**, sem fingir que possuimos datasheets confidenciais.
Ele e um registro de evidencias tecnicas, nao um manual eletrico oficial.

Durante a fase offline, todo dado deve vir de imagens, DTB/DTBO, firmware,
modulos stock e analise local. A coleta no smartphone fica adiada e sera
adicionada em uma fase dinamica controlada.

## 2. Classes obrigatorias de evidencia

Toda linha do dossie deve usar uma destas classes:

| Classe | Significado | Pode orientar codigo? |
|---|---|---|
| `OBSERVED` | O valor aparece diretamente em artefato local identificado por hash. | Sim, dentro do contexto observado. |
| `DERIVED` | O valor resulta de transformacao deterministica, como DTB para DTS ou endereco relativo calculado. | Sim, com comando e entradas registrados. |
| `INFERRED` | Mais de uma evidencia sustenta uma hipotese, mas a semantica nao e unica. | Somente com guardas e marcador de incerteza. |
| `UNKNOWN` | Nao existe evidencia suficiente. | Nao. Bloqueia nomes semanticos e teste fisico correspondente. |

Termos como “reset”, “power”, “enable”, “temperatura” ou “corrente” nao podem
ser atribuidos a um bit apenas porque parecem plausiveis. O nome deve vir de
string stock, propriedade DT, protocolo conhecido no proprio artefato ou efeito
dinamico posteriormente medido.

## 3. Fontes locais aceitas

| Fonte | Informacao recuperavel | Limite |
|---|---|---|
| `.ko` stock | funcoes, imports, relocacoes, constantes, largura e ordem dos acessos | semantica de campos pode faltar |
| DTB/DTBO | compatibles, `reg`, interrupts, GPIOs, clocks, supplies, pinctrl e propriedades vendor | valores podem depender de overlays e phandles |
| firmware local | headers, tabelas, comandos e strings | protocolo pode continuar parcialmente opaco |
| boot/vendor_boot/vendor_dlkm | ordem de carga, aliases, parametros e dependencias | nao prova efeito fisico |
| Kernel 6.12.23 local | tipos e contratos das APIs genericas | nao descreve periferico NX809J |
| Ghidra/P-Code | fluxo, expressoes de endereco, objetos e chamadas | tipos e nomes inferidos podem estar errados |
| Assembly/relocacoes | comportamento executado e alvos relocados | nao fornece intencao original |

Pesquisa publica sobre o NX809J nao e fonte de verdade. Documentacao generica
de uma API do Kernel pode ser citada separadamente, com a classe
`GENERIC_REFERENCE`, nunca como prova do aparelho.

## 4. Inventario inicial de modulos

O inventario abaixo descreve apenas artefatos locais ja presentes no workspace.
Ele nao afirma que a lista representa todo o hardware do aparelho.

| Modulo stock | Dominio aparente | Proxima evidencia obrigatoria |
|---|---|---|
| `zte_tpd.ko` | entrada/touch | DT completo, firmware, mapas de mensagens, offsets e sequencias SPI |
| `zte_fingerprint.ko` | biometria | compatible, bus, GPIO/pinctrl, IRQ, ABI ioctl/netlink e painel |
| `zte_led.ko` | iluminacao | no DT, bus, largura de registrador, firmware/config e tabela de efeitos |
| `zte_ir.ko` | infravermelho | no DT, SPI, reguladores/GPIOs, framing e ordem de I/O |
| `zte_power_supply.ko` | power-supply | grafo de supplies, propriedades, unidades, locks e notificadores |
| `zte_charger_policy.ko` | politica de carga | dependencias, limites, estados, timers e propriedades DT |
| `zte_sensor_sensitivity.ko` | sensores | interfaces sysfs/IIO, escalas, unidades e dependencia do sensor real |
| `zte_misc.ko` | servicos vendor | callbacks, ADC/NVMEM/DT e consumidores |
| `zte_reboot_ext.ko` | reboot/NVMEM | celulas NVMEM, formatos persistidos, notifiers e panic path |
| `zte_ramdisk_reboot.ko` | reboot/ramdisk | ABI, gatilhos e persistencia observada |
| `zte_imem_info.ko` | memoria/informacao | layout IMEM, recursos DT e formato exposto |
| `zte_stats_info.ko` | telemetria/netlink | familias, atributos, politicas e lifetime |
| `nubia_hw_version.ko` | identificacao de placa | ADC/DT, faixas, unidades e API exportada |
| `gpio_keys_nubia.ko` | teclas/GPIO | no DT, keycodes, debounce, wakeup e IRQ |

“Dominio aparente” serve para organizar a investigacao. Nao substitui a prova
por artefato.

## 5. Extracao offline do Device Tree

Priorize DTB/DTBO extraidos das imagens locais. Preserve primeiro o original e
seu hash. Nunca edite o binario de aquisicao.

Fluxo:

1. Localize DTB/DTBO em `boot`, `vendor_boot`, `dtbo` ou artefatos de build.
2. Registre particao/imagem, offset, tamanho e SHA-256.
3. Separe cada FDT sem reserializar o original.
4. Converta uma copia com `dtc -I dtb -O dts`.
5. Aplique overlays na mesma ordem da imagem quando essa ordem estiver
   documentada.
6. Resolva phandles e gere uma visao por consumidor.
7. Cruze `compatible` e aliases com `.modinfo` e tabelas relocadas do `.ko`.

Para cada no relevante, registre:

```text
node_path
compatible[]
status
reg[] e address/size-cells herdados
interrupt-parent, interrupts e interrupt-names
gpios e nomes das propriedades
clocks/clock-names
resets/reset-names
*-supply
pinctrl-names e estados
dmas/dma-names
iommus
firmware-name
propriedades vendor brutas
arquivo DTB/DTBO, offset e SHA-256
```

Um no nao localizado deve permanecer `UNKNOWN`; nao copie um DTS de outro
modelo.

## 6. Reconstrucao de bases e registradores

### 6.1 Primeiro identifique a base

Antes de chamar um offset de registrador, rastreie a origem da base:

- `devm_ioremap_resource` ou `ioremap`: candidato a MMIO;
- `regmap_read/write`: offset logico do regmap;
- `spi_sync`, `spi_write`, `i2c_transfer`: byte de protocolo, nao endereco MMIO;
- ponteiro retornado por `kmalloc`: estrutura/buffer, nao registrador;
- `dma_alloc_*`: memoria compartilhada/DMA;
- campo de `drvdata`: pode conter qualquer uma das bases anteriores.

### 6.2 Ledger obrigatorio

Cada acesso deve virar uma linha:

| ID | Driver/funcao | Base e proveniencia | Offset | Largura | Operacao | Valor/mask | Ordem/barrier | Evidencia | Classe | Semantica |
|---|---|---|---:|---:|---|---|---|---|---|---|
| exemplo | `driver/fn` | arg0 -> `drvdata+0x20` | `0x14` | 32 | read-modify-write | `mask 0x4` | `wmb` depois | asm+pcode+reloc | `OBSERVED` | `UNKNOWN` |

O campo semantica pode continuar `UNKNOWN` mesmo quando offset e largura sao
`OBSERVED`. Isso e um resultado valido e mais seguro que um nome inventado.

### 6.3 Sequencias, nao apenas offsets

Registre tambem:

- ordem exata de reads/writes;
- delays e unidade (`us`, `ms`, jiffies);
- retries, timeout e condicao de saida;
- endianness e largura do acesso;
- masks, shifts e valores preservados;
- barriers, locks e contexto IRQ;
- condicoes de power/reset/clock anteriores ao acesso;
- cleanup quando uma etapa intermediaria falha.

Para muitos perifericos, a sequencia e mais importante que o significado
isolado de um registrador.

## 7. Reconstrucao de estruturas

Crie uma matriz de restricoes por objeto:

| Objeto | Tamanho minimo observado | Offset | Largura/tipo candidato | Acessos | Owner | Lock | Confianca |
|---|---:|---:|---|---|---|---|---|

Regras:

1. O maior acesso define apenas um tamanho minimo.
2. Acesso de 64 bits alinhado sugere, mas nao prova, ponteiro ou `u64`.
3. Relocacao para tabela do kernel pode provar o tipo do callback.
4. `container_of` pode ser recuperado pelo deslocamento subtraido.
5. Array e stride devem ser confirmados por mais de uma iteracao/callsite.
6. Campos nunca acessados nao podem ser recuperados unicamente.
7. Use `static_assert(sizeof(...))` e `static_assert(offsetof(...))` somente para
   restricoes comprovadas.
8. O layout deve considerar AArch64, configuracao real e headers do kernel
   alvo; nao use tamanhos memorizados de outra versao.

## 8. Protocolos SPI/I2C e firmware

Quando o driver monta buffers em vez de usar MMIO, gere um ledger de protocolo:

| Comando | Bytes TX | Bytes RX | Endianness | CRC/checksum | Timeout | Callers | Significado |
|---|---|---|---|---|---|---|---|

Marque campos constantes e variaveis byte a byte. Compare todos os callsites e
strings. Nao atribua comandos a funcoes eletricas sem evidencia. Firmware deve
ser tratado como entrada versionada e hashada, nunca embutido silenciosamente
no fonte reconstruido.

## 9. ABI externa do driver

O dossie de cada modulo deve conter:

- `compatible`, aliases e ordem de probe;
- `/dev`, major/minor ou miscdevice;
- ioctls com numero, direcao, tamanho e layout;
- sysfs/procfs/debugfs, permissoes e formato;
- netlink family, version, commands, attributes e policies;
- input events, keycodes e propriedades;
- power_supply/IIO/LED class contracts;
- exports para outros modulos e namespaces;
- strings consumidas por init, HAL ou scripts locais.

Isso pode ser validado offline com ELF, callsites, harness e binarios de
userspace locais quando disponiveis.

## 10. Ficha por componente

Crie um arquivo por componente com este modelo:

```markdown
# <componente>

## Identidade
- Modulo stock:
- SHA-256:
- DT nodes:
- Firmware:
- Kernel/toolchain:

## Contratos observados
- Bus e recursos:
- ABI userspace:
- Dependencias de kernel/modulos:

## Layouts
- Estruturas:
- Bases:
- Registradores/protocolo:

## Sequencias
- Probe:
- I/O normal:
- Suspend/resume:
- Remove/erro:

## Evidencias
| Afirmacao | Classe | Artefato | Funcao/endereco | Hash |

## Desconhecidos e riscos
- UNKNOWN:
- Teste dinamico necessario:
```

## 11. O que a ausencia de datasheet bloqueia

Sem datasheet ou medicao fisica, nao declare como comprovados:

- significado eletrico definitivo de bits desconhecidos;
- limites absolutos de tensao, corrente, temperatura ou frequencia;
- timing maximo/minimo permitido pelo componente;
- comportamento fora das sequencias presentes no stock;
- side effects nao lidos pelo software;
- seguranca de comandos nunca executados pelo stock;
- equivalencia entre um modelo QEMU e o periferico real.

Ainda e possivel reconstruir fielmente a sequencia que o stock executa e
preservar seus contratos observaveis. O candidato deve evitar extrapolar alem
dessa sequencia ate a validacao em hardware.

## 12. Atualizacao futura com o aparelho

Quando o smartphone voltar a ser usado, adicione dados somente leitura primeiro:

- DT efetivamente aplicado;
- resources, IRQs, clocks, regulators e pinctrl em runtime;
- bind, driver e modalias;
- regmap/debugfs apenas quando a leitura for segura;
- tracepoints, ftrace e logs;
- versoes de firmware e estados antes/depois.

Cada coleta deve registrar comando, horario, serial anonimizado, kernel,
fingerprint, hash do log e efeito esperado. Escritas MMIO arbitrarias, flash e
testes de energia ficam proibidos fora de um protocolo especifico com rollback.
