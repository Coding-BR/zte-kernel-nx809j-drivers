## 1. Mapeamento de Assinaturas (Conformidade GKI 6.12.23)

**Escopo e cadeia de evidência.** O alvo é `zte_ir.ko`, extraído de `/vendor_dlkm/lib/modules` do NX809J, com SHA-256 `b7a70d47bbdad67e184f968808b2c448172fc1ff16bb22e80b9beaa08d9641a1`. A análise combina o ELF original, exports Headless do Ghidra, P-Code, DTS ativo, `Module.symvers`, BTF/DWARF do `vmlinux` local e captura ADB somente leitura. Os artefatos de prova estão em `evidence/` e `reports/`; os dados brutos imutáveis permanecem em `../../runs/NX809J-20260711T011653Z/`.

A captura de runtime confirma NX809J, ROM `userdebug`, `ro.debuggable=1`, root `u:r:su:s0`, slot `_a`, módulo `zte_ir` carregado, `/dev/zte_ir` (`489:0`, SELinux `ir_device`) e vínculo do driver com `spi15.0`. O kernel observado nessa captura é o stock `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`, compilado em `Wed Jul 9 10:22:53 UTC 2025`; essa data não deve ser confundida com a compilação do kernel customizado.

**Assinaturas canônicas confirmadas.** O Ghidra não recuperou os tipos C completos, por isso a declaração final foi derivada dos headers 6.12 e validada contra o preâmbulo KCFI do ELF stock. O probe foi compilado pelo Android Clang `r536225` com `-fsanitize=kcfi -fsanitize-cfi-icall-experimental-normalize-integers`. Todos os hashes coincidiram:

| Callback | Assinatura exata | KCFI stock/probe |
|---|---|---|
| `zte_ir_write` | `ssize_t (struct file *, const char __user *, size_t, loff_t *)` | `0xc3d43b4d` |
| `zte_ir_ioctl` | `long (struct file *, unsigned int, unsigned long)` | `0x2af6cdbb` |
| `zte_ir_open` | `int (struct inode *, struct file *)` | `0x9829071d` |
| `zte_ir_release` | `int (struct inode *, struct file *)` | `0x9829071d` |
| `zte_ir_probe` | `int (struct spi_device *)` | `0xba1082a1` |
| `zte_ir_remove` | `void (struct spi_device *)` | `0x509a2353` |
| `init_module` | `int (void)` | `0x6fbb3035` |
| `cleanup_module` | `void (void)` | `0xe5c47d60` |

As declarações a usar, sem casts de ponteiro de função, são:

```c
static ssize_t zte_ir_write(struct file *file, const char __user *buffer,
			    size_t count, loff_t *position);
static long zte_ir_ioctl(struct file *file, unsigned int command,
			 unsigned long argument);
static int zte_ir_open(struct inode *inode, struct file *file);
static int zte_ir_release(struct inode *inode, struct file *file);
static int zte_ir_probe(struct spi_device *spi);
static void zte_ir_remove(struct spi_device *spi);
static int __init zte_ir_init(void);
static void __exit zte_ir_exit(void);
```

As relocações de `.rela.rodata` provam este contrato de `file_operations`:

```c
static const struct file_operations zte_ir_fops = {
	.owner          = THIS_MODULE,
	.llseek         = noop_llseek,
	.write          = zte_ir_write,
	.unlocked_ioctl = zte_ir_ioctl,
	.compat_ioctl   = zte_ir_ioctl,
	.open           = zte_ir_open,
	.release        = zte_ir_release,
};
```

As relocações de `.rela.data`, a tabela OF e o runtime provam este contrato SPI:

```c
static const struct of_device_id zte_ir_of_match[] = {
	{ .compatible = "zte,zte_ir" },
	{ }
};

static struct spi_driver zte_ir_spi_driver = {
	.driver = {
		.name = "zte_ir",
		.of_match_table = zte_ir_of_match,
	},
	.probe = zte_ir_probe,
	.remove = zte_ir_remove,
};
```

**Mapeamento das APIs originais.** Há 27 símbolos indefinidos no ELF e todos os 27 foram encontrados no `Module.symvers` da árvore local. O mapeamento de baixo nível para a API-fonte é:

