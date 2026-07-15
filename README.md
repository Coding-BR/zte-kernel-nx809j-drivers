# NX809J Kernel Driver Reconstruction / Reconstrução de Drivers do Kernel NX809J

[Português](#português) | [English](#english)

> **Scope / Escopo:** ZTE NX809J, **REDMAGIC 11 Pro+**, Android 16, GKI
> 6.12.23. The build environment is reproducible; reconstructed candidates are
> not automatically hardware-equivalent. / O ambiente de compilação é
> reproduzível; os candidatos reconstruídos não são automaticamente
> equivalentes no hardware.

## Português

Este repositório preserva a cadeia auditável de engenharia reversa,
reconstrução em C e validação dos módulos vendor do NX809J. O `.ko` stock
extraído localmente é a fonte de verdade. Código publicado para aparelhos
semelhantes não é aceito como prova do comportamento deste dispositivo.

### ROM userdebug e comunidade

A ROM userdebug usada no projeto é necessária para reproduzir a coleta de logs,
comparar o comportamento do kernel e executar futuramente a validação dinâmica:

- [ROM userdebug do NX809J](https://drive.google.com/file/d/1csCT9Fakets_ApsiDB7-apQmIZrgR75Y/view?usp=sharing)
- [Comunidade e contato no Telegram](https://t.me/redmagic11PR0)

Antes de usar a ROM, confirme o modelo, preserve backups das partições e
registre o SHA-256 do arquivo. A ROM não substitui os `.ko` stock, Device Tree
ou evidências registradas.

### Apoie o projeto

As doações ajudam a manter armazenamento, ferramentas, builds locais e o
trabalho independente de reconstrução do NX809J.

<p align="center">
  <a href="https://www.paypal.com/donate/?business=adrianojr59%40gmail.com&amp;no_recurring=0&amp;item_name=NX809J%20Kernel%20Driver%20Reconstruction&amp;currency_code=USD">
    <img src="https://img.shields.io/badge/DOAR%20COM%20PAYPAL-0070BA?style=for-the-badge&amp;logo=paypal&amp;logoColor=white" height="44" alt="Doar com PayPal">
  </a>
</p>

<p align="center"><strong>Conta PayPal:</strong> adrianojr59@gmail.com</p>

### Estados aceitos

- `INCOMPLETE`: ainda existem funções, tipos, caminhos ou evidências pendentes.
- `STATIC_ALIGNED_CANDIDATE`: todos os gates offline passaram para os hashes
  registrados; o hardware ainda não foi validado.
- `HARDWARE_VALIDATED`: o candidato exato passou pelo protocolo controlado no
  aparelho, com logs e rollback.
- `RELEASE_ELIGIBLE`: revisão independente e manifestos finais também passaram.

Compilar, obter paridade de símbolos ou executar `insmod` isoladamente não prova
reconstrução funcional completa. Os candidatos publicados continuam
`INCOMPLETE` até que cada gate aplicável seja comprovado.

### Ambiente e módulos publicados

- [12 candidatos ZTE gerenciados, as bases `zlog_exception` e `zlog_common`, e o snapshot stock completo com 335 módulos](./reference_modules/README.md)
- [`zlog_common`: fonte, candidato, harness e 13 microtarefas atestadas](./kernel_development/drivers/reconstructed/zlog_common/STATUS.md)
- [`zte_ir`: candidato canônico, harness 8/8 e runbook de rollback](./kernel_development/drivers/zte_ir/STATUS.md)
- [`zte_tpd`: candidato `87162be...`, KMI 152/152, mapa 367/367 e auditoria offline 8/10](./kernel_development/drivers/reconstructed/zte_tpd/STATUS.md)
- [Ambiente Docker, kernel, toolchains e Ghidra fixados](./reproducible_environment/README.md)
- [Requisitos compartilhados e procedimento de setup](./SHARED_ENVIRONMENT_REQUIREMENTS.md)
- [Esteira completa de reconstrução offline](./reverse_engineering/docs/PIPELINE_RECONSTRUCAO_OFFLINE_TOTAL.md)
- [Decomposição por função: pseudocódigo C, P-Code e Assembly](./reverse_engineering/docs/DECOMPOSICAO_MODULOS_STOCK.md)
- [Tecnicas avancadas e observabilidade real do GKI 6.12/userdebug](./reverse_engineering/docs/TECNICAS_AVANCADAS_RECONSTRUCAO_ANDROID_GKI_6_12.md)
- [Dossiê reverso de hardware](./reverse_engineering/docs/NX809J_DOSSIE_HARDWARE_REVERSO.md)

Validação inicial após o clone:

```powershell
python .\workspace_tools\reconstruction_pipeline\manage_reference_modules.py verify
python .\workspace_tools\reconstruction_pipeline\validate_module_decomposition.py --check
python .\workspace_tools\reconstruction_pipeline\audit_userdebug_observability.py --check
python .\reproducible_environment\verify_environment.py --mode static
```

### Contribuições rigorosas

A branch `main` não aceita contribuições externas diretas. Toda alteração deve
chegar por Pull Request com:

1. scripts `reproduce.ps1` e `reproduce.sh`;
2. relatórios e logs da mesma esteira local;
3. SHA-256 de cada script, evidência e arquivo alterado;
4. manifest `contributions/<id>/manifest.json` preso ao commit-base;
5. gate automático aprovado e revisão do mantenedor após reprodução local.

O GitHub Actions **nunca compila o kernel ou os módulos**. Ele verifica somente
o contrato, os hashes e os relatórios enviados usando o validador da branch
protegida. Workflows de compilação são proibidos e rejeitados pela política.
Consulte o
[guia bilíngue de contribuição](./CONTRIBUTING.md).

### Estrutura

- [`reverse_engineering/`](./reverse_engineering/): aquisição, Ghidra, P-Code,
  assembly, documentos de transição e evidências.
- [`kernel_development/`](./kernel_development/): fontes reconstruídas,
  Kconfig/Makefile, builds e candidatos.
- [`workspace_tools/reconstruction_pipeline/`](./workspace_tools/reconstruction_pipeline/):
  extratores, comparadores, harnesses e validadores.
- [`contributions/`](./contributions/): atestações imutáveis enviadas com cada PR.

Artefatos forenses antigos podem permanecer no idioma original porque sua
tradução alteraria conteúdo coberto por hash. Os documentos públicos de entrada
e as novas políticas são mantidos em português e inglês.

## English

This repository preserves the auditable reverse-engineering, C reconstruction,
and validation chain for NX809J vendor modules. The locally acquired stock
`.ko` is the source of truth. Internet code for similar devices is not accepted
as evidence of this device's behavior.

### Userdebug ROM and community

The userdebug ROM used by this project is required to reproduce log capture,
compare kernel behavior, and eventually perform dynamic validation:

- [NX809J userdebug ROM](https://drive.google.com/file/d/1csCT9Fakets_ApsiDB7-apQmIZrgR75Y/view?usp=sharing)
- [Telegram community and contact](https://t.me/redmagic11PR0)

Before using the ROM, confirm the model, preserve partition backups, and record
the file SHA-256. The ROM does not replace the stock `.ko` files, Device Tree,
or recorded evidence.

### Support the project

Donations help cover storage, tooling, local builds, and the independent NX809J
reconstruction effort.

<p align="center">
  <a href="https://www.paypal.com/donate/?business=adrianojr59%40gmail.com&amp;no_recurring=0&amp;item_name=NX809J%20Kernel%20Driver%20Reconstruction&amp;currency_code=USD">
    <img src="https://img.shields.io/badge/DONATE%20WITH%20PAYPAL-0070BA?style=for-the-badge&amp;logo=paypal&amp;logoColor=white" height="44" alt="Donate with PayPal">
  </a>
</p>

<p align="center"><strong>PayPal account:</strong> adrianojr59@gmail.com</p>

### Accepted states

- `INCOMPLETE`: functions, types, paths, or evidence are still missing.
- `STATIC_ALIGNED_CANDIDATE`: every offline gate passed for the recorded hashes;
  hardware validation is still pending.
- `HARDWARE_VALIDATED`: the exact candidate passed the controlled device
  protocol with logs and rollback.
- `RELEASE_ELIGIBLE`: independent review and final manifests also passed.

A successful build, symbol parity, or an isolated `insmod` does not prove full
functional reconstruction. Published candidates remain `INCOMPLETE` until all
applicable gates are demonstrated.

### Published environment and modules

- [12 managed ZTE candidates, the `zlog_exception` and `zlog_common` foundations, and a complete 335-module stock snapshot](./reference_modules/README.md)
- [`zlog_common`: source, candidate, harness, and 13 attested microtasks](./kernel_development/drivers/reconstructed/zlog_common/STATUS.md)
- [`zte_ir`: canonical candidate, 8/8 harness, and rollback runbook](./kernel_development/drivers/zte_ir/STATUS.md)
- [`zte_tpd`: `87162be...` candidate, exact 152/152 KMI, 367/367 map, and 8/10 offline audit](./kernel_development/drivers/reconstructed/zte_tpd/STATUS.md)
- [Pinned Docker environment, kernel, toolchains, and Ghidra](./reproducible_environment/README.md)
- [Shared requirements and setup procedure](./SHARED_ENVIRONMENT_REQUIREMENTS.md)
- [Complete offline reconstruction pipeline](./reverse_engineering/docs/PIPELINE_RECONSTRUCAO_OFFLINE_TOTAL.md)
- [Per-function decomposition: C pseudocode, P-Code, and assembly](./reverse_engineering/docs/DECOMPOSICAO_MODULOS_STOCK.md)
- [Advanced methods and actual GKI 6.12/userdebug observability](./reverse_engineering/docs/TECNICAS_AVANCADAS_RECONSTRUCAO_ANDROID_GKI_6_12.md)
- [Reverse hardware dossier](./reverse_engineering/docs/NX809J_DOSSIE_HARDWARE_REVERSO.md)

Initial validation after cloning:

```powershell
python .\workspace_tools\reconstruction_pipeline\manage_reference_modules.py verify
python .\workspace_tools\reconstruction_pipeline\validate_module_decomposition.py --check
python .\workspace_tools\reconstruction_pipeline\audit_userdebug_observability.py --check
python .\reproducible_environment\verify_environment.py --mode static
```

### Strict contributions

The `main` branch does not accept direct external contributions. Every change
must arrive through a Pull Request containing:

1. `reproduce.ps1` and `reproduce.sh` scripts;
2. reports and logs from the same local pipeline;
3. SHA-256 for every script, evidence file, and changed file;
4. a `contributions/<id>/manifest.json` bound to the base commit;
5. a passing automated gate and maintainer review after a local rerun.

GitHub Actions **never compiles the kernel or modules**. It validates only the
submitted contract, hashes, and reports with the protected branch's validator.
Build workflows are forbidden and rejected by policy. Read the
[bilingual contribution guide](./CONTRIBUTING.md).

### Layout

- [`reverse_engineering/`](./reverse_engineering/): acquisition, Ghidra,
  P-Code, assembly, transition documents, and evidence.
- [`kernel_development/`](./kernel_development/): reconstructed sources,
  Kconfig/Makefile, builds, and candidates.
- [`workspace_tools/reconstruction_pipeline/`](./workspace_tools/reconstruction_pipeline/):
  extractors, comparators, harnesses, and validators.
- [`contributions/`](./contributions/): immutable attestations submitted with each PR.

Historical forensic artifacts may remain in their source language because
translation would modify hash-covered evidence. Public entry documents and new
policies are maintained in Portuguese and English.

License / Licença: GPL-2.0.
