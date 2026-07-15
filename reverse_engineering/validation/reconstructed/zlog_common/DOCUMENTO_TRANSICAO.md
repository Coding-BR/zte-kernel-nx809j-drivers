# Documento de Transicao: zlog_common.ko

- Dispositivo: `NX809J` (`REDMAGIC 11 Pro+`)
- Kernel alvo: Android 16 GKI `6.12.23`, AArch64, modulo out-of-tree em `vendor_dlkm`
- Stock SHA-256: `cc84a3119927bc189fb60a2d2d5e339e93e5ab0bb127316a1fd4f4ccfcad8da0`
- Fonte primaria: ELF stock, assembly, relocacoes, P-Code e pseudocodigo Ghidra deste run
- Estado: paridade estatica forte; revisao independente e validacao em hardware ainda pendentes

## 1. Mapeamento de Assinaturas (Conformidade GKI 6.12.23)

O modulo depende de `zlog_exception` e importa `ssize_t zlog_write_internal(const char *buffer, size_t count)`. Ele exporta `zlog_client_notify`, `zlog_client_record`, `zlog_register_client`, `zlog_unregister_client` e `zlog_reset_client` por `EXPORT_SYMBOL`.

Assinaturas recuperadas e adotadas:

```c
void zlog_client_notify(struct zlog_client *client, int event);
int zlog_client_record(struct zlog_client *client, const char *format, ...);
struct zlog_client *zlog_register_client(struct zlog_mod_info *module);
void zlog_unregister_client(struct zlog_client *client);
void zlog_reset_client(struct zlog_client *client);
static void zlog_handle_work(struct work_struct *work);
static ssize_t zlog_comm_read(struct file *file, char __user *buffer,
			      size_t count, loff_t *offset);
static ssize_t zlog_comm_write(struct file *file, const char __user *buffer,
			       size_t count, loff_t *offset);
static long zlog_comm_ioctl(struct file *file, unsigned int cmd,
			    unsigned long arg);
static int zlog_comm_open(struct inode *inode, struct file *file);
static int zlog_comm_release(struct inode *inode, struct file *file);
static void zlog_comm_create_ctrl_dev(void);
static int __init zlog_common_init(void);
```

`struct file_operations` usa `.read`, `.write`, `.unlocked_ioctl`, `.compat_ioctl`, `.open` e `.release`. Nao existe `platform_driver`, binding OF, IRQ ou MMIO neste modulo. O callback indireto `zlog_client_ops.notify` foi recuperado por brute force KCFI como `int (*)(void *, int)`, ID `0xc2a6c845`; casts de ponteiro de funcao sao proibidos.

Os 12 limites indiretos instrumentados possuem os mesmos IDs KCFI do stock. `zlog_comm_create_ctrl_dev` e chamada somente de forma direta e nao possui preambulo KCFI independente. O inventario de 31 imports do candidato coincide com o stock. Todos os simbolos de kernel foram encontrados no `Module.symvers` local; `zlog_write_internal` foi comprovado como export de `zlog_exception`.

Nenhum Android Vendor Hook foi observado. Nao adicionar hook por suposicao. Nenhum namespace restrito foi observado, portanto nao ha `MODULE_IMPORT_NS()` comprovado. Qualquer mudanca futura nessa conclusao exige nova evidencia ELF/KMI.

## 2. Estrutura de Dados Estrita e Offsets (Arquivos .h)

O mapa compilavel esta em `include/zlog_common_recovered_layout.h`. Os tamanhos finais sao:

| Estrutura | Tamanho | Evidencia principal |
|---|---:|---|
| `zlog_client_ops` | `0x10` | chamada indireta em `zlog_comm_write` |
| `zlog_mod_info` | `0x30` | leituras em `zlog_register_client` |
| `zlog_client` | `0x120` | stride dos 32 clientes e acessos em todas as APIs |
| `zlog_server` | `0x24c8` | globais acessadas por init, worker e file operations |
| `zlog_command` | `0x10` | tamanho exigido por `zlog_comm_write` |

Offsets criticos de `zlog_client`: nomes em `0x04/0x24/0x44/0x84`, `ops` em `0xa8`, mutex em `0xb0`, `module_no` em `0xe0`, `event_no` em `0xe4`, flags em `0xe8`, comprimento/capacidade/buffer em `0xf8/0x100/0x108` e `registered` em `0x118`. O servidor contem 32 clientes, workqueue em `0x2400`, delayed work em `0x2408`, miscdevice em `0x2470`, contador atomico em `0x24c0` e flag de init em `0x24c4`.

