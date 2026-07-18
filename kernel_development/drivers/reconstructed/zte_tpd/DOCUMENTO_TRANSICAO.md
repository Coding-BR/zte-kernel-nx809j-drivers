# Documento de Transicao - `zte_tpd` / NX809J

Stock vinculado: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
Candidato vinculado: `7ce58003fccbd4cbd528fb612ce02afefcb9762cf509dd193619df98be3aec96`

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

struct testing_item *syna_tcm_get_testing_0001(void);
int syna_tcm_testing_build_id(struct tcm_dev *tcm,
                              struct testing_item *item,
                              bool dual_firmware);

int syna_dev_connect(struct syna_tcm *tcm);
int syna_dev_disconnect(struct syna_tcm *tcm);
int syna_dev_set_up_app_fw(struct syna_tcm *tcm);
int syna_recovery_game_mode_after_reset(struct syna_tcm *tcm);
int syna_testing_create_dir(struct syna_tcm *tcm);
int syna_testing_pt01_zte(struct syna_tcm *tcm);
int syna_testing_pt05_zte(struct syna_tcm *tcm);
int syna_testing_pt0a_zte(struct syna_tcm *tcm);

int syna_dev_get_frame_data(struct syna_tcm *tcm, int value,
                            unsigned int delay_ms);
int syna_dev_set_charger_mode(struct syna_tcm *tcm, int value,
                              unsigned int delay_ms);
int syna_dev_set_display_rotation(struct syna_tcm *tcm, int value,
                                  unsigned int delay_ms);
int syna_dev_set_follow_hand_level(struct syna_tcm *tcm, int value,
                                   unsigned int delay_ms);
int syna_dev_set_play_game(struct syna_tcm *tcm, int value,
                           unsigned int delay_ms);
int syna_dev_set_sensibility_level(struct syna_tcm *tcm, int value,
                                   unsigned int delay_ms);
int syna_dev_set_stability_level(struct syna_tcm *tcm, int value,
                                 unsigned int delay_ms);
int syna_dev_set_tp_report_rate(struct syna_tcm *tcm, int value,
                                unsigned int delay_ms);
```

Os registros correspondentes devem manter os tipos nativos:

```c
static const struct platform_driver zte_touch_device_driver;
static const struct platform_driver syna_dev_driver;
static const struct spi_driver syna_spi_driver;
static const struct file_operations zte_fops;
```

Os 63 wrappers de proc foram removidos depois da comparacao de P-Code, assembly,
KCFI e call sites. Os handlers usam diretamente as assinaturas nativas
`proc_read`/`proc_write`. Restam 2 wrappers de assinatura; cada um so
pode ser removido depois da microtarefa da funcao alvo comprovar o ABI e os
efeitos observaveis.

As oito funcoes `syna_dev_*` acima compartilham o KCFI stock `0x1eb3b73d`.
Um oraculo local compilou 768 candidatos e recuperou a forma normalizada
`int (struct syna_tcm *, int, unsigned int)`. O header
`zte_tpd_syna_device_api.h` e a unica declaracao publica local desse contrato;
nao reintroduza prototipos decompilados `_QWORD *` ou retorno `__int64`.

As oito rotinas de contexto compartilham o KCFI stock `0xae20471c`. Um segundo
oraculo local testou 140 declaracoes e encontrou somente
`int (struct syna_tcm *)`. Chamadas antigas com dois zeros adicionais eram
efeito de prototipos perdidos, nao parametros reais. Dois `printk` tambem
recebiam um terceiro argumento fantasma; o assembly stock prepara apenas `x0`
e `x1`, e o candidato agora reproduz esse contrato.

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

O overlay dos itens de teste preserva os `0x178` bytes comprovados e deixa
padding explicito onde o significado semantico ainda nao foi recuperado:

```c
typedef int (*testing_run_fn)(struct tcm_dev *tcm,
                              struct testing_item *item,
                              bool dual_firmware);

struct testing_item {
        u32 version;                    /* 0x00 */
        u32 id;                         /* 0x04 */
        const char *name;               /* 0x08 */
        bool result;                    /* 0x10 */
        u8 reserved_0011[0x07];
        testing_run_fn run;             /* 0x18 */
        u8 reserved_0020[0x18];
        void *limit_primary;            /* 0x38 */
        void *limit_secondary;          /* 0x40 */
        u8 reserved_0048[0x90];
        void *result_data;              /* 0xd8 */
        void *result_aux;               /* 0xe0 */
        u8 reserved_00e8[0x90];
};

static_assert(sizeof(struct testing_item) == 0x178);
static_assert(offsetof(struct testing_item, run) == 0x18);
static_assert(offsetof(struct testing_item, result_data) == 0xd8);
static_assert(offsetof(struct testing_item, result_aux) == 0xe0);
```

Os cinco objetos stock possuem 376 bytes e foram recuperados a partir dos
simbolos, bytes de `.data` e relocacoes de `.rela.data`. Seus IDs sao `0x0001`,
`0x0002`, `0x0100`, `0x0500` e `0x0A00`; o callback fica em `+0x18`. Nao altere
os paddings restantes sem nova evidencia local do ELF, P-Code ou assembly.

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

O estado atual possui 123 tarefas `PASS`, com build, KCFI e teste hash-bound, e
244 tarefas `READY_FOR_IMPLEMENTATION`. Sete relatorios de harness sustentam o
subconjunto testado. A superficie KCFI integral esta em `215/322`; portanto,
nenhuma promocao global para `100%` e permitida.
