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

### ROM userdebug, comunidade e apoio

A ROM userdebug usada no projeto é necessária para reproduzir a coleta de logs,
comparar o comportamento do kernel e executar futuramente a validação dinâmica:

- [ROM userdebug do NX809J](https://drive.google.com/file/d/1csCT9Fakets_ApsiDB7-apQmIZrgR75Y/view?usp=sharing)
- [Comunidade e contato no Telegram](https://t.me/redmagic11PR0)
- **Doações via PayPal:** `adrianojr59@gmail.com`

Antes de usar a ROM, confirme o modelo, preserve backups das partições e
registre o SHA-256 do arquivo. A ROM não substitui os `.ko` stock, Device Tree
ou evidências registradas.

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

- [12 módulos stock, 12 candidatos e snapshot completo com 335 módulos](./reference_modules/README.md)
- [Ambiente Docker, kernel, toolchains e Ghidra fixados](./reproducible_environment/README.md)
- [Requisitos compartilhados e procedimento de setup](./SHARED_ENVIRONMENT_REQUIREMENTS.md)
- [Esteira completa de reconstrução offline](./reverse_engineering/docs/PIPELINE_RECONSTRUCAO_OFFLINE_TOTAL.md)
- [Dossiê reverso de hardware](./reverse_engineering/docs/NX809J_DOSSIE_HARDWARE_REVERSO.md)

Validação inicial após o clone:

```powershell
python .\workspace_tools\reconstruction_pipeline\manage_reference_modules.py verify
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

O GitHub **não compila o kernel**. Ele verifica o contrato, os hashes e os
relatórios enviados usando o validador da branch protegida. Consulte o
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

### Userdebug ROM, community, and support

The userdebug ROM used by this project is required to reproduce log capture,
compare kernel behavior, and eventually perform dynamic validation:

- [NX809J userdebug ROM](https://drive.google.com/file/d/1csCT9Fakets_ApsiDB7-apQmIZrgR75Y/view?usp=sharing)
- [Telegram community and contact](https://t.me/redmagic11PR0)
- **PayPal donations:** `adrianojr59@gmail.com`

Before using the ROM, confirm the model, preserve partition backups, and record
the file SHA-256. The ROM does not replace the stock `.ko` files, Device Tree,
or recorded evidence.

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

- [12 stock modules, 12 candidates, and a complete 335-module snapshot](./reference_modules/README.md)
- [Pinned Docker environment, kernel, toolchains, and Ghidra](./reproducible_environment/README.md)
- [Shared requirements and setup procedure](./SHARED_ENVIRONMENT_REQUIREMENTS.md)
- [Complete offline reconstruction pipeline](./reverse_engineering/docs/PIPELINE_RECONSTRUCAO_OFFLINE_TOTAL.md)
- [Reverse hardware dossier](./reverse_engineering/docs/NX809J_DOSSIE_HARDWARE_REVERSO.md)

Initial validation after cloning:

```powershell
python .\workspace_tools\reconstruction_pipeline\manage_reference_modules.py verify
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

GitHub **does not compile the kernel**. It validates the submitted contract,
hashes, and reports with the protected branch's validator. Read the
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
