# Contribution Contract / Contrato de Contribuição

[Português](#português) | [English](#english)

## Português

### Regra de aceitação

Uma Pull Request só pode entrar em `main` quando a mudança é reproduzível no
ambiente fixado deste repositório. Texto afirmando que “funciona” não é prova.
O autor deve enviar os scripts, logs, relatórios e hashes que permitem ao
mantenedor repetir a mesma esteira local.

O gate do GitHub valida integridade e completude, mas não executa scripts da PR
nem compila o kernel. A aprovação final exige reprodução local pelo mantenedor.

### Fluxo obrigatório

1. Sincronize sua branch com o `main` atual.
2. Execute `reproducible_environment/bootstrap.ps1` ou o equivalente Linux.
3. Faça a alteração sem substituir fontes de verdade por dados da Internet.
4. Copie `contributions/TEMPLATE` para `contributions/<id-unico>`.
5. Execute `reproduce.ps1` ou `reproduce.sh` na sua máquina.
6. Preencha os códigos de saída e estados reais no `manifest.json`.
7. Atualize todos os hashes com:

```powershell
python .\workspace_tools\reconstruction_pipeline\prepare_contribution_bundle.py `
  --manifest .\contributions\<id-unico>\manifest.json `
  --base origin/main
```

8. Faça commit do código, scripts, logs, relatórios e manifest.
9. Valide o commit antes do push:

```powershell
$base = git rev-parse origin/main
$head = git rev-parse HEAD
python .\workspace_tools\reconstruction_pipeline\validate_contribution.py `
  --base $base --head $head
```

10. Abra uma Pull Request e aguarde a reprodução independente do mantenedor.

### Evidências mínimas

Toda PR exige `reference_modules`, `environment_static` e `validator_tests` com
`PASS` e código zero. Alterações de driver também exigem:

- auditoria offline por driver;
- duas compilações limpas no Docker fixado;
- verificação KMI/KCFI e paridade registrada no relatório;
- ciclo obrigatório de reconstrução por função/microtarefa;
- bloqueadores restantes declarados sem ocultação.

Uma contribuição `incremental` pode registrar `INCOMPLETE` nos gates de driver,
desde que eles tenham sido executados corretamente e os bloqueadores sejam
explícitos. Uma `promotion` exige todos os gates offline em `PASS` e o estado
`STATIC_ALIGNED_CANDIDATE`. Nenhum pacote público pode declarar validação de
hardware; isso depende do protocolo controlado no NX809J.

### Proteção da branch

- Pull Request obrigatória para colaboradores externos.
- Um responsável definido em `CODEOWNERS` deve revisar.
- O check `Contribution gate / Evidence contract` é obrigatório.
- Branch atualizada, conversas resolvidas e histórico linear.
- Force-push e exclusão de `main` são proibidos.
- Alterações do próprio gate continuam sujeitas ao validador carregado da branch
  base, não ao código proposto na PR.

O repositório possui atualmente um único administrador. Ele permanece como
bypass operacional para não bloquear manutenção emergencial, mas a política
pública exige que alterações técnicas normais usem o mesmo pacote de evidência.

## English

### Acceptance rule

A Pull Request may enter `main` only when the change is reproducible in this
repository's pinned environment. A statement that something “works” is not
evidence. The author must submit scripts, logs, reports, and hashes that allow
the maintainer to replay the same local pipeline.

The GitHub gate validates integrity and completeness, but it neither executes
PR scripts nor compiles the kernel. Final approval requires a local maintainer
rerun.

### Mandatory flow

1. Synchronize your branch with the current `main`.
2. Run `reproducible_environment/bootstrap.ps1` or the Linux equivalent.
3. Make the change without replacing local sources of truth with Internet data.
4. Copy `contributions/TEMPLATE` to `contributions/<unique-id>`.
5. Run `reproduce.ps1` or `reproduce.sh` on your machine.
6. Record the real exit codes and statuses in `manifest.json`.
7. Refresh every hash with:

```powershell
python .\workspace_tools\reconstruction_pipeline\prepare_contribution_bundle.py `
  --manifest .\contributions\<unique-id>\manifest.json `
  --base origin/main
```

8. Commit code, scripts, logs, reports, and the manifest.
9. Validate the commit before pushing:

```powershell
$base = git rev-parse origin/main
$head = git rev-parse HEAD
python .\workspace_tools\reconstruction_pipeline\validate_contribution.py `
  --base $base --head $head
```

10. Open a Pull Request and wait for the maintainer's independent replay.

### Minimum evidence

Every PR requires `reference_modules`, `environment_static`, and
`validator_tests` with `PASS` and exit code zero. Driver changes also require:

- a per-driver offline audit;
- two clean builds in the pinned Docker environment;
- KMI/KCFI checks and parity recorded in the report;
- the mandatory per-function/microtask reconstruction cycle;
- explicit disclosure of every remaining blocker.

An `incremental` contribution may report `INCOMPLETE` driver gates when they ran
correctly and all blockers are explicit. A `promotion` requires every offline
gate to be `PASS` and the state `STATIC_ALIGNED_CANDIDATE`. A public bundle may
not claim hardware validation; that requires the controlled NX809J protocol.

### Branch protection

- Pull Requests are mandatory for external collaborators.
- A `CODEOWNERS` maintainer must review.
- `Contribution gate / Evidence contract` is a required check.
- The branch must be current, conversations resolved, and history linear.
- Force-push and deletion of `main` are forbidden.
- Changes to the gate itself are still checked by the validator loaded from the
  base branch, not by the code proposed in the PR.

The repository currently has one administrator. The administrator remains an
operational bypass to avoid blocking emergency maintenance, but the public
policy requires normal technical changes to use the same evidence bundle.