| Evidência ELF | API C que deve ser usada |
|---|---|
| `__kmalloc_large_noprof(..., 0xdc0)` | `kzalloc(..., GFP_KERNEL)` |
| `memdup_user`, `kfree` | `memdup_user()`, `kfree()` |
| `__mutex_init`, `mutex_lock`, `mutex_unlock` | `mutex_init()`, `mutex_lock()`, `mutex_unlock()` |
| `_raw_spin_lock_irq`, `_raw_spin_unlock_irq` | `spin_lock_irq()`, `spin_unlock_irq()` no comportamento stock; `spin_lock_irqsave()` é preferível no hardening |
| `__list_add_valid_or_report`, `__list_del_entry_valid_or_report` | `list_add()`/`list_del()`; as validações são geradas pela configuração do kernel |
| `device_create`, `device_destroy` | APIs de classe/dispositivo homônimas |
| `__register_chrdev`, `__unregister_chrdev` | registro explícito de um único minor; use contagem e nome simétricos no código corrigido |
| `class_create`, `class_destroy` | APIs homônimas do Kernel 6.12 |
| `__spi_register_driver`, `driver_unregister` | `spi_register_driver()`, `spi_unregister_driver()` |
| `spi_sync` | `spi_sync()` com `struct spi_message` e `struct spi_transfer` zerados |
| `nonseekable_open`, `noop_llseek` | APIs homônimas de `fs.h` |
| `_printk`, `_dev_printk`, `_dev_err` | `pr_*()` e `dev_*()`; prefira `dev_dbg()` nas ramificações de diagnóstico |
| `alt_cb_patch_nops`, `mem_alloc_profiling_key`, `__stack_chk_fail` | artefatos gerados por alternativas, profiling de alocação e stack protector; não chamar manualmente |

Os símbolos GPL usados pelo stock (`__spi_register_driver`, `class_create`, `class_destroy`, `device_create`, `device_destroy`, `driver_unregister`, `spi_sync`) exigem `MODULE_LICENSE("GPL")`. O hardening de lifetime recomendado usa `spi_dev_get()`/`spi_dev_put()`, que inlinam `get_device`/`put_device`; ambos também constam como `EXPORT_SYMBOL_GPL` global no `Module.symvers`.

**Vendor Hooks e namespaces.** O módulo não acessa estruturas internas do core por símbolos privados e não referencia qualquer Android Vendor Hook. Portanto, não é necessário registrar Vendor Hook. Também não há `import_ns=` na `.modinfo`, e todos os símbolos comprovados estão no namespace global: a lista necessária de `MODULE_IMPORT_NS()` é vazia. Se uma implementação futura introduzir acesso a membro privado do core, ela deve primeiro ser redesenhada sobre API exportada; não se deve inventar um hook para reproduzir acesso privado.

**Regras GKI/vendor_dlkm.** Compilar exclusivamente como módulo out-of-tree para `vendor_dlkm`, com os headers/configuração do mesmo kernel, `CONFIG_MODVERSIONS`, Clang compatível e as duas flags KCFI acima. Não usar símbolo apenas visível em `kallsyms`, não copiar CRC, não usar `KBUILD_MODPOST_WARN` para esconder símbolo ausente e não aplicar cast em callback. O `.modinfo` stock prova `license=GPL`, `description=PWM IR Transmitter`, `author=xu min<xu.min4@zte.com>` e alias somente para `zte,zte_ir`.

**Divergências bloqueadoras no fonte reconstruído atual.** Antes de qualquer teste funcional, corrigir estes pontos já comprovados:

1. O fonte usa `zte,ir`/`zte,ir-spi`; ELF, DTS e runtime exigem `zte,zte_ir`.
2. O fonte define `_IOW('k', 0x31, unsigned int)`; o ABI stock é `_IOW('i', 0x31, int)`, valor bruto `0x40046931`.
3. O fonte omite `.compat_ioctl`; o stock aponta os dois callbacks para `zte_ir_ioctl`.
4. O campo em `0x138a0` foi modelado como estado/mutex; o stock prova `spinlock_t spi_lock` nesse offset.
5. O fonte força `transfer.bits_per_word = 16`; o stock deixa o campo zerado e escreve apenas `tx_buf`, `len` e `speed_hz`.
6. O fonte não preserva o bloco desconhecido `0x13898..0x1389f`, deslocando locks e lista.
7. O lifetime de `file->private_data` durante `remove` precisa seguir o modelo de usuários do `spidev`; liberar imediatamente permite uso após `kfree`.

## 2. Estrutura de Dados Estrita e Offsets (Arquivos .h)

O `probe` stock aloca exatamente `0x138e8` bytes. O `pahole` sobre o `vmlinux` de SHA-256 `2b489c74fd55c8e939d4e73c0e1f750797fd6da2cc1be89cdb2d77b4885b0780` confirma `sizeof(spinlock_t) == 4` e `sizeof(struct mutex) == 48`. Esses tamanhos, somados aos acessos do Ghidra, fecham todos os offsets até `0x138e8`.

| Offset | Tamanho | Campo | Evidência |
|---|---:|---|---|
| `0x00000` | `0x4` | `dev_t devt` | comparação com `inode->i_rdev`, `device_create/destroy` |
| `0x00004` | `0x13880` | `u16 tx_buf[40000]` | stores de 16 bits e limite 40000 |
| `0x13884` | `0x2` | `pattern_high = 0x001f` | pulsos de índice par |
| `0x13886` | `0x2` | `pattern_low = 0x0000` | pulsos de índice ímpar |
| `0x13888` | `0x4` | `speed_hz = 608000` | `probe`, `ioctl`, `spi_transfer.speed_hz` |
| `0x1388c` | `0x4` | padding | alinhamento AArch64 do ponteiro |
| `0x13890` | `0x8` | `struct spi_device *spi` | `probe`, `write`, `remove` |
| `0x13898` | `0x8` | reservado, sem semântica | nenhum acesso no ELF stock |
| `0x138a0` | `0x4` | `spinlock_t spi_lock` | `_raw_spin_lock_irq` em `remove` |
| `0x138a4` | `0x4` | padding | alinhamento de `struct mutex` |
| `0x138a8` | `0x30` | `struct mutex buf_lock` | lock/unlock em `write`, BTF/DWARF |
| `0x138d8` | `0x10` | `struct list_head device_entry` | travessia em `open`, add/del em probe/remove |

O arquivo gerado `headers/zte_ir_abi.h` contém o ABI e os tipos de função:

```c
/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZTE_IR_RECOVERED_ABI_H
#define _ZTE_IR_RECOVERED_ABI_H

#include <linux/fs.h>
#include <linux/ioctl.h>
#include <linux/spi/spi.h>

#define ZTE_IR_DRIVER_NAME             "zte_ir"
#define ZTE_IR_CLASS_NAME              "zte_ir_class"
#define ZTE_IR_OF_COMPATIBLE           "zte,zte_ir"
#define ZTE_IR_IOC_MAGIC               'i'
#define ZTE_IR_IOC_SET_CARRIER         _IOW(ZTE_IR_IOC_MAGIC, 0x31, int)
#define ZTE_IR_IOC_SET_CARRIER_RAW     0x40046931U
#define ZTE_IR_DEFAULT_CARRIER_HZ      38000U
#define ZTE_IR_DEFAULT_SPI_SPEED_HZ    608000U
#define ZTE_IR_SPI_WORDS_PER_CARRIER   16U
#define ZTE_IR_DT_MAX_SPI_HZ           5000000U

typedef ssize_t zte_ir_write_signature(struct file *, const char __user *,
				       size_t, loff_t *);
typedef long zte_ir_ioctl_signature(struct file *, unsigned int, unsigned long);
typedef int zte_ir_open_signature(struct inode *, struct file *);
typedef int zte_ir_release_signature(struct inode *, struct file *);
typedef int zte_ir_probe_signature(struct spi_device *);
typedef void zte_ir_remove_signature(struct spi_device *);
typedef int zte_ir_init_signature(void);
typedef void zte_ir_exit_signature(void);

#endif
```

O arquivo gerado `headers/zte_ir_layout.h` preserva o prefixo stock byte a byte:

```c
/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZTE_IR_RECOVERED_LAYOUT_H
#define _ZTE_IR_RECOVERED_LAYOUT_H

#include <linux/build_bug.h>
#include <linux/list.h>
#include <linux/mutex.h>
#include <linux/spi/spi.h>
#include <linux/spinlock.h>
#include <linux/stddef.h>
#include <linux/types.h>

#define ZTE_IR_TX_WORD_CAPACITY  40000U
#define ZTE_IR_TX_BUFFER_BYTES   0x13880U
#define ZTE_IR_PRIVATE_DATA_SIZE 0x138e8U

struct zte_ir_recovered_device {
	dev_t devt;                          /* 0x00000 */
	u16 tx_buf[ZTE_IR_TX_WORD_CAPACITY]; /* 0x00004 */
	u16 pattern_high;                    /* 0x13884 */
	u16 pattern_low;                     /* 0x13886 */
	u32 speed_hz;                        /* 0x13888 */
	u8 reserved_1388c[0x4];             /* 0x1388c */
	struct spi_device *spi;              /* 0x13890, spi_lock */
	u8 reserved_13898[0x8];             /* 0x13898, desconhecido */
	spinlock_t spi_lock;                 /* 0x138a0 */
	u8 reserved_138a4[0x4];             /* 0x138a4 */
	struct mutex buf_lock;               /* 0x138a8 */
	struct list_head device_entry;       /* 0x138d8 */
} __aligned(8);

static_assert(sizeof(dev_t) == 0x4);
static_assert(sizeof(spinlock_t) == 0x4);
static_assert(sizeof(struct mutex) == 0x30);
static_assert(sizeof(struct list_head) == 0x10);
static_assert(offsetof(struct zte_ir_recovered_device, tx_buf) == 0x00004);
static_assert(offsetof(struct zte_ir_recovered_device, pattern_high) == 0x13884);
static_assert(offsetof(struct zte_ir_recovered_device, pattern_low) == 0x13886);
static_assert(offsetof(struct zte_ir_recovered_device, speed_hz) == 0x13888);
static_assert(offsetof(struct zte_ir_recovered_device, spi) == 0x13890);
static_assert(offsetof(struct zte_ir_recovered_device, spi_lock) == 0x138a0);
static_assert(offsetof(struct zte_ir_recovered_device, buf_lock) == 0x138a8);
static_assert(offsetof(struct zte_ir_recovered_device, device_entry) == 0x138d8);
static_assert(sizeof(struct zte_ir_recovered_device) == 0x138e8);

#endif
```

O binário stock possui dois defeitos de lifetime: libera a estrutura em `remove` mesmo com arquivos abertos e usa o ponteiro SPI fora do lock. Não se deve reproduzi-los. O arquivo `headers/zte_ir_runtime.h` adiciona somente após o prefixo comprovado um contador de usuários e a marca de remoção, protegidos por `device_list_lock`:

```c
struct zte_ir_runtime {
	struct zte_ir_recovered_device stock; /* 0x00000 .. 0x138e7 */
	unsigned int users;                   /* 0x138e8 */
	bool removed;                         /* 0x138ec */
	u8 reserved_138ed[0x3];              /* 0x138ed */
} __aligned(8);

static_assert(offsetof(struct zte_ir_runtime, users) == 0x138e8);
static_assert(offsetof(struct zte_ir_runtime, removed) == 0x138ec);
static_assert(sizeof(struct zte_ir_runtime) == 0x138f0);
```

Não aplicar `__rcu` ao ponteiro `spi`: o stock usa spinlock, e um ponteiro `__rcu` sem protocolo completo de leitura, atualização e grace period seria incorreto. No código corrigido, adquirir uma referência com `spi_dev_get()` enquanto `spi_lock` está mantido, liberar o spinlock antes de `spi_sync()` e soltar a referência com `spi_dev_put()`.

**Contrato de dados e SPI.** `write` recebe uma sequência de `u32` em microssegundos. O stock usa `count >> 2`, ignora bytes finais, alterna `pattern_high`/`pattern_low` e calcula `words = round(pulse_us * (speed_hz >> 4) / 1000000)`. O código corrigido deve rejeitar `count == 0`, `count % sizeof(u32) != 0` e entradas acima do limite definido, além de usar aritmética `u64` com checagem. O total `>= 40000` é inválido.

O `struct spi_transfer` stock é zerado e recebe somente `tx_buf = &tx_buf[0]`, `len = words * sizeof(u16)` e `speed_hz`; `bits_per_word` deve permanecer zero para herdar a configuração do dispositivo. O `ioctl` `0x40046931` lê um `int` de userspace e grava `speed_hz = carrier_hz << 4`. O hardening deve aceitar apenas frequência positiva e garantir `carrier_hz * 16 <= 5000000`, valor comprovado pelo DTS.

**Correções obrigatórias, sem imitar bugs do stock.** A rotina stock não libera o resultado de `memdup_user()` e, no caminho de overflow, retorna sem `mutex_unlock()`. Ela também permite corrida entre `write` e `remove`. A reconstrução deve sempre executar `kfree()`, desbloquear em ordem reversa por labels `goto`, manter referência no `spi_device`, serializar a atualização de `speed_hz` com `buf_lock`, impedir novos opens após remoção e adiar `kfree(runtime)` até `users == 0`. Use `dev_dbg()` nos limites, transições de lifetime e erros do SPI para KASAN/KCSAN; não registre pulsos completos nem ponteiros de userspace.

## 3. Prompts de Execução Isolada (Micro-Tarefas)

1. **Aquisição segura do SPI**

> Implemente apenas `static struct spi_device *zte_ir_spi_get(struct zte_ir_runtime *runtime)` para Android 16 GKI 6.12.23. Inclua mentalmente os contratos de `zte_ir_layout.h` e `zte_ir_runtime.h`: `runtime->stock.spi` é protegido por `runtime->stock.spi_lock`. Use `spin_lock_irqsave`, chame `spi_dev_get()` enquanto o lock estiver mantido, libere com `spin_unlock_irqrestore` e retorne a referência ou `NULL`. Não durma sob spinlock, não use RCU, não faça cast de callback, não aloque memória e não implemente qualquer outra função. Use `pr_debug` apenas no caminho `NULL`, sem imprimir ponteiros. Entregue somente a função C.

2. **Codificação atômica dos pulsos**

> Implemente apenas `static int zte_ir_encode_pulses(struct zte_ir_runtime *runtime, const u32 *pulses, size_t pulse_count, u32 speed_hz, size_t *word_count)`. Preencha somente `runtime->stock.tx_buf`, alternando `pattern_high` nos índices pares e `pattern_low` nos ímpares. Calcule por pulso `round(pulse_us * (speed_hz >> 4) / 1000000)` em `u64`, com checagem de overflow; rejeite total `>= ZTE_IR_TX_WORD_CAPACITY` com `-E2BIG`. Não aloque, não copie userspace, não faça I/O SPI e não implemente outra função. Aplique KISS, valide todos os ponteiros/limites e use `pr_debug` somente no ramo de limite. Entregue somente a função C.

3. **Escrita do dispositivo**

> Implemente apenas `static ssize_t zte_ir_write(struct file *file, const char __user *buffer, size_t count, loff_t *position)` usando os três headers curados. Valide `file->private_data`, `buffer`, `count > 0`, alinhamento em `sizeof(u32)` e limite de pulsos antes de `memdup_user`. Trave `buf_lock`, copie os pulsos, obtenha o SPI com `zte_ir_spi_get`, chame somente o helper de codificação, monte `spi_message` e `spi_transfer` completamente zerados e atribua apenas `tx_buf`, `len` e `speed_hz`. Execute `spi_sync`, depois `spi_dev_put`. Garanta `kfree` e unlock em todos os caminhos por labels `goto` em ordem reversa; retorne `count` apenas no sucesso e `-ESHUTDOWN` se removido. Não force `bits_per_word`, não implemente helpers nem outra função. Use `dev_dbg` em erro/quantidade final. Entregue somente a função C.

4. **IOCTL de frequência**

> Implemente apenas `static long zte_ir_ioctl(struct file *file, unsigned int command, unsigned long argument)`. Aceite exclusivamente `ZTE_IR_IOC_SET_CARRIER`, equivalente a `_IOW('i', 0x31, int)`/`0x40046931`; para outro comando retorne `-ENOTTY`. Leia um `int` com `get_user`, retorne `-EFAULT` em ponteiro inválido, rejeite valor `<= 0` e qualquer valor cujo produto por 16 exceda `ZTE_IR_DT_MAX_SPI_HZ`. Sob `buf_lock`, atualize `speed_hz` sem overflow. A mesma função será usada por `.unlocked_ioctl` e `.compat_ioctl`, portanto preserve exatamente o protótipo KCFI e não use casts. Não implemente outra função. Use `dev_dbg` para a frequência aceita, nunca para o endereço userspace. Entregue somente a função C.

