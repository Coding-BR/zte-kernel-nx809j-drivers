# zte_power_supply: hardening estatico de lifetime — 2026-11-04

## Resultado

A janela estatica de lifetime identificada na auditoria de 2026-11-03 foi corrigida no candidato. `zte_power_supply_unregister` agora marca `removing` sob `psy->lock`, drena primeiro `deferred_register_work` e depois `changed_work`. `zte_power_supply_changed` usa o mesmo lock para verificar a gate e enfileirar o trabalho; o callback atrasado consulta o estado sob esse lock no caminho de espera.

As funcoes `zte_power_supply_changed`, `zte_power_supply_deferred_register_work` e `zte_power_supply_unregister` estao explicitamente mapeadas como `candidate_hardening_deviation`. A equivalencia com o comportamento stock nao foi declarada. O restante do mapa continua com 47 funcoes cobertas, mas isso nao fecha os gates independentes nem equivale a validacao integral do driver.

## Build Docker

Duas compilacoes limpas, cada uma em seu diretorio de modulo, foram executadas sobre copias do snapshot curado. Ambas produziram `zte_power_supply.ko` com SHA-256 `8262839ec50992385ccab55fb815dc5aa84d4acbd1845719c7883b41450810c0` e 282728 bytes. O kernel alvo foi o commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`, com imagem Docker `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390` e Clang 19.0.1.

O primeiro build tentou usar o volume preparado como somente leitura e falhou ao gravar um arquivo temporario do `modpost`. A fonte do kernel nao foi alterada: o build foi repetido em uma copia descartavel do volume. Os dois builds finais terminaram com sucesso. Permaneceram avisos de prerequisite `FORCE`, de versoes dos simbolos exportados e de BTF indisponivel por falta de `vmlinux`; consulte os logs completos.

## Limites

Este resultado e validacao estatica e de compilacao. O harness host nao foi reexecutado depois da mudanca. O ADB nao listou dispositivos nesta verificacao, portanto nao houve teste dinamico, carregamento do modulo ou reproducao da corrida no smartphone. Revisao independente e validacao supervisionada em hardware continuam pendentes. O hardening protege o produtor interno atrasado; os chamadores externos ainda precisam respeitar o lifetime de `psy` e parar de usar o ponteiro antes do fim de `unregister`.

## Artefatos

- `report.json`: identidade de fonte, mapa, modulo, kernel, builds, limites e evidencias.
- `curated_manifest.json`: hashes dos 23 arquivos do snapshot curado e verificacao de sincronizacao com o repositorio; 20 entradas de build foram comparadas nos dois staging dirs.
- `docker_build_1_pinned_release.txt` e `docker_build_2_pinned_release.txt`: logs dos builds finais.
- `docker_build_0_readonly_failure.txt`: diagnostico do primeiro mount somente leitura.
- `candidate_hardening_disassembly.txt`: disassembly AArch64 do candidato compilado.