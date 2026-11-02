# Variante corrigida do ciclo de vida — `nubia_hw_version`

## Defeito confirmado no stock

A decompilação Ghidra e o Assembly do módulo stock mostram que `init_module` chama `__platform_driver_register`, enquanto `cleanup_module` chama somente `sysfs_remove_group` e `kobject_put`. Não há chamada a `platform_driver_unregister`. O init também ignora o retorno do registro e não desfaz o registro se a criação do kobject/grupo sysfs falhar. Isso pode deixar o driver registrado após a saída do módulo e permitir callbacks para código descarregado.

## Correção isolada

`nubia_hw_version_hardened.c` verifica o retorno de `platform_driver_register`, desfaz o registro nos caminhos de falha e chama `platform_driver_unregister` durante a saída. Esse fonte foi compilado somente na variante de validação. O candidato de reconstrução exata e o snapshot Docker curado permanecem intactos.

A variante não substitui a reconstrução exata: muda intencionalmente duas funções para corrigir o defeito stock. O escopo não altera o gerenciamento de GPIOs nem corrige outros comportamentos do stock.

## Evidência

- Stock: SHA-256 `b24e66e189267f240d637d826169d1bcb28abda390260a88cf52124dbbabfc6c`.
- Reconstrução exata preservada: SHA-256 `7d978e520c3401716073b35d8dda561439c5d00473f9a8cd2d7062c69d2c8963`.
- Variante corrigida: SHA-256 `4887459304cf1e68c794f991831c9214c209bc058683cca0a5342a0cf9b50ce2` (`236072` bytes); dois builds em diretórios de módulo vazios e volumes de saída preparados separados produziram o mesmo hash; o BTF foi ignorado por falta de `vmlinux`, sem falha de build.
- Assembly fresco: 17/19 funções iguais ao stock; só `init_module` e `cleanup_module` diferem.
- ABI do kernel alvo: AArch64, vermagic e CRCs compatíveis. A auditoria de igualdade ao stock registra a importação extra esperada `platform_driver_unregister`, com CRC presente no `Module.symvers` do alvo.
- O fonte corrigido foi aplicado ao snapshot atual e compilado nos dois ciclos. Nenhum teste de runtime, `insmod` ou acesso ao hardware foi executado.

Veja `nubia_hw_version_hardened.c`, `build_report.json`, `assembly_scope_review.json`, `abi_comparison.json` e `abi_review.json` para os detalhes hash-bound.