5. **Abertura e referência de usuário**

> Implemente apenas `static int zte_ir_open(struct inode *inode, struct file *file)`. Sob o mutex global `device_list_lock`, percorra `device_list`, compare `runtime->stock.devt` com `inode->i_rdev`, recuse entradas `removed`, incremente `runtime->users`, atribua `file->private_data` e finalize com `nonseekable_open`. Se não houver dispositivo, retorne `-ENXIO`. Se `nonseekable_open` falhar, reverta private data e contador antes de desbloquear. Não aloque, não toque no SPI e não implemente outra função. Use `pr_debug` no ramo de minor ausente. Entregue somente a função C com cleanup estruturado.

6. **Release e liberação diferida**

> Implemente apenas `static int zte_ir_release(struct inode *inode, struct file *file)`. Sob `device_list_lock`, leia e zere `file->private_data`, valide sem underflow, decremente `runtime->users` e decida se a estrutura deve ser liberada quando `runtime->removed && runtime->users == 0`. Faça `kfree` somente depois de soltar o mutex global. Não acesse `spi`, não use RCU, não implemente outra função e não invente contadores adicionais. Use `pr_debug` na transição para liberação diferida. Entregue somente a função C.

7. **Probe SPI**

> Implemente apenas `static int zte_ir_probe(struct spi_device *spi)`. Aloque `struct zte_ir_runtime` com `kzalloc`, inicialize explicitamente `spin_lock_init`, `mutex_init`, `INIT_LIST_HEAD`, `pattern_high=0x001f`, `pattern_low=0`, `speed_hz=608000`, `spi`, `users=0` e `removed=false`. Sob `device_list_lock`, aceite apenas minor zero, forme `MKDEV(spidev_major, 0)`, chame `device_create(..., "zte_ir")`, trate com `PTR_ERR_OR_ZERO`, marque o bit e adicione à lista somente no sucesso. Depois use `spi_set_drvdata`. Em falha, desfaça recursos em ordem reversa com labels `goto`; retorne `-ENODEV` se o minor estiver ocupado. Não implemente tabelas, remove ou outra função. Use `dev_dbg` para velocidade e falhas. Entregue somente a função C.

8. **Remoção SPI segura**

> Implemente apenas `static void zte_ir_remove(struct spi_device *spi)`. Obtenha `runtime` com `spi_get_drvdata` e trate `NULL`. Tome primeiro `zte_ir_device_list_lock` para impedir novos opens e depois `runtime->stock.buf_lock` para aguardar qualquer `write/ioctl` ativo. Ainda sob esses mutexes, marque `removed=true`; sob `spi_lock` com irqsave, publique `runtime->stock.spi = NULL` e solte imediatamente o spinlock. Chame `spi_set_drvdata(spi, NULL)`, remova da lista, destrua `/dev/zte_ir` e limpe o minor. Libere a estrutura somente se `users == 0`, fazendo `kfree` após soltar os dois mutexes; caso contrário, delegue a liberação ao último `release`. Não espere `spi_sync` sob spinlock, não use RCU e não implemente outra função. Use `dev_dbg` para remoção imediata ou diferida. Entregue somente a função C.

9. **Inicialização do módulo**

> Implemente apenas `static int __init zte_ir_init(void)`. Registre exatamente um minor de char device, crie a classe `zte_ir_class` e registre `zte_ir_spi_driver`, nessa ordem. Diferentemente do bug stock, use a mesma contagem e o mesmo nome no registro e no unregister. Trate major negativo antes de `class_create`; para ponteiros use `IS_ERR`/`PTR_ERR`; em falha desfaça em ordem reversa com labels `goto`. Não implemente fops, tabelas, exit ou outra função. Preserve `int (void)` para KCFI, aplique DRY/KISS e use `pr_debug` ou `pr_info` apenas para major e resultado final. Entregue somente a função C.

10. **Saída do módulo**

> Implemente apenas `static void __exit zte_ir_exit(void)`. Execute `spi_unregister_driver`, `class_destroy` e `__unregister_chrdev` na ordem segura, usando exatamente o mesmo major, primeiro minor, quantidade e nome usados por `zte_ir_init`. Não implemente outra função, não faça alocação, não ignore objetos registrados e preserve `void (void)` para KCFI. Use somente um `pr_debug` de conclusão. Entregue somente a função C.
