# Estimativa de Tempo para Reconstrucao Completa

**Dispositivo:** REDMAGIC 11 Pro+ (NX809J)
**Base:** Android 16 / GKI `6.12.23-android16`
**Data da estimativa:** 2026-08-01
**Escopo:** reconstrucao dos drivers identificados na ROM local, com Ghidra,
Assembly, P-Code, Joern, builds canonicos, KCFI/KMI, harness e validacao de
hardware separada.

## 1. Resposta curta

Para concluir o programa atualmente inventariado de forma profissional, a
estimativa inicial e:

| Marco | Esforco estimado | Um engenheiro, 30 h produtivas/semana |
|---|---:|---:|
| Todos os modulos como `STATIC_ALIGNED_CANDIDATE` | **2.200 a 4.800 horas** | **17 a 37 meses** |
| Validacao controlada no aparelho e estabilizacao | **1.200 a 3.200 horas adicionais** | **9 a 25 meses adicionais** |
| Programa completo, com os cenarios observaveis registrados | **3.400 a 8.000 horas** | **26 a 62 meses** |

Estas sao horas equivalentes de engenharia, nao tempo de CPU. Docker, Ghidra
headless e Joern reduzem o tempo mecanico, mas nao eliminam a revisao de
evidencia, o isolamento de efeitos, a correcao de offsets, a verificacao ABI e
os testes com rollback.

Uma equipe com dois engenheiros seniores pode paralelizar aquisicao, funcoes
independentes e harnesses, mas os caminhos de boot, energia, DRM, touch,
seguranca e dependencia entre modulos continuam parcialmente seriais. Dobrar a
equipe nao reduz o calendario pela metade; uma reducao realista e de 35% a
45%, desde que todos usem o mesmo evidence lock.

## 2. O que foi contado

Os valores foram derivados de artefatos locais, e nao de dados da Internet ou
de uma semelhanca com outro aparelho:

| Medida atual | Valor | Fonte local |
|---|---:|---|
| Modulos no inventario de dependencias | 28 | `CUSTOM_DRIVER_DEPENDENCY_STATUS.json` |
| Funcoes Ghidra mapeadas no inventario | 718 | `CUSTOM_DRIVER_DEPENDENCY_STATUS.json` |
| Modulos ZTE/Nubia com candidato parcial | 16 | `CUSTOM_DRIVER_DEPENDENCY_STATUS.json` |
| Funcoes desses 16 modulos | 688 | `CUSTOM_DRIVER_DEPENDENCY_STATUS.json` |
| Modulos ainda `NOT_STARTED` | 11 | `CUSTOM_DRIVER_DEPENDENCY_STATUS.json` |
| Funcoes de `zte_tpd` | 367 | inventario e mapa de reconstrucao do driver |
| Microtarefas `zte_tpd` promovidas | 146 | `microtask_progress.json` |
| Microtarefas `zte_tpd` restantes | 221 | `microtask_progress.json` |
| Drivers no manifesto de status ainda `INCOMPLETE` | 13 | `STATUS_MANIFEST.json` |
| Drivers declarados `STATIC_ALIGNED_CANDIDATE` | 0 | `STATUS_MANIFEST.json` |
| Validacao de hardware | `DEFERRED` | `STATUS_MANIFEST.json` |

Os dois inventarios possuem escopos diferentes: o manifesto de status acompanha
13 drivers publicos no momento, enquanto o inventario de dependencias registra
28 modulos, incluindo revisao de fornecedores e itens que ainda nao possuem
evidencia publicada. Portanto, usar apenas "13 drivers" subestimaria o
trabalho; usar apenas "28 modulos" esconderia que nem todos tem a mesma
profundidade de analise.

## 3. O que "completa" significa

O programa possui tres marcos distintos. Eles nao devem ser misturados em uma
porcentagem unica.

| Marco | O que prova | O que ainda nao prova |
|---|---|---|
| `MAPPED` | Cada funcao stock tem identidade, Assembly, P-Code e destino no C candidato | Que o candidato compila ou preserva o comportamento |
| `STATIC_ALIGNED_CANDIDATE` | Joern, dois builds limpos, KCFI/KMI, ELF, Assembly/P-Code, harness aplicavel e revisao passam com os hashes corretos | Que o hardware respondeu igual em todos os estados fisicos |
| `HARDWARE_VALIDATED` | Cenarios autorizados no telefone, logs, identidade do candidato e rollback foram observados | Cobertura eletrica absoluta sem datasheet ou instrumentacao adicional |

Sem datasheet confidencial, telemetria de barramento e testes dinamicos, nao e
honesto afirmar que um driver de MMIO, alimentacao, touch ou camera esta
"100% identico" apenas pelo C descompilado. O resultado maximo da etapa offline
e `STATIC_ALIGNED_CANDIDATE`. A etapa de hardware pode provar somente os
cenarios realmente executados e registrados.

## 4. Modelo de esforco

Cada microtarefa passa pelo ciclo obrigatorio abaixo. A estimativa inclui
retrabalho quando uma camada contradiz a hipotese inicial.

1. Custodia do `.ko` stock, hash e identificacao `funcao@endereco`.
2. Export completo do Ghidra: pseudocodigo, P-Code, Assembly, chamadas, dados e
   referencias.
3. Mapa de reconstrucao, contratos de dados, offsets, locks, callbacks e
   limites de ownership.
4. Implementacao C/H minima, com o mesmo toolchain e configuracao do alvo.
5. Gate Joern em fonte canonica e view de analise separada.
6. Dois builds limpos independentes no Docker.
7. Comparacao de simbolos, relocacoes, KCFI/KMI, fluxo Assembly/P-Code e
   justificativa para todo delta remanescente.
8. Harness de logica e testes negativos quando o contrato puder ser isolado.
9. Evidence lock, revisao independente e commit pequeno, rastreavel e
   reproduzivel.
10. Depois da autorizacao do dispositivo: plano de rollback, ensaio controlado,
    logs e veredito de hardware.

### Faixa por tipo de funcao

| Classe | Exemplos | Horas por microtarefa offline |
|---|---|---:|
| Baixa | getter, setter, wrapper, rotina de limpeza sem estado | 1 a 4 |
| Media | sysfs/proc, callback simples, workqueue, parser limitado | 4 a 12 |
| Alta | ioctl, netlink, KCFI, concorrencia, buffer complexo, cadeia de callbacks | 12 a 40 |
| Critica | probe/remove, alimentacao, touch report, firmware, IRQ, MMIO ou boot | 40 a 120+ |

O `zte_tpd` nao deve ser calculado pela media simples de 367 funcoes. Ele possui
cadeias de touch, firmware, DRM/panel notifier, workqueues, KCFI, estados de
energia e 221 microtarefas ainda abertas. Por isso ele recebe uma reserva de
risco propria.

## 5. Decomposicao da estimativa

| Frente | Escopo atual | Static aligned | Hardware e estabilizacao |
|---|---|---:|---:|
| Custodia, inventario e publicacao de evidencias ausentes | 11 modulos nao iniciados e lacunas de stock/export | 160 a 360 h | 0 h |
| Drivers pequenos e wrappers | getters, reboot, stats, imem, sensores, misc e zlog | 280 a 620 h | 120 a 280 h |
| Drivers medios | LED, IR, GPIO keys, fingerprint e charger policy | 420 a 900 h | 260 a 620 h |
| Energia, ABI e dependencias cruzadas | power supply, namespaces, modversions, KCFI e regressao | 260 a 620 h | 220 a 540 h |
| `zte_tpd` | 367 funcoes; 221 microtarefas restantes | 900 a 1.900 h | 420 a 1.100 h |
| Integracao, revisao e reexecucao independente | evidence locks, CI local, reproducao e documentacao | 180 a 400 h | 180 a 660 h |
| **Total** | 28 modulos inventariados | **2.200 a 4.800 h** | **1.200 a 3.200 h** |

As faixas nao devem ser somadas a um unico numero "exato". Elas representam
incerteza real causada por informacao removida pelo compilador, estruturas sem
headers originais, comportamento de MMIO sem datasheet e caminhos que so se
manifestam em hardware.

## 6. Calendario por capacidade

| Capacidade sustentada | Static aligned | Completo com hardware |
|---|---:|---:|
| 1 engenheiro senior, 30 h/semana | 17 a 37 meses | 26 a 62 meses |
| 2 engenheiros seniores, 50 h/semana efetivas | 10 a 22 meses | 15 a 37 meses |
| 3 engenheiros seniores, 75 h/semana efetivas | 7 a 15 meses | 11 a 25 meses |

Esses calendarios exigem que o ambiente Docker, os artefatos stock, a ROM
userdebug, o Ghidra headless, Joern e o telefone de teste permanecam
disponiveis. Bloqueios de boot, falta de um `.ko` stock, mudanca da ROM ou
incompatibilidade de toolchain suspendem a previsao ate que sejam medidos.

## 7. Recalibracao obrigatoria

Esta e uma previsao inicial, nao um contrato de prazo. Ela deve ser recalculada
depois de cada lote de 20 microtarefas `STATIC_ATTESTED` e depois de cada driver
que chega a `HARDWARE_VALIDATED`.

Use a taxa observada, nao otimismo:

```text
taxa_observada = horas_registradas / microtarefas_promovidas
previsao_restante = taxa_observada_por_classe * microtarefas_restantes
reserva_de_risco = previsao_restante * 30% a 60%
```

O lote somente entra no calculo quando todos os seus evidence locks apontam
para o mesmo stock, fonte, container, mapa e consulta Joern. Tarefas apenas
compiladas, com Joern isolado, ou sem comparacao de Assembly nao contam como
promovidas.

## 8. Criterio para encerrar a estimativa

O trabalho nao deve ser dado como encerrado porque todos os fontes existem ou
porque o telefone inicializa. O criterio e:

- nenhum modulo do inventario em `NOT_STARTED`, `BLOCKED`, `REJECTED` ou
  `STALE` sem justificativa formal;
- todas as microtarefas requeridas em `STATIC_ATTESTED`, com os gates atuais
  reexecutaveis;
- KMI, namespace, modversion, KCFI, relocacoes e dependencias cruzadas
  verificados contra o stock correspondente;
- harnesses e testes de regressao registrados para cada contrato isolavel;
- hardware validado por cenarios controlados para os drivers que interagem com
  dispositivo fisico;
- cada commit contendo fonte, script de reproducao e prova da esteira local.

Enquanto qualquer item acima faltar, a palavra correta e `INCOMPLETE`, mesmo
que haja um `.ko` candidato e um boot aparente.

## 9. Referencias locais

- `STATUS_MANIFEST.json`
- `reverse_engineering/validation/CUSTOM_DRIVER_DEPENDENCY_STATUS.json`
- `reverse_engineering/validation/reconstructed/zte_tpd/microtask_progress.json`
- `reverse_engineering/docs/RECONSTRUCTION_EVIDENCE_STANDARD.md`
- `workspace_tools/reconstruction_pipeline/LLM_MANDATORY_RECONSTRUCTION_CYCLE.md`
