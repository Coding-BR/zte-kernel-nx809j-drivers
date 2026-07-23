# Next17: Validacao Offline de `syna_ioctl`

## Veredito

`PASS_SCOPED_ABI_BEHAVIOR_ASSEMBLY_GHIDRA_OFFLINE`

O veredito vale somente para `syna_ioctl`. Ele nao declara equivalencia do
modulo `zte_tpd` inteiro e nao substitui validacao controlada no NX809J.

## Fonte de Verdade

- modulo stock: `reference_modules/stock/zte_tpd.ko`;
- SHA-256 stock:
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`;
- entrada stock: `00114580`;
- corpo stock: `616` bytes;
- kernel alvo: Android 16 / GKI 6.12.23 / AArch64;
- compilador: Clang `r536225`, versao 19.0.1.

Nenhum fonte encontrado na Internet foi usado como evidencia. A reconstrucao
foi derivada do `.ko` stock, assembly, pseudocodigo e P-Code locais.

## Assinatura e CFI

O ponto de entrada pertence a `struct file_operations.unlocked_ioctl`:

```c
long syna_ioctl(struct file *file, unsigned int cmd, unsigned long arg);
```

O oraculo `syna_ioctl_next17_report.json` compilou 500 declaracoes. Oito
resultados produziram o KCFI stock `0x2af6cdbb`; eles diferem apenas por aliases
ABI-equivalentes (`long/ssize_t`, `unsigned int/u32`, `unsigned long/u64`). A
declaracao canonica acima corresponde diretamente ao contrato do kernel.

O cast `(void *)syna_ioctl` foi removido de `zte_fops`. O callback agora e
atribuido com verificacao de tipo pelo compilador e KCFI no ponto indireto.

## Fluxo e Layout Recuperados

O assembly stock comprova estes acessos:

| Objeto | Offset | Uso |
| --- | ---: | --- |
| `struct file` | `+0x20` | ponteiro do contexto privado observado |
| contexto touch | `+0x438` | valor de report rate |
| contexto touch | `+0x448` | cabeca da waitqueue |
| contexto touch | `+0x468` | flag de evento pronto |
| contexto touch | `+0x470` | mutex da operacao |
| contexto touch | `+0x5e0` | estado/sinal retornado e gate da espera |

Os comandos sao comparados na ordem stock:

1. `0xc0047003`: copia o valor de `+0x438`;
2. `0xc0047002`: copia o valor de `+0x5e0`;
3. `0xc0047001`: aguarda o evento de `+0x468` quando o gate esta ativo;
4. qualquer outro comando retorna `-ENOTTY` (`-25`).

O tipo decompilado `_QWORD[5]` foi substituido por
`struct wait_queue_entry`. Isso preserva 40 bytes e fez o Clang recuperar
naturalmente o layout de pilha stock, sem assembly manual ou pragma opaco.

## Assembly e Ghidra

`assembly_comparison_next17_ioctl_final.json` passou com:

- `616/616` bytes;
- `154/154` instrucoes AArch64;
- secao `.text` identica;
- `11/11` relocations na mesma ordem;
- zero equivalencias de instrucao ou relocation.

Uma importacao nova no Ghidra 12.1.2 produziu o MD5 executavel
`a358c6114ed510b6c289f30cb0b0a172`. O comparador semantico confirmou:

- hash C normalizado stock/candidato:
  `af544fcdd168a81adc6617008c183c61bb60d92d79c9cdcb2c3f637544ee78a4`;
- `401/401` registros P-Code com forma ordenada identica;
- corpo e grafo de labels equivalentes apos normalizacao bijetiva de enderecos.

## Harness Direto

`next17_ioctl_harness_report.json` passou `10/10` testes em duas execucoes com
ASAN e UBSAN:

- contrato exato da assinatura;
- comando desconhecido;
- espera desabilitada;
- evento ja pronto;
- wake durante `prepare_to_wait_event`;
- retorno de interrupcao da preparacao;
- `schedule` seguido de wake;
- copia do estado/sinal;
- copia do report rate;
- falha de copia com retorno `-EFAULT` e mutex liberado.

O harness usa stubs para mutex, waitqueue, scheduler e `copy_to_user`. Ele
prova o despacho e as transicoes recuperadas, nao a integracao real do
scheduler ou da memoria de usuario do kernel.

## Build e Inventario

Dois builds limpos em filesystems independentes produziram:

- tamanho: `24.450.896` bytes;
- SHA-256:
  `a26584d01155f435141ab78a2d5fe0f9b70572d62b2ad03695b6be08d51930fe`;
- KCFI global: `302/322` (`93,79%`);
- microtarefas: `157 PASS / 210 READY`;
- promocao exclusiva: `175_syna_ioctl`.

O mapa estrutural permanece `367/367`. Vinte assinaturas KCFI e 210
microtarefas ainda estao abertas no modulo completo.

## Limites

- Nenhum ADB, fastboot, `insmod`, IRQ, MMIO ou flash foi executado.
- Nao houve revisao independente.
- O offset privado `struct file + 0x20` permanece representado como acesso
  comprovado pelo binario; ele nao foi renomeado para um membro sem evidencia.
- Este PASS nao promove `syna_cdev_ioctls`, que compartilha o type ID stock mas
  possui corpo e teste independentes.
