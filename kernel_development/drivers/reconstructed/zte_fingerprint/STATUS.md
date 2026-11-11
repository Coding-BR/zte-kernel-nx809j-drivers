# Status de reconstrução do zte_fingerprint

Atualizado em 2026-11-11 14:39 UTC. A correção mais recente trata o ioctl `CLEANUP`: o dispatcher agora preserva `opened` até o handler chamar `gf_cleanup` e evita soltar a IRQ quando o dispositivo já está fechado. O estado segue como candidato de hardening, com revisão independente, paridade ABI e validação no smartphone pendentes.

## Candidato e fonte

- Módulo curado: SHA-256 `e79cc7305b471d2a94192ef26708bf273c552d78c15c7b24e190a1972dfdde21`; esse artefato é anterior às correções recentes e não corresponde à fonte atual.
- Fonte C atual: SHA-256 `9a1f0db850cd84e1d0eb01e775d1115e42c9ae13ac8221ac78f4e256417079fe`.
- Docker canônico: duas compilações limpas reproduzíveis, ambas SHA-256 `19130f10be986d6b6e209c7d3e413ce0fd74e48de934e76d3c7b7a82e1a3cd97`; identidade do kernel fonte: MATCH; release `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`.
- O módulo recém-compilado não foi promovido: o candidato curado ainda diverge em conteúdo e layout executável, e a paridade estrita de imports falha.

## Evidência atual

- Harness de host: PASS reproduzível, 30 funções. Verifica `CLEANUP` com dois descritores (`-EBUSY` sem soltar recursos), com um descritor fechado (`-ENODEV` sem efeitos) e com um descritor aberto (IRQ e grupo devres liberados); também cobre o rollback de falha do Netlink.
- Assembly: 30 identidades comparadas contra Ghidra; 19 exatas e 11 diferenças declaradas. O assembly recém-extraído de `gf_ioctl_dispatch` confirma a ordem: valida `opened` e `ref_count`, libera a IRQ, chama `gf_ioctl` e só então limpa `opened`.
- ABI: vermagic e CRCs do KMI conferem quando incluído `vendor.Module.symvers`; a paridade estrita falha, com `gpio_free` ausente e `devres_open_group`/`devres_release_group` adicionais. A dependência stock `panel_event_notifier` é fornecida por `vmlinux` na fonte alvo, mas o estado do telefone continua sem verificação.
- Validador final: continua `incomplete_or_failed`; não marcar `static_verified` nem tratar o `.ko` curado como contendo a correção atual.
- Hardware: não houve carregamento, unbind, unload ou teste de ciclo de vida no smartphone nesta rodada.

A atestação desta correção está em `reverse_engineering/validation/reconstructed/zte_fingerprint/attestation/lifetime_sync_cleanup_ioctl_20261111/`. Os lotes anteriores de inicialização Netlink e múltiplos descritores permanecem registrados em suas atestações versionadas.

## Histórico e gates pendentes

O candidato anterior SHA-256 `8fbc779e8238738398d80e24902c88fbdbd9b1552c935f4d3f010f029ac34247` (393.544 bytes) é apenas o baseline offline histórico. O stock usado nesta cadeia continua sendo SHA-256 `4ad15396f5c4fa1f6153dbb6e469476a9ec437daee186498dce94bc28f7d8675`.

As mudanças avaliadas incluem remoção de `gpio_free` manual sobre GPIOs `devm`, sincronização de `open/release/ioctl/IRQ/remove`, drenagem do trabalho de retry do notifier, bloqueio de rebind com referências antigas, proteção de `CLEANUP` para múltiplos descritores e uso das APIs devres exportadas pelo KMI alvo.

1. Revisar independentemente as 11 diferenças de assembly e atualizar o mapa apenas com uma decisão real de revisão.
2. Resolver ou justificar a diferença estrita de imports antes de promover o `.ko` recompilado.
3. Fazer validação dinâmica supervisionada no aparelho, com logs, estado observado e rollback; manter esse resultado separado da evidência estática.
