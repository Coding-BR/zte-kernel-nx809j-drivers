# Auditoria estatica de concorrencia dos campos de estado

**Driver:** zte_charger_policy  
**Data:** 2026-11-11  
**Resultado:** risco de acesso concorrente sem lock confirmado estaticamente no comportamento stock; nenhuma intercalacao ou falha foi reproduzida em runtime.

## Achado

Callbacks de configuracao e de propriedade da power supply acessam campos que tambem sao consultados ou atualizados por timeout_work e pelos handlers de estado. A chamada queue_delayed_work_on agenda processamento assincrono; nao protege as leituras/escritas anteriores nem serializa o callback com um worker que ja esteja executando.

Os campos compartilhados observados incluem status (offset 0x1ec), last_status (0x1f0), policy_disabled (0x1e8), timeout_seconds_runtime (0x1f4), force_discharging_sec (0x1f8) e demo_sts (0x219). A matriz registra escritores, leitores e entradas stock relevantes.

No stock, os corpos AArch64 das funcoes listadas usam acessos ordinarios e nao apresentam instrucoes exclusivas/atomicas ou barreiras para esses campos. O inventario de chamadas tambem nao mostra chamadas de mutex/spinlock nos caminhos examinados. charger_policy_disable_cas e uma funcao interna do driver, nao uma instrucao CAS nem uma primitiva de lock.

## Decisao de reconstrucao

Nenhum lock foi acrescentado. O protocolo estatico local determina preservar efeitos comprovados e nao inventar locks sem evidencia (workspace_tools/reconstruction_pipeline/STATIC_RECONSTRUCTION_PROTOCOL.md, secao “Prompt reutilizavel”). Adicionar um lock agora mudaria a semantica e o codigo do alvo sem suporte no binario stock. O achado fica registrado como risco herdado do stock; uma eventual correcao de seguranca deve ser avaliada separadamente como hardening, sem rotula-la como reconstrucao equivalente.

A fonte reconstruida e os candidatos ainda nao promovidos incluem o gate atomico runtime_stopping e a drenagem em remove(), voltados a impedir novos callbacks/trabalho durante teardown e aguardar trabalho pendente antes de liberar recursos. O .ko ativo continua no hash anterior e nao incorpora esse candidato. Mesmo na fonte atual, o gate nao implementa exclusao mutua para as transicoes normais de status, demo_sts ou dos limites de tempo.

## Identidade e limites

- Fonte reconstruida e fonte em kernel-docker-workspace/engenharia/curated/zte_charger_policy: SHA-256 c3da1145c1f06fe42e7bf00972ff1bcab552ac58fb5c3f9919f018123827483b em ambos os locais.
- .ko ativo no repositorio e no snapshot Docker: SHA-256 2f87a9fa003ec14c8d2a4ab42f6cea598b99460cae13363c072ec05699093cec. O mapa continua ligado a esse binario.
- O candidato nao promovido do lote demo_sts_call_relocation_20261110 tem SHA-256 915b27b135bdcbe1e61d6ba889fd4985e8562a652d23a773ef1faebee8496e58; nao e o modulo ativo.
- Esta entrega altera somente documentacao/evidencia. Nenhuma compilacao, suite de testes, harness de host, reproducao dinamica ou acao no smartphone foi executada nesta auditoria.
- O modulo continua incompleto: a auditoria integral anterior permanece com static_verified: [], ha divergencias de KMI/layout e o mapa nao foi promovido para o novo candidato.

## Sincronizacao com o Docker canonico

A sincronizacao hash-based copiou somente STATUS.md para engenharia/curated/zte_charger_policy; nenhum arquivo foi removido. A verificacao posterior passou com zero diferencas. O manifesto da fonte versionada e do snapshot curado coincide em 6fe7ee46d2d28c51c7b447bd11a66cb062e60bb230873f4a4454b30d8b5c8cba.
## Evidencia

- access_matrix.json: campos, offsets, funcoes escritoras/leitoras e classificacao do risco.
- attestation.json: hashes SHA-256 da fonte, binarios, mapa, evidencias Ghidra, assembly stock e protocolo usado.
- Evidencia do kernel fixado consultada no lote lifetime_sync_atomic_gate_20261110: power_supply_core.c e power_supply_sysfs.c, com hashes preservados em attestation/lifetime_sync_atomic_gate_20261110/attestation.json.

## Proximo passo

Manter a reconstrucao fiel ao stock e deixar o risco visivel. Se o objetivo mudar para remover a corrida, criar um lote de hardening separado, definir uma estrategia de sincronizacao com revisao de deadlock/ordem e validar em kernel de laboratorio com KCSAN/lockdep; nao promover esse hardening como equivalente ao binario stock.