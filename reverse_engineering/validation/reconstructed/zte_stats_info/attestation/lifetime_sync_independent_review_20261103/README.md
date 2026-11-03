# zte_stats_info: revisão de ciclo de vida e sincronização — 2026-11-03

## Resultado e escopo

Auditoria estática do módulo NX809J atual, com foco em referências de `task_struct`/`mm_struct`, RCU, `sighand->siglock` e lifetime da lista de listeners por CPU. O módulo candidato atual foi extraído e comparado no Docker canônico com o stock: 8/8 funções passaram na comparação de instruções AArch64, relocations, seção e tamanho de símbolo. Os dumps e o relatório completo do comparador estão em `assembly/`.

Não houve mudança no fonte do driver, no `.ko` ou no `reconstruction_map.json`; nenhum módulo foi carregado/removido e nenhuma operação Netlink foi executada no telefone. Como o fonte não mudou, não foi necessário rebuild. O snapshot Docker curado coincide byte a byte com fonte, módulo e mapa do repositório.

## Identidade verificada

- Fonte atual: `kernel_development/drivers/reconstructed/zte_stats_info/zte_stats_info.c`, SHA-256 `9e093b3da29492bf52b2811341879939ca88d68d8604cd650d6393b40703f6e4`.
- Módulo atual: `zte_stats_info.ko`, SHA-256 `62e8d2607d53dd8079bff1340aac4381450599ddc7ed46ab9e2a12794f4f22c1`, 328352 bytes.
- Mapa atual: SHA-256 `bf85fe9e77c74f8a3452771282d1f61c1c707ff9b67fdadf62e6b7843a1c7913`.
- Stock de referência: `reference_modules/stock/zte_stats_info.ko`, SHA-256 `20f5f60ddbdc5412de08a5ec0a62d34bfe3dd8cebba0cb54cda6ffc7bdb64d96`.
- Inventário Ghidra stock: 8 funções, SHA-256 `9772a1ed717ba27acd7fb52809a901ee5f6dd80bf416651052e2d173dfc29f21`.
- Fonte do kernel Docker: commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`; `CONFIG_MODULE_UNLOAD=y`, `CONFIG_MODULE_FORCE_UNLOAD` desativado.

O `STATUS.md` ainda citava o módulo anterior (`51894b...`, 329608 bytes). Esse hash continua sendo a evidência histórica dos gates completos de build/harness; ele não identifica o snapshot atual. O snapshot atual foi revalidado aqui em nível de função, sem reatribuir a ele os gates de build/harness do binário anterior.

## Achados

### 1. Referências de tarefas e memória

No caminho PID, `find_task_by_vpid()` ocorre sob RCU; o candidato obtém `get_task_struct()` antes de sair da seção e executa um `put_task_struct()` correspondente depois de coletar os campos. Em caso de PID inexistente ou falha antes da aquisição, o caminho não libera uma referência que não obteve. `get_task_mm()`/`mmput()` também estão pareados. A leitura de credenciais e do pai usa RCU.

No caminho TGID, `zte_lock_task_sighand_inline()` protege a aquisição do `sighand` com RCU, `spin_lock_irqsave()` e repetição se o ponteiro mudar. A callback conserva o lock durante a iteração do grupo e o acesso a `signal->stats`; nos caminhos de sucesso e falha, libera o spinlock/RCU correspondente. A comparação do módulo atual confirma paridade com as funções stock relacionadas.

Isso não garante um snapshot coerente de todos os contadores que mudam concorrentemente; a saída continua sendo uma coleta aproximada. Não foi encontrado desequilíbrio estático de referência ou um caminho candidato de use-after-free nessa superfície.

### 2. Listener: proteção da lista e leak no fechamento do socket

Cada lista por CPU é inicializada antes de `genl_register_family()`. Inserção, procura, remoção e `kfree()` são feitas sob o `rw_semaphore` da CPU correspondente; não apareceu um caminho de acesso à lista sem essa proteção nas funções do módulo.

Há, porém, um leak herdado do stock: o registro aloca um `zte_listener` por CPU e usa `info->snd_portid` como chave. O módulo só libera essas entradas por deregistro explícito ou pela limpeza de erro de alocação. A família não fornece callback de unbind/socket-close, e o módulo não tem caminho de saída. Assim, um cliente privilegiado que registre uma máscara e feche o socket sem deregistrar deixa as entradas alocadas até reinicialização; as entradas podem também impedir que um novo socket com portid reutilizado crie os mesmos registros. O locking protege a memória enquanto a lista é usada, mas não recupera essa memória perdida.

### 3. Rollback parcial pode remover listener anterior

Se a inscrição cobre várias CPUs e a alocação falha numa CPU posterior, o caminho de erro percorre a máscara inteira e remove a primeira entrada com o mesmo `pid`/portid. Isso também pode remover um registro que já existia antes dessa tentativa e que foi apenas detectado como duplicado numa CPU anterior. A proteção por semáforo evita corrupção da lista; a operação de rollback, porém, não é transacional e pode apagar estado anterior. O mesmo fluxo aparece no stock e o corpo atual passa na comparação de assembly.

### 4. Ausência de unload normal

O stock registra a família Generic Netlink em `init_module`, mas o inventário de funções e imports não contém `module_exit`/`genl_unregister_family`. No kernel alvo montado pelo Docker, `kernel/module/main.c` rejeita o unload normal com `-EBUSY` quando o módulo tem init mas não exit; `CONFIG_MODULE_FORCE_UNLOAD` está desativado. Portanto, o alvo fica efetivamente residente até reboot e não há caminho normal de unload que deixe a família registrada apontando para texto liberado. Isso não substitui um teardown correto para cenários de unload forçado ou para uma futura versão endurecida.

## Estado e próximos gates

Os achados acima são comportamentos do stock que o candidato reproduz; o fonte não foi alterado para manter a equivalência declarada. Se forem corrigidos futuramente, devem ser registrados como desvios deliberados, com rebuild Docker, revalidação de assembly e atualização do mapa.

Esta revisão foi feita na sessão de continuação. O `STATUS.md` original exige uma revisão em outra sessão/LLM para fechar o Gate 8; por isso ela fica registrada, mas não declara esse gate concluído. O Gate 9 continua pendente: não houve validação controlada da família Netlink no aparelho. O driver permanece **INCOMPLETO**.