O alinhamento AArch64 e garantido por padding explicito e `static_assert(sizeof/offsetof)`. O stock usa `mutex` por cliente; nao ha evidencia de RCU, spinlock ou acesso em IRQ. Portanto, nao marcar ponteiros como `__rcu` nem trocar a primitiva de lock. O callback deve manter seu tipo exato para CFI.

Comportamentos incomuns comprovados e preservados: `unregister` libera o buffer sem zerar o ponteiro, limpa `device_name` duas vezes e nao zera `module_no/event_no`; `reset` limpa apenas o bit 1; `record` passa `capacity - length - 1` a `vsnprintf`; nao existe `module_exit`. Eles nao devem ser modernizados antes de um teste diferencial provar que a mudanca e compativel.

Nao ha contexto DTS especifico. O arquivo `dts_context.json` vazio e uma conclusao valida: este e um servico de log vendor, nao um driver de hardware com MMIO.

## 3. Prompts de Execucao Isolada (Micro-Tarefas)

Regra comum para todas as tarefas: implemente somente a funcao solicitada; use exclusivamente o pseudocodigo, P-Code, assembly e mapa de offsets deste run; preserve constantes, ordem de locks, retornos e efeitos colaterais do stock. Nao invente APIs, campos ou cleanup. Use tratamento estrito de erro, `IS_ERR/PTR_ERR` quando a API puder retornar `ERR_PTR`, labels `goto` em ordem reversa quando houver mais de um recurso, e `pr_debug` nas ramificacoes criticas uteis para KASAN/KCSAN. Nao use cast para contornar CFI.

1. **`zlog_client_notify`**: implemente a validacao do servidor/cliente, atualizacao atomica sob mutex dos campos de evento/flag e reagendamento do delayed work. Valide chamadas e tamanho contra `0000_001003e4_zlog_client_notify.c` e assembly.
2. **`zlog_client_record`**: implemente apenas o append variadico, limite de `0x800`, saturacao de comprimento e bit de registro. Preserve o tamanho incomum passado a `vsnprintf` e todos os retornos.
3. **`zlog_register_client`**: implemente busca duplicada, busca de slot livre entre 32 clientes, alocacao de `0x800`, copias limitadas, inicializacao e exports. Nao adicione validacoes ausentes no stock. Esta e a unica funcao com divergencia de tamanho atual: candidato `816`, stock `828` bytes.
4. **`zlog_unregister_client`**: implemente apenas a liberacao e limpeza observadas. Preserve conscientemente o ponteiro nao zerado, a limpeza duplicada e os campos que o stock deixa intactos.
5. **`zlog_reset_client`**: implemente zeragem do evento, comprimento e buffer sob mutex; limpe somente o bit comprovado pelo assembly.
6. **`zlog_handle_work`**: implemente apenas o worker dos 32 clientes, consumo do bit notify, timestamp local, serializacao textual, `zlog_write_internal`, cleanup e reset. Preserve `ZLOG_EVENT_OVERHEAD=0x1ba` e a verificacao fortify antes de `memcpy`.
7. **`zlog_comm_read`**: implemente a operacao atomica que retorna `count`, sem copiar dados e sem criar estado.
8. **`zlog_comm_write`**: implemente validacao da mensagem de 16 bytes, `copy_from_user`, busca por `module_no` e chamada KCFI do callback `int (void *, int)`. Preserve `-EINVAL`, `-ENOMEM` e o retorno `count`.
9. **`zlog_comm_ioctl`**: implemente o stub que retorna zero para ambos os slots ioctl, sem interpretar `cmd` ou `arg`.
10. **`zlog_comm_open`**: implemente somente incremento atomico, log e retorno zero.
11. **`zlog_comm_release`**: implemente somente decremento atomico, log e retorno zero.
12. **`zlog_comm_create_ctrl_dev`**: implemente criacao de `miscdevice` dinamico chamado `zlog_comm`, duplicacao do nome e `misc_register`; preserve a ausencia de propagacao de erro e cleanup.
13. **`zlog_common_init` / ELF `init_module`**: implemente zeragem do servidor, 32 mutexes, miscdevice, workqueue ordenada, delayed work, contador e flag de init na ordem comprovada. Nao crie `module_exit`, pois ele nao existe no stock.

Cada microtarefa so pode ser atestada quando o hash do fonte estiver ligado ao mesmo candidato usado em: duas compilacoes Docker reproduziveis, comparacao de imports/exports, inventario e multiplicidade de chamadas Ghidra, comparacao KCFI e host harness. A validacao em hardware continua separada e obrigatoria para qualquer declaracao de equivalencia total.
