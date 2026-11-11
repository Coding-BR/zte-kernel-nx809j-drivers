# Status de reconstrução do zte_fingerprint

Atualizado em 2026-11-11 UTC. A correção mais recente trata `gf_cleanup`: quando `regulator_is_enabled` retorna um erro, o código ainda tenta `regulator_disable` para balancear a referência habilitada antes de liberar o grupo devres, conforme a ramificação zero versus não zero observada no stock. O estado segue como candidato de hardening, com revisão independente, paridade ABI e validação no smartphone pendentes.

## Candidato e fonte

- Módulo curado: SHA-256 `e79cc7305b471d2a94192ef26708bf273c552d78c15c7b24e190a1972dfdde21`; esse artefato é anterior às correções recentes e não corresponde à fonte atual.
- Fonte C atual: SHA-256 `8d2c3d4e8cdb81dd58e9973f3fb19cdd7592b38f8bfb67f2483f7db40dafd015`.
- Docker canônico após a correção de `gf_cleanup`: duas compilações limpas reproduzíveis, ambas SHA-256 `ed77cbf07e7cdf104450003a9f8bc0c1abacc0b703f591379c4d3feb396c590b`; identidade do kernel fonte: MATCH; release `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`.
- O módulo recém-compilado não foi promovido: o `.ko` curado segue no hash anterior `e79cc7305b471d2a94192ef26708bf273c552d78c15c7b24e190a1972dfdde21`; o validador permanece `incomplete_or_failed` por divergência de conteúdo/layout do candidato curado, imports e 11 revisões de mapa pendentes.

## Evidência atual

- Harness de host: PASS reproduzível, 30 funções. Verifica `CLEANUP` com dois descritores (`-EBUSY` sem soltar recursos), com um descritor fechado (`-ENODEV` sem efeitos) e com um descritor aberto (IRQ e grupo devres liberados); também cobre o rollback de falha do Netlink.
- A compilação Docker acima valida a fonte atual; o harness não foi reexecutado nesta correção. `lifetime_sync_regulator_error_cleanup_20261111/audit.json` registra o motivo: `gf_cleanup` agora chama `regulator_disable` também quando `regulator_is_enabled` retorna erro, para não pular o balanceamento antes de `regulator_put` emitir `WARN_ON(enable_count)`.
- Assembly: 30 identidades comparadas contra Ghidra; 19 exatas e 11 diferenças declaradas. O assembly recém-extraído de `gf_ioctl_dispatch` confirma a ordem: valida `opened` e `ref_count`, libera a IRQ, chama `gf_ioctl` e só então limpa `opened`.
- ABI: vermagic e CRCs do KMI conferem quando incluído `vendor.Module.symvers`; a paridade estrita falha, com `gpio_free` ausente e `devres_open_group`/`devres_release_group` adicionais. A dependência stock `panel_event_notifier` é fornecida por `vmlinux` na fonte alvo, mas o estado do telefone continua sem verificação.
- Validador final: continua `incomplete_or_failed`; não marcar `static_verified` nem tratar o `.ko` curado como contendo a correção atual.
- Risco de callback do painel: o módulo stock `panel_event_notifier.ko` copia o callback sob mutex e o chama depois de soltar o mutex; `unregister` limpa a entrada sem aguardar chamadas já selecionadas. O gate `removing` não drena callback que já passou por ele. A ordem tardia de registro do worker e o teardown da IRQ foram corrigidos no candidato, mas esse risco da API permanece. O `modules.dep` do full_vendor_boot confirma que o `zte_fingerprint.ko` (hash idêntico ao stock de referência) depende de `panel_event_notifier.ko`. O provider de compatibilidade do Docker usa outra implementação (chama callback sob mutex), portanto seu build não prova a semântica do provider stock. ADB não encontrou aparelho conectado nesta verificação. Evidência: `reverse_engineering/validation/reconstructed/zte_fingerprint/attestation/lifetime_sync_panel_callback_race_20261111/`.
- Hardware: não houve carregamento, unbind, unload ou teste de ciclo de vida no smartphone nesta rodada.

A atestação desta correção está em `reverse_engineering/validation/reconstructed/zte_fingerprint/attestation/lifetime_sync_cleanup_ioctl_20261111/`. Os lotes anteriores de inicialização Netlink e múltiplos descritores permanecem registrados em suas atestações versionadas.

## Histórico e gates pendentes

O candidato anterior SHA-256 `8fbc779e8238738398d80e24902c88fbdbd9b1552c935f4d3f010f029ac34247` (393.544 bytes) é apenas o baseline offline histórico. O stock usado nesta cadeia continua sendo SHA-256 `4ad15396f5c4fa1f6153dbb6e469476a9ec437daee186498dce94bc28f7d8675`.

As mudanças avaliadas incluem remoção de `gpio_free` manual sobre GPIOs `devm`, sincronização de `open/release/ioctl/IRQ/remove`, drenagem do trabalho de retry do notifier, bloqueio de rebind com referências antigas, proteção de `CLEANUP` para múltiplos descritores e uso das APIs devres exportadas pelo KMI alvo.

1. Revisar independentemente as 11 diferenças de assembly e atualizar o mapa apenas com uma decisão real de revisão.
2. Resolver ou justificar a diferença estrita de imports antes de promover o `.ko` recompilado.
3. Fazer validação dinâmica supervisionada no aparelho, com logs, estado observado e rollback; manter esse resultado separado da evidência estática.
4. Resolver a garantia de quiescência no provider/API stock do panel notifier antes de afirmar teardown seguro ou validar unload no telefone.
