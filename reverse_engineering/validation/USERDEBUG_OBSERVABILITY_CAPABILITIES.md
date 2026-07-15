# Capacidades de Observabilidade da ROM Userdebug

Estado da auditoria estatica: `PASS`

Kernel: `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`  
Arquitetura: `arm64`  
Configuracao: `reproducible_environment/inputs/nx809j_kernel.config`  
SHA-256: `30d08440e1e926507c2d2d2d9cec5d6f5b84fd3286f917447cc79b4b93a10582`

> Este relatorio prova apenas suporte na configuracao fixada. Ele nao acessa o
> smartphone e nao prova que Android, SELinux, o boot atual ou a politica vendor
> permitam usar o recurso em runtime.

| Capacidade | Estado | Requisitos ausentes | Intrusividade |
|---|---|---|---|
| Identidade da configuracao em /proc/config.gz | `CONFIGURED` | - | `read_only` |
| debugfs | `CONFIGURED` | - | `read_only_until_controls_are_written` |
| tracefs e tracepoints | `CONFIGURED` | - | `low` |
| ftrace de funcoes/function graph | `PARTIAL` | `CONFIG_FUNCTION_TRACER`, `CONFIG_DYNAMIC_FTRACE` | `medium` |
| Kprobes e kretprobes | `CONFIGURED` | - | `medium` |
| BPF com BTF para tracing tipado | `CONFIGURED` | - | `medium` |
| BTF de modulos | `CONFIGURED` | - | `read_only` |
| dynamic debug para pr_debug/dev_dbg | `PARTIAL` | `CONFIG_DYNAMIC_DEBUG` | `low` |
| perf sobre tracepoints | `CONFIGURED` | - | `low` |
| kallsyms completo | `CONFIGURED` | - | `read_only` |
| pstore/ramoops | `CONFIGURED` | - | `read_only_for_collection` |
| ftrace persistente em ramoops | `PARTIAL` | `CONFIG_PSTORE_FTRACE`, `CONFIG_FUNCTION_TRACER` | `medium` |
| KASAN HW_TAGS | `CONFIGURED` | - | `high` |
| UBSAN | `CONFIGURED` | - | `medium` |
| KUnit | `CONFIGURED_AS_MODULE` | - | `medium` |
| KCOV para fuzzing guiado por cobertura | `NOT_CONFIGURED` | `CONFIG_KCOV` | `high` |
| Lockdep/PROVE_LOCKING | `NOT_CONFIGURED` | `CONFIG_PROVE_LOCKING` | `high` |
| Infraestrutura de fault injection | `NOT_CONFIGURED` | `CONFIG_FAULT_INJECTION` | `high` |
| KGDB/KDB | `NOT_CONFIGURED` | `CONFIG_KGDB` | `high` |
| KCFI estrito | `CONFIGURED` | - | `enforcement` |
| Assinatura e politica vendor de modulos | `CONFIGURED` | - | `enforcement` |
| mmiotrace generico | `UNSUPPORTED_ARCHITECTURE` | `CONFIG_MMIOTRACE` | `unsupported_on_target` |

## Uso e gates de runtime

### Identidade da configuracao em /proc/config.gz

- Estado estatico: `CONFIGURED`.
- Uso: Comparar a configuracao em execucao com o snapshot fixado.
- Gate de runtime: O arquivo /proc/config.gz precisa existir e ser legivel.

### debugfs

- Estado estatico: `CONFIGURED`.
- Uso: Acessar interfaces de diagnostico disponibilizadas pelo kernel.
- Gate de runtime: debugfs precisa estar montado e permitido por SELinux.

### tracefs e tracepoints

- Estado estatico: `CONFIGURED`.
- Uso: Capturar eventos estaticos, latencia e sequencias de subsistemas.
- Gate de runtime: tracefs precisa estar montado e os eventos relevantes precisam existir.

### ftrace de funcoes/function graph

- Estado estatico: `PARTIAL`.
- Uso: Comparar grafos temporais de chamadas entre stock e candidato.
- Gate de runtime: As funcoes precisam aparecer em available_filter_functions.

