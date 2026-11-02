# Hardening do buffer de firmware — rodada 18

## O que foi corrigido

O buffer em `cdev + 0xc58` era compartilhado por self-test, leitura proc, `FW_upgrade`, `get_noise` e a interface sysfs `fwimage`. Só parte desses caminhos usava `cmd_mutex`; por isso um callback podia liberar ou substituir o descriptor enquanto outro ainda o usava.

Agora `tp_firmware_data_mutex` protege o ciclo completo dos callbacks `tp_self_test_read` e `tp_self_test_write`. Os callbacks de `fwimage`, `get_noise` e `FW_upgrade` também adquirem esse mutex antes de `cmd_mutex`. O mutex de comando fica limitado às operações do buffer; ele não é mantido durante toda a execução dos testes. Os helpers de alocação e cópia validam, usam e atualizam o descriptor sob `cmd_mutex`.

Também corrigi dois caminhos de retry após falha de `vmalloc`: `tp_alloc_tp_firmware_data` e `tpfwupgrade_store` agora limpam `cdev + 0xc58` antes de liberar o descriptor. O segundo era alcançável por `/proc/FW_upgrade`, registrado em modo `0664`, e repetia o risco de liberar novamente um ponteiro antigo.

## Validação no Docker

O snapshot curado Docker recebeu os fontes versionados. O build canônico, em duas árvores independentes, passou com o mesmo módulo de 6.294.536 bytes e SHA-256 `6f8e4e63f9826e1b75cceb64b9bc333a464f74a00bb9557cafe526c30febc30b`. A identidade do kernel NX809J e o `vermagic` passaram; o módulo copiado para `curated/zte_tpd/zte_tpd.ko` tem o mesmo hash.

O primeiro build da versão com o nome novo do mutex falhou no `modpost` porque uma referência antiga permaneceu no ramo de erro de alocação de `tp_self_test_read`. Registrei essa falha em `first_link_failure.json`, corrigi a relocação e repeti os dois ciclos com sucesso.

## Estado de reconstrução

Nove funções estão marcadas `HARDENED_STOCK_DEVIATION` no mapa e em `MICROTASKS.json/.md`. A branch `reconstruction/zte-tpd-syna-release-attested` continua no commit stock-exact anterior. A branch atual contém apenas as mudanças de hardening e suas atestações.

## Limites

- Não houve teste em aparelho NX809J, falha de alocador forçada ou teste de concorrência em runtime.
- KASAN, UBSAN e uma revisão humana independente ficaram pendentes.
- `tp_free_tp_firmware_data` e `tpd_reset_fw_data_pos_and_size` não têm caller direto no inventário Ghidra preservado; sua alcançabilidade em runtime não foi demonstrada nesta rodada.
