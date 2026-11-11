# Status de reconstrução do zte_fingerprint

Atualizado em 2026-11-11 14:11 UTC. A fonte atual contém correções de hardening validadas offline; o módulo curado ainda é um artefato anterior e não contém a correção mais recente. O estado permanece pendente de revisão independente, paridade ABI e validação no smartphone.

## Candidato atual

- Módulo curado atual: SHA-256 `e79cc7305b471d2a94192ef26708bf273c552d78c15c7b24e190a1972dfdde21`; ele não contém a correção mais recente em `zte_fp_init`.
- Fonte atual: SHA-256 `7e68141d80088a413b3a8e1e9f7606fe9e8731e24a8f67a23b7a7b132dcb57dc`. `zte_fp_init` agora trata o retorno positivo de falha de `netlink_init`, desfaz a criação do class/chrdev e não registra o platform driver.
- Docker canônico: duas compilações limpas idênticas (`38fc17bccc50c4251f439923657a6ca670c22ba496ccf37ffa718fb9cb8210e2`); identidade do kernel fonte: MATCH. O candidato curado diverge do novo build em conteúdo/layout executável, portanto o `.ko` novo não foi promovido.
- Harness de host: PASS reproduzível, 30 funções; cobre `CLEANUP` compatível com dois descritores (`-EBUSY`) e falha de `netlink_kernel_create` com rollback completo.
- Evidência por função: 30 identidades Ghidra comparadas; 19 assemblies idênticos ao stock e 11 diferenças declaradas no mapa. Equivalência stock dessas 11 funções não está estabelecida.
- Assembly: 30 identidades comparadas; 19 exatas e 11 diferenças declaradas. `netlink_init` segue idêntica; `init_module` tem 336 bytes contra 276 bytes stock e continua em revisão.
- ABI: 74 CRCs de imports conferem com o KMI do alvo e o vermagic confere. A paridade estrita de imports falha: `gpio_free` foi removido; `devres_open_group` e `devres_release_group` foram adicionados. A dependência `panel_event_notifier` do stock é explicada no kernel-alvo pela exportação built-in em `vmlinux`; o estado runtime do smartphone ainda não foi verificado.
- Estado: a fonte corrigida está validada offline, mas o `.ko` curado permanece anterior; não marcar `static_verified` nem testar esse artefato como se contivesse a correção.
- Hardware: não houve carregamento do módulo, unbind, unload nem teste de ciclo de vida no aparelho nesta rodada.

A atestação mais recente está em reverse_engineering/validation/reconstructed/zte_fingerprint/attestation/init_netlink_failure_20261111/; o lote de multi-descritor está em `attestation/lifetime_sync_multi_fd_cleanup_20261111/`.

## Baseline estático anterior

O candidato anterior, SHA-256 8fbc779e8238738398d80e24902c88fbdbd9b1552c935f4d3f010f029ac34247 (393.544 bytes), havia sido promovido como baseline offline, com 30 funções rastreadas e gates estáticos anteriores aprovados. Ele é histórico; não representa o novo candidato de hardening.

O stock usado como referência nesta cadeia continua sendo SHA-256 4ad15396f5c4fa1f6153dbb6e469476a9ec437daee186498dce94bc28f7d8675.

## Alterações de ciclo de vida avaliadas

- Remoção de gpio_free manual para GPIOs geridos por devm.
- Sincronização dos caminhos ioctl, open/release, IRQ e remove.
- Drenagem do trabalho de retry do notifier antes do teardown.
- Bloqueio de rebind enquanto referências de arquivo antigas, grupo devres ou IRQ ainda permanecem.
- O ioctl CLEANUP retorna -EBUSY quando existe outro descritor aberto, preservando recursos compartilhados até o último usuário.
- Uso das APIs devres exportadas pelo KMI alvo; devres_close_group não está disponível no KMI consultado.

## Próximos gates

1. Revisão independente, função a função, das 11 diferenças de assembly e da semântica de teardown. Só então atualizar a decisão de revisão no mapa.
2. Revisão independente dos 11 desvios e decisão sobre a diferença de imports antes de promover o `.ko` atual.
3. Fazer validação dinâmica supervisionada no aparelho, com registro de logs e estado observado; manter o resultado separado da evidência estática.