### Kprobes e kretprobes

- Estado estatico: `CONFIGURED`.
- Uso: Observar argumentos, retornos e ordem de chamadas em pontos selecionados.
- Gate de runtime: O simbolo nao pode estar em blacklist e deve ser resolvivel no kernel em execucao.

### BPF com BTF para tracing tipado

- Estado estatico: `CONFIGURED`.
- Uso: Construir probes tipados e comparar contratos observaveis com menor acoplamento a offsets.
- Gate de runtime: BPF LSM, SELinux, lockdown, token/capabilities e tipos BTF expostos ainda podem bloquear a carga.

### BTF de modulos

- Estado estatico: `CONFIGURED`.
- Uso: Recuperar tipos preservados nos modulos que efetivamente contenham .BTF.
- Gate de runtime: Cada .ko deve ser inspecionado; a configuracao nao garante que o artefato stock reteve a secao.

### dynamic debug para pr_debug/dev_dbg

- Estado estatico: `PARTIAL`.
- Uso: Ativar callsites de debug ja compilados sem reconstruir o modulo.
- Gate de runtime: /proc/dynamic_debug/control precisa existir e conter os callsites desejados.

### perf sobre tracepoints

- Estado estatico: `CONFIGURED`.
- Uso: Medir frequencia, latencia e correlacao de eventos sem alterar o driver.
- Gate de runtime: perf_event_paranoid e SELinux precisam permitir a coleta.

### kallsyms completo

- Estado estatico: `CONFIGURED`.
- Uso: Resolver enderecos e nomes para correlacao de traces e panics.
- Gate de runtime: kptr_restrict e as credenciais do processo controlam a visibilidade de enderecos.

### pstore/ramoops

- Estado estatico: `CONFIGURED`.
- Uso: Preservar Oops, panic e console atraves de reinicializacao.
- Gate de runtime: O Device Tree precisa reservar uma regiao ramoops e pstore precisa estar montado.

### ftrace persistente em ramoops

- Estado estatico: `PARTIAL`.
- Uso: Preservar uma trilha de chamadas anterior a um hang ou reset.
- Gate de runtime: Requer regiao ramoops e configuracao de tracing persistente.

### KASAN HW_TAGS

- Estado estatico: `CONFIGURED`.
- Uso: Detectar acessos fora de limites e use-after-free no AArch64 com MTE.
- Gate de runtime: O modo de boot, o hardware MTE e os parametros kasan precisam ativa-lo de fato.

### UBSAN

- Estado estatico: `CONFIGURED`.
- Uso: Detectar comportamento indefinido instrumentado pelo compilador.
- Gate de runtime: Somente codigo compilado com a instrumentacao aplicavel e coberto pelo estimulo sera observado.

### KUnit

- Estado estatico: `CONFIGURED_AS_MODULE`.
- Uso: Executar testes atomicos de logica e contratos dentro do kernel.
- Gate de runtime: A suite reconstruida precisa compilar e o modulo KUnit precisa poder ser carregado.

### KCOV para fuzzing guiado por cobertura

- Estado estatico: `NOT_CONFIGURED`.
- Uso: Medir cobertura de interfaces durante fuzzing direcionado.
- Gate de runtime: debugfs e a interface alvo precisam estar disponiveis no ambiente isolado.

### Lockdep/PROVE_LOCKING

- Estado estatico: `NOT_CONFIGURED`.
- Uso: Detectar inversoes de lock e dependencias de travamento.
- Gate de runtime: O candidato e suas dependencias precisam executar os caminhos concorrentes relevantes.

### Infraestrutura de fault injection

- Estado estatico: `NOT_CONFIGURED`.
- Uso: Forcar falhas de alocacao e retornos de erro para validar rollback.
- Gate de runtime: O ponto deve suportar a classe de falha e o teste deve rodar fora do aparelho de uso diario.

### KGDB/KDB

- Estado estatico: `NOT_CONFIGURED`.
- Uso: Depurar o kernel em nivel de registradores com transporte apropriado.
- Gate de runtime: Requer transporte, console e configuracao de boot compativeis.

