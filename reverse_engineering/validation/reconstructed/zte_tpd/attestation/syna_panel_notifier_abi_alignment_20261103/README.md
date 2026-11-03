# Alinhamento da ABI do notifier de painel

Lote estático para o candidato `zte_tpd` compilado contra o kernel NX809J da árvore Docker.

- Build canônico: **PASS**, 2/2 ciclos reproduzíveis; SHA-256 do módulo: `05169eb97da2317d87b6921c946bd3970d3d111c4ba708a04378668a99d1e251` (7276320 bytes).
- Sincronização fonte → snapshot curado do Docker: aplicada; três arquivos copiados; sem divergências de conteúdo.
- Provider usado pelo alvo: `zte_parity.c`, embutido (`obj-y`) no commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`. O trigger chama os callbacks sob `panel_client_mutex`; unregister usa o mesmo mutex e espera a chamada em andamento terminar.
- O provider externo stock é diferente e possui uma janela de callback após unregister. Essa observação histórica não descreve o provider do build atual.
- Header/enums/layout do alvo diferem do legado: o adaptador filtra o painel e traduz o evento para a visão legada antes de chamar o callback stock. O callback stock permanece byte/instruction-exact na comparação AArch64.
- `syna_ts_register_for_panel_events` é agora `HARDENED_STOCK_DEVIATION`: a comparação divergente é intencional pela adaptação de ABI e pela checagem de falha de registro.
- O prefixo KCFI `0x40116f97` foi verificado no callback adaptador e no callback stock preservado.
- Os imports de registro/unregister resolvem para exports `vmlinux` com os CRCs desta atestação; o módulo não declara dependência externa `panel_event_notifier`. Não empacotar o módulo notifier externo stock junto deste kernel.
- Nenhum teste runtime, boot ou hardware NX809J foi executado.

Evidências: `canonical_build_report.json`, `source_sync_report.json`, `callback_exact_comparison.json`, `registration_deviation_comparison.json`, manifests e assembly em `candidate_assembly/` e `stock_assembly/`. Dados completos e hashes: `review.json`.
