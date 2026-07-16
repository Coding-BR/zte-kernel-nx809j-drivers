# Documento de Transicao - `zte_tpd` / NX809J

Stock vinculado: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
Candidato vinculado: `24513b1187c4b7ad60411a66552a1905ac15408350407f595fde9a41d127f5e6`

## 1. Mapeamento de Assinaturas (Conformidade GKI 6.12.23)

O modulo e out-of-tree para `vendor_dlkm`. A superficie KMI atual possui
exatamente os mesmos 152 imports do stock. Stock e candidato nao declaram
`import_ns`; portanto, nenhuma `MODULE_IMPORT_NS()` esta comprovadamente
necessaria nesta revisao. Nenhum Vendor Hook deve ser adicionado sem uma nova
chamada stock que exija acesso a estrutura interna.

Assinaturas GKI obrigatorias nas fronteiras registradas:

```c
int zte_touch_probe(struct platform_device *pdev);
int zte_touch_remove(struct platform_device *pdev);
void zte_touch_shutdown(struct platform_device *pdev);

int syna_dev_probe(struct platform_device *pdev);
int syna_dev_remove(struct platform_device *pdev);
void syna_dev_shutdown(struct platform_device *pdev);

int syna_spi_probe(struct spi_device *spi);
void syna_spi_remove(struct spi_device *spi);
void syna_spi_release(struct device *dev);

irqreturn_t syna_dev_isr(int irq, void *data);

int syna_open(struct inode *inode, struct file *file);
int syna_release(struct inode *inode, struct file *file);
__poll_t syna_poll(struct file *file, struct poll_table_struct *wait);
long syna_ioctl(struct file *file, unsigned int cmd, unsigned long arg);
int syna_mmap(struct file *file, struct vm_area_struct *vma);
```

Os registros correspondentes devem manter os tipos nativos:

```c
static const struct platform_driver zte_touch_device_driver;
static const struct platform_driver syna_dev_driver;
static const struct spi_driver syna_spi_driver;
static const struct file_operations zte_fops;
```

O candidato ainda usa wrappers tipados em varias fronteiras porque as unidades
decompiladas conservam assinaturas sinteticas `__int64`. Esses wrappers sao uma
etapa de compatibilidade CFI, nao prova de assinatura interna. Cada wrapper so
pode ser removido depois da microtarefa da funcao alvo comparar P-Code,
assembly, KCFI e todos os call sites.

O callback `syna_spi_release` e uma excecao fechada: stock e candidato usam
`void (struct device *)`, secao `.text`, tamanho 44 e KCFI `0x6c81b8c8`.

## 2. Estrutura de Dados Estrita e Offsets (Arquivos .h)

O layout abaixo contem somente campos sustentados pelo ELF stock e pelo probe
compilado contra os headers GKI configurados. Nao substitua padding por campos
supostos e nao use `__packed`.

```c
/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZTE_TPD_TCM_LAYOUT_H
#define _ZTE_TPD_TCM_LAYOUT_H

struct tcm_dev;

typedef int (*tcm_write_message_fn)(struct tcm_dev *tcm, u8 command,
                                    u8 *payload, u32 length,
                                    u8 *response_code, u32 delay_ms);

struct tcm_transport_overlay {
        u8 reserved_0000[0x14];
        u8 flags;
};

struct tcm_dev {
        u8 reserved_0000[0x09];
        u8 firmware_mode;
        u8 reserved_000a[0x3e];
        struct tcm_transport_overlay *transport;
        u8 reserved_0050[0x1bc];
        u32 command_delay_ms;
        u8 reserved_0210[0x188];
        tcm_write_message_fn write_message;
};

static_assert(offsetof(struct tcm_dev, firmware_mode) == 0x09);
static_assert(offsetof(struct tcm_dev, transport) == 0x48);
static_assert(offsetof(struct tcm_dev, command_delay_ms) == 0x20c);
static_assert(offsetof(struct tcm_dev, write_message) == 0x398);
static_assert(sizeof(struct tcm_dev) == 0x3a0);

#endif
```

Layout GKI/ELF adicional comprovado:

- `sizeof(struct platform_device) == 0x3f0`;
- `offsetof(struct platform_device, dev) == 0x10`;
- `offsetof(struct device, release) == 0x328`;
- `syna_spi_device.dev.release == syna_spi_device + 0x338`;
- `sizeof(void *) == 8` em AArch64.

O arquivo `probes/layout_probe.c` transforma essas medidas em falhas de
compilacao. Estruturas compartilhadas por IRQ/workqueue devem usar os locks
observados e tipos de callback exatos; nao introduza casts de funcao, acesso sem
lock ou anotacoes `__rcu` sem um padrao de publicacao/leitura comprovado.

## 3. Prompts de Execucao Isolada (Micro-Tarefas)

O manifesto `MICROTASKS.json` e o documento `MICROTASK_PROMPTS.md` contem uma
tarefa para cada uma das 367 identidades `nome@endereco`. Funcoes com nomes
duplicados exigem o endereco; evidencia apenas pelo nome deve ser rejeitada.

Para cada tarefa, forneca ao LLM menor somente o prompt atomico correspondente e
acrescente esta instrucao invariavel:

```text
Implemente ou revise apenas a funcao indicada. Leia integralmente o pseudocodigo,
P-Code e assembly stock vinculados. Preserve assinatura, retornos, ordem de
efeitos, offsets, constantes e chamadas observadas. Use APIs exportadas GKI
6.12.23, IS_ERR/PTR_ERR, goto labels para cleanup inverso e dev_dbg/pr_debug em
ramos criticos. Nao use casts de ponteiro de funcao para contornar CFI, nao crie
alocacoes ou locks sem evidencia e nao marque PASS por inspecao visual.

Entregue: patch restrito; build limpo reproduzivel; decisao KCFI; teste direto de
sucesso, limites, falhas e teardown; hashes dos relatorios; bloqueadores. O PASS
so e valido quando verify_driver_microtasks.py aceitar compile, KCFI e teste para
esta identidade exata.
```

Ordem de prioridade recomendada para os proximos lotes:

1. callbacks registrados ainda cobertos por wrappers de assinatura;
2. probe/remove/shutdown de platform e SPI;
3. IRQ, workqueues, notifier e suspend/resume;
4. file/proc/sysfs operations expostas ao userspace;
5. transporte TCM, buffers, firmware e testes de producao;
6. helpers puramente diretos e duplicatas internas.

O estado atual possui 38 tarefas `PASS`, com build, KCFI e teste hash-bound, e
329 tarefas `READY_FOR_IMPLEMENTATION`. Existem 38 funcoes com harness direto;
logo, nenhuma promocao global para `100%` e permitida.