### KCFI estrito

- Estado estatico: `CONFIGURED`.
- Uso: Forcar compatibilidade exata das assinaturas de callbacks indiretos.
- Gate de runtime: O candidato deve ser compilado com o mesmo contrato KCFI e type IDs compativeis.

### Assinatura e politica vendor de modulos

- Estado estatico: `CONFIGURED`.
- Uso: Explicar rejeicoes de carga que root, isoladamente, nao remove.
- Gate de runtime: Verificar chaves aceitas, lista protegida, assinatura do .ko e logs do loader.

### mmiotrace generico

- Estado estatico: `UNSUPPORTED_ARCHITECTURE`.
- Uso: Rastrear acessos MMIO em arquiteturas suportadas.
- Gate de runtime: O mecanismo oficial nao oferece suporte a AArch64.

## Codigo presente e forma de ativacao

Estas entradas descrevem codigo presente na arvore fixada. Elas nao sao
modulos `.ko` que possam ser carregados no boot stock; a ativacao exige
recompilar o `Image` do perfil de laboratorio.

| Capacidade | Forma | Arquivos de origem | Acao |
|---|---|---|---|
| ftrace de funcoes/function graph | `kernel_builtin` | `kernel/trace/ftrace.c` | Habilitar CONFIG_FUNCTION_TRACER e recompilar o Image; function graph e dynamic ftrace sao resolvidos por olddefconfig. |
| dynamic debug para pr_debug/dev_dbg | `kernel_builtin` | `lib/dynamic_debug.c` | Habilitar CONFIG_DYNAMIC_DEBUG e recompilar o Image. CONFIG_DYNAMIC_DEBUG_CORE sozinho so atende modulos preparados e nao cria callsites ausentes no stock. |
| ftrace persistente em ramoops | `kernel_builtin` | `fs/pstore/ftrace.c`, `kernel/trace/ftrace.c` | Habilitar primeiro CONFIG_FUNCTION_TRACER, depois CONFIG_PSTORE_FTRACE; recompilar o Image e fornecer uma reserva ramoops valida. |
| KCOV para fuzzing guiado por cobertura | `kernel_builtin` | `kernel/kcov.c` | Habilitar CONFIG_KCOV e recompilar todo o kernel de laboratorio para instrumentar por cobertura o codigo desejado. |
| Lockdep/PROVE_LOCKING | `kernel_builtin` | `kernel/locking/lockdep.c` | Habilitar CONFIG_PROVE_LOCKING, nao o simbolo oculto CONFIG_LOCKDEP diretamente, e recompilar o Image. |
| Infraestrutura de fault injection | `kernel_builtin` | `lib/fault-inject.c` | Habilitar CONFIG_FAULT_INJECTION e somente os subrecursos necessarios; recompilar o Image antes de usar controles debugfs em sessao descartavel. |
| KGDB/KDB | `kernel_builtin` | `kernel/debug/debug_core.c` | Habilitar CONFIG_KGDB e um transporte auditado para a placa, depois recompilar o Image. Uma opcao de compilador nao fornece transporte utilizavel. |
| mmiotrace generico | `kernel_builtin_arch_specific` | `arch/x86/mm/kmmio.c`, `arch/x86/mm/mmio-mod.c` | Nao forcar esta opcao em arm64. CONFIG_HAVE_MMIOTRACE_SUPPORT esta ausente no NX809J, portanto Kconfig normal nao consegue habilita-la. |

## Leitura correta

- `CONFIGURED` significa que os simbolos de configuracao exigidos estao ativos.
- `CONFIGURED_AS_MODULE` significa que pelo menos um requisito esta em `m`.
- `PARTIAL` significa que existe infraestrutura relacionada, mas falta requisito.
- `NOT_CONFIGURED` impede essa tecnica no kernel fixado sem uma nova compilacao.
- `UNSUPPORTED_ARCHITECTURE` impede o metodo no AArch64 mesmo que ele exista em Linux.

Nenhum desses estados equivale a `HARDWARE_VALIDATED`.
