# Status de reconstrução do zte_fingerprint

Atualizado em 2026-11-11. O estado atual é um candidato de hardening estático com revisão independente pendente. O build reproduzível não equivale à prova de reconstrução stock completa nem a uma validação no smartphone.

## Candidato atual

- Módulo: SHA-256 de3804dab5e06e66965e237c95b725d378e9c55314c63f76e1acc5ce2cfd2ce7; 395.912 bytes.
- Fonte C: alterações de ciclo de vida/sincronização em zte_fingerprint.c; ioctl compatível continua ligado ao fragmento assembly versionado.
- Docker: duas compilações limpas idênticas no builder nx809j-repro; identidade do kernel fonte: MATCH.
- Evidência por função: 30 identidades Ghidra comparadas; 19 assemblies idênticos ao stock e 11 diferenças declaradas no mapa. Equivalência stock dessas 11 funções não está estabelecida.
- ABI: CRCs KMI e vermagic do alvo conferem. A paridade estrita de imports/dependências com o stock não confere: gpio_free foi removido; devres_open_group e devres_release_group foram adicionados; panel_event_notifier não aparece como dependência do candidato.
- Estado: não promover como static_verified até revisão independente das diferenças e resolução da paridade ABI.
- Hardware: não houve carregamento do módulo, unbind, unload nem teste de ciclo de vida no aparelho nesta rodada.

A atestação completa está em reverse_engineering/validation/reconstructed/zte_fingerprint/attestation/lifetime_sync_hardening_20261111/.

## Baseline estático anterior

O candidato anterior, SHA-256 8fbc779e8238738398d80e24902c88fbdbd9b1552c935f4d3f010f029ac34247 (393.544 bytes), havia sido promovido como baseline offline, com 30 funções rastreadas e gates estáticos anteriores aprovados. Ele é histórico; não representa o novo candidato de hardening.

O stock usado como referência nesta cadeia continua sendo SHA-256 4ad15396f5c4fa1f6153dbb6e469476a9ec437daee186498dce94bc28f7d8675.

## Alterações de ciclo de vida avaliadas

- Remoção de gpio_free manual para GPIOs geridos por devm.
- Sincronização dos caminhos ioctl, open/release, IRQ e remove.
- Drenagem do trabalho de retry do notifier antes do teardown.
- Bloqueio de rebind enquanto referências de arquivo antigas, grupo devres ou IRQ ainda permanecem.
- Uso das APIs devres exportadas pelo KMI alvo; devres_close_group não está disponível no KMI consultado.

## Próximos gates

1. Revisão independente, função a função, das 11 diferenças de assembly e da semântica de teardown. Só então atualizar a decisão de revisão no mapa.
2. Reexecutar o validador contra o snapshot curado do Docker e preservar todos os hashes e a identidade do kernel.
3. Fazer validação dinâmica supervisionada no aparelho, com registro de logs e estado observado; manter o resultado separado da evidência estática.
