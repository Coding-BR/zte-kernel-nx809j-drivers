# fp_goodix — auditoria integral 2026-11-02

## Resultado

A auditoria estrita no Docker classificou o candidato como `static_verified`. Foram feitos dois builds limpos e independentes usando a imagem/toolchain e o manifesto de kernel NX809J versionados. O SHA-256 do `.ko` candidato é `fc9a6624521aad6faf2300dfa5589358e882f7eb80dcbf037e54a5e4aaaa9595` (721560 bytes), e o mapa declara o mesmo hash.

As verificações de ELF AArch64 relocável, imports, aliases, namespace, vermagic alvo, rastreabilidade de 30 funções e identidade da fonte Docker passaram. Os dois builds frescos são reproduzíveis entre si. O candidato atual difere do rebuild no `.note.gnu.build-id`, que é alocado, e em seções não alocadas de BTF/debug. Conteúdo de código/dados alocados, layout das seções alocadas e `modinfo` coincidem; o check estrito `candidate_loadable_sections_match_fresh` permanece falso pela diferença no build ID. O relatório também mantém a diferença de metadados `depends` do módulo stock para o target atual.

A comparação AArch64 por função passou 30/30 para stock versus candidato atual e para stock versus rebuild fresco. A verificação das microtarefas contra o índice Git passou 30/30.

## KCFI: resultado estrito pendente

Os relatórios KCFI estritos de candidato atual e rebuild fresco falham nos mesmos três símbolos: `gf_disable_irq`, `gf_enable_irq` e `nav_event_input`. O stock tem 23 registros válidos e exclui esses três porque o preâmbulo de 4 bytes sobreporia o corpo da função anterior (`gf_release+0xec`, `gf_disable_irq+0x3c` e `gf_enable_irq+0x50`, respectivamente). O candidato tem 26 registros.

O inventário Ghidra mostra chamadas diretas incondicionais de `gf_ioctl` para os três símbolos. Isso não descarta outras referências por endereço ou callbacks. Portanto, a comparação KCFI **não** é declarada PASS; a classificação continua aberta para revisão independente. Os JSONs estritos originais estão preservados em `assembly/`.

## Problemas encontrados e correções

1. O candidato e o `candidate_sha256` do snapshot Docker estavam antigos e inconsistentes com a árvore versionada. O Makefile do snapshot também divergia. Alinhei o Makefile, o mapa e o `.ko` Docker com a fonte versionada; os hashes de inputs e do candidato agora coincidem para `fp_goodix`.
2. Executar o auditor contra a raiz Docker sem resolver o manifesto do repositório fazia o Kbuild tentar usar diretamente um volume de fonte sem `include/generated/autoconf.h`, `include/config/auto.conf` e `rustc_cfg`. Corrigi a resolução padrão para localizar `kernel_development/config/target_kernel.json` mesmo quando a fonte auditada é o snapshot Docker. O comando padrão agora seleciona o output volume preparado e passa.
3. A auditoria comparava o SHA integral do candidato com o rebuild apesar de conteúdo funcional alocado idêntico. O gate agora separa conteúdo de código/dados, layout de seções alocadas, `.modinfo`, metadados alocados como build ID e seções não alocadas de BTF/debug. A diferença do build ID segue visível e o hash integral diferente não é tratado como identidade binária.
4. A checagem local de microtarefas encontrou hashes inconsistentes em evidência de uma tarefa. Após restaurar os caminhos/hashes corretos, a verificação do índice Git passou 30/30.

## Comandos reproduzidos

```powershell
python workspace_tools/reconstruction_pipeline/validate_reconstructed_drivers.py --driver fp_goodix --rebuild --strict
python workspace_tools/reconstruction_pipeline/verify_driver_microtasks.py --driver fp_goodix --curated-root kernel_development/drivers/reconstructed --evidence-root reverse_engineering/validation/reconstructed --git-index
python workspace_tools/reconstruction_pipeline/audit_reconstructed_driver_inventory.py --repo-root C:/Users/adria/Desktop/drivers/zte-kernel-nx809j-drivers --engineering-root C:/Users/adria/Desktop/drivers/kernel-docker-workspace/engenharia
```

`manifest.json` registra SHA-256 bruto e SHA-256 com finais de linha normalizados para LF nos artefatos textuais, para que a verificação não dependa de `core.autocrlf`.

## Limites

`static_verified` não prova equivalência semântica, igualdade estrita de todas as seções carregáveis, aprovação KCFI estrita, revisão independente do mapa nem funcionamento no hardware. Não foram executados ADB, `insmod`, `rmmod` ou fastboot. A diferença KCFI e os metadados stock/target permanecem documentados.
