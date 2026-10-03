# Protocolo de reconstrução estática — Android GKI/AArch64

Este documento é a regra operacional para qualquer driver reconstruído a partir
de um módulo stock. Ele não autoriza declarar equivalência semântica, segurança
ou funcionamento em hardware. Toda conclusão deve ser sustentada por artefatos
hash-bound e por identidade `stock_function@stock_entry`.

## Regra de decisão

Uma microtarefa somente pode ser promovida quando todos os gates exigidos por
ela passam sobre a mesma árvore de fonte e o mesmo candidato:

1. Ghidra: pseudocódigo, P-Code, relocations e assembly stock preservados.
2. Fonte: assinatura, offsets, constantes, ordem de efeitos e chamadas
   reconstruídos sem inventar APIs ou estruturas internas do GKI.
3. Docker: dois builds limpos e independentes com a imagem/toolchain canônicos;
   os módulos precisam ser byte-idênticos quando a reproducibilidade for
   exigida.
4. Assembly: comparação AArch64 estrita de instruções, tamanho, seção,
   branches, símbolos e relocations. Equivalência aproximada não é PASS.
5. KCFI: extração stock/candidato, presença de preâmbulo, seção, tamanho e
   type ID. Um type ID divergente bloqueia o gate; preâmbulo ausente deve ser
   classificado explicitamente, nunca tratado como match.
6. Joern: gate estrito, preferencialmente escopado à função. Se macros, aliases
   ou `noinline` impedirem o CPG, usar um source-view analítico separado,
   hashado e proibido como entrada de build. Modelos analíticos devem ser
   derivados do ELF/Ghidra e identificados como tais.
7. Teste direto: harness host com sucesso, erros observados, limites e teardown,
   em dois ciclos ASAN/UBSAN quando aplicável.
8. Evidência: cada saída recebe SHA-256; o manifesto usa caminhos portáveis e
   é verificado por `verify_driver_microtasks.py` antes da promoção.

## Fluxo recomendado

```text
stock ELF/Ghidra
      │ identidade por nome + entry
      ▼
fonte candidato ──► assinatura/KCFI e layout ──► harness direto
      │                    │                         │
      └──────────────► Docker 2× ──► ELF/ASM ────────┘
                               │
                         Joern estrito
                               │
                 relatório hash-bound + revisão
```

Para aliases gerados por macros, não se deve alterar o C de produção apenas
para satisfazer o parser. Copie a árvore para `joern_source_view_<driver>_<vN>`,
adicione o menor modelo analítico possível, execute
`run_joern_reconstruction_gate.py --strict` por identidade e registre o source
view e todos os relatórios no attestation versionado.

## Proteção contra erros de processo

- Nunca use `git add .` em um checkout com agentes paralelos. Faça staging por
  caminhos e, quando o manifesto estiver sujo por outros trabalhos, substitua
  somente as tarefas selecionadas no índice.
- Recalcule hashes a partir dos blobs do índice (`git show :path`) depois que o
  Git normalizar finais de linha.
- Nunca transforme `PASS` em atestado só por copiar status, assembly ou teste de
  outra função. A cobertura deve apontar diretamente para a identidade alvo.
- Preserve artefatos de falha e versões anteriores; uma correção só substitui a
  versão anterior após o novo gate passar.
- `PROMOTED_OFFLINE_EXACT` significa paridade offline hashada, não equivalência
  semântica integral. Hardware e revisão independente permanecem gates
  separados.

## Comandos canônicos

```powershell
python workspace_tools/reconstruction_pipeline/run_joern_reconstruction_gate.py `
  --driver <driver> --function <name>@<entry> --strict `
  --source-root kernel_development/drivers/reconstructed/<driver> `
  --ghidra-export reverse_engineering/validation/reconstructed/<driver>/offline_static/ghidra_stock `
  --reconstruction-map kernel_development/drivers/reconstructed/<driver>/reconstruction_map.json `
  --output-dir reverse_engineering/validation/reconstructed/<driver>/attestation/joern_<version>/<name>

python workspace_tools/reconstruction_pipeline/verify_driver_microtasks.py `
  --driver <driver> `
  --curated-root kernel_development/drivers/reconstructed `
  --evidence-root reverse_engineering/validation/reconstructed `
  --git-index
```

O build canônico deve usar `run_zte_tpd_canonical_build.py` quando o alvo for
`zte_tpd`, com a imagem `nubia-sm8850-kernel-builder:latest`, Clang
`clang-r536225`, o snapshot Docker
`C:\Users\adria\Desktop\drivers\kernel-docker-workspace\engenharia\curated`
e o candidato versionado correspondente. Para outros drivers, reproduzir a
mesma disciplina no Docker workspace, sem misturar artefatos entre fontes.

## Prompt reutilizável

```text
Reconstrua somente a microtarefa <DRIVER>/<STOCK_FUNCTION>@<STOCK_ENTRY>.
Use como raiz do repositório <REPO_ROOT> e como snapshot Docker
<DOCKER_WORKSPACE>. Leia integralmente o pseudocódigo, P-Code, assembly,
relocations, mapa e manifestos da identidade alvo antes de editar.

Preserve assinatura, type ID KCFI, offsets, constantes, ordem de efeitos,
branches, chamadas e símbolos comprovados. Não invente campos de estruturas,
casts para silenciar KCFI, APIs não exportadas, locks, alocações ou logs. Se o
alvo for gerado por macro ou omitido pelo Joern, mantenha a produção intacta e
crie um source-view analítico separado, explicitamente rotulado e hashado.

Valide, nesta ordem: (1) harness direto com sucesso, falhas, limites e teardown;
(2) dois builds Docker limpos e reproduzíveis; (3) assembly AArch64 estrita;
(4) KCFI stock versus candidato; (5) Joern v4.0.548 estrito e escopado; (6)
manifesto e SHA-256 de todos os artefatos. Um gate falho é BLOCKED, não PASS.
Não reutilize evidência de outra função. Registre limitações e deixe hardware,
revisão independente e equivalência semântica integral claramente separados.

Ao terminar, faça staging seletivo apenas dos artefatos desta identidade,
execute verify_driver_microtasks.py --git-index, rode a suíte da pipeline,
crie um commit descritivo e faça push para a branch de reconstrução. Preserve
todo trabalho não relacionado e informe o hash do commit, resultados dos gates,
próximo bloqueador e o que ainda não foi provado.
```
