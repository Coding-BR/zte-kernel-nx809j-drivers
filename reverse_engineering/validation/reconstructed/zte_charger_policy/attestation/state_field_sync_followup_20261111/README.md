# Extensao da auditoria de concorrencia — `zte_charger_policy`

**Data:** 2026-11-11  
**Escopo:** revisar campos omitidos da matriz anterior contra o C reconstruido, P-Code/assembly Ghidra stock e as fontes do kernel NX809J fixado.

## Resultado

- `running_discharging` (`policy + 0x21b`, 1 byte) e um campo compartilhado sem sincronizacao comum no comportamento stock observado. O setter `charger_policy_demo_sts_set` chama `charger_policy_status_disable`, que grava zero no campo antes de chamar `queue_delayed_work_on`. O timeout worker tambem atualiza esse byte. Os callbacks `charger_policy_expired_sts_get` e `policy_psy_get_property` leem o mesmo campo.
- `log_limit` (`policy + 0x21d`) nao foi confirmado como corrida entre o notifier e o worker. Os acessos stock observados ficam no `charger_policy_timeout_handler_work` e nos handlers/helpers que ele chama sincronicamente. O texto `"charger_policy_notifier_handler"` na mensagem de log do caminho de limpeza nao identifica a funcao atual: ele continua dentro de `charger_policy_timeout_handler_work`. A funcao `charger_policy_notifier_switch` nao acessa esse campo.
- Os acessos a `running_discharging` usam `LDRB`/`STRB` comuns. Nao foi encontrada protecao de lock, acesso atomico exclusivo ou barreira nesses caminhos do modulo stock. A fonte do kernel fixado mostra que `power_supply_get_property` chama o callback registrado diretamente depois do teste de `use_cnt`; esse teste nao protege o estado privado do driver.

## Correlacao com evidencia stock

O campo e gravado por `charger_policy_status_ide` (`00100a34`) e `charger_policy_status_disable` (`00101378`). O segundo e chamado por `charger_policy_demo_sts_set` (`00101264`) antes do enfileiramento do trabalho. O timeout worker (`00102f34`) tambem limpa o campo no caminho de repouso: nele, o ponteiro de entrada esta em `policy + 0xa8`, portanto os acessos stock a `+0x173` correspondem a `policy + 0x21b`.

Os leitores externos confirmados sao `charger_policy_expired_sts_get` (`0010146c`) e `policy_psy_get_property` (`00103564`). `charger_policy_status_runchging` (`00100bc4`), `charger_policy_status_rundischging` (`00100e88`) e `charger_policy_check_soc_reach_min` (`00102224`) tambem leem o campo no caminho de execucao do timeout worker.

Para `log_limit`, a mesma base deslocada explica os acessos do timeout worker: `param_1 + 0x175` e `policy + 0x21d`, pois o worker passa `param_1 - 0xa8` aos handlers. O callback notifier (`001034d8`) nao contem acessos a esse offset no assembly stock.

## Limites e decisao

O resultado confirma padroes de acesso sem lock; nao reproduz intercalacao, valor obsoleto ou efeito funcional em runtime. Nenhum lock foi adicionado: isso alteraria a semantica stock e pertence a uma trilha de hardening separada. Nenhuma fonte de driver mudou, portanto nao foi necessario build de modulo.

O sincronizador hash-based aplicou somente o `STATUS.md` ao snapshot curado do Docker: uma copia, zero remocoes, verificacao final aprovada. As fontes fixadas `power_supply_core.c` e `power_supply_sysfs.c` foram consultadas em volume Docker somente leitura; seus SHA-256 estao na atestacao.

O `.ko` ativo permanece em `2f87a9fa003ec14c8d2a4ab42f6cea598b99460cae13363c072ec05699093cec`. A avaliacao atual do mapa continua em 32/38 funcoes com assembly estrito exato, 29 mapeamentos `promoted_offline_exact`, seis `reviewed` e tres `candidate_under_static_validation`. A equivalencia integral continua nao estabelecida; o candidato fresh continua nao promovido.

Os hashes dos arquivos de entrada, da fonte Docker e do snapshot curado estao em `attestation.json`. A matriz suplementar esta em `field_review.json`.
