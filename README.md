# Reconstrucao de Drivers do NX809J (REDMAGIC 11 Pro+)

Este repositorio preserva a cadeia de engenharia reversa, reconstrucao em C e
validacao dos modulos vendor do **ZTE NX809J, REDMAGIC 11 Pro+**, para Android
16 e Kernel GKI 6.12.23.

## Estado e limite da afirmacao

O arquivo `.ko` stock adquirido localmente e a fonte de verdade do NX809J.
Codigo publicado na Internet, drivers de aparelhos semelhantes e nomes
inferidos nao sao aceitos como prova de comportamento deste dispositivo.

Uma compilacao bem-sucedida, paridade de simbolos ou um `insmod` isolado nao
significam reconstrucao funcional completa. O projeto separa estes estados:

- `INCOMPLETE`: existem funcoes, tipos, caminhos ou evidencias pendentes.
- `STATIC_ALIGNED_CANDIDATE`: todos os gates offline passaram, mas o hardware
  ainda nao foi validado.
- `HARDWARE_VALIDATED`: o candidato exato passou pelo protocolo controlado no
  aparelho, com logs e rollback.
- `RELEASE_ELIGIBLE`: revisao independente e manifestos finais tambem passaram.

O `zte_tpd` ainda esta classificado como
[`legacy_artifact_not_verified`](./kernel_development/drivers/reconstructed/zte_tpd/STATUS.md).
Nenhum driver deve ser descrito como `100%` apenas com evidencia estatica.

## Fonte da verdade

Leia estes documentos antes de alterar qualquer driver:

- [Politica local do NX809J](./NX809J_LOCAL_SOURCE_OF_TRUTH.md)
- [Esteira completa de reconstrucao offline](./reverse_engineering/docs/PIPELINE_RECONSTRUCAO_OFFLINE_TOTAL.md)
- [Dossie reverso de hardware](./reverse_engineering/docs/NX809J_DOSSIE_HARDWARE_REVERSO.md)
- [Ciclo obrigatorio para LLMs](./workspace_tools/reconstruction_pipeline/LLM_MANDATORY_RECONSTRUCTION_CYCLE.md)
- [Guia de harness e microtarefas](./reverse_engineering/docs/GUIA_HARNESS_E_ATESTACAO_MICROTAREFAS.md)

Documentacao oficial do Linux, Android GKI e LLVM pode explicar contratos
genericos do Kernel 6.12. Ela nao substitui ELF, assembly, relocacoes, KCFI,
Ghidra/P-Code e DTB/DTBO extraidos dos nossos artefatos locais.

## Auditoria offline

O auditor nao usa ADB, fastboot, `insmod`, `rmmod` ou escrita de particoes. Ele
mede a completude da evidencia por driver e retorna codigo diferente de zero
enquanto houver lacunas:

```powershell
python .\workspace_tools\reconstruction_pipeline\audit_offline_reconstruction.py `
  --engineering-root C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia `
  --all
```

O relatorio padrao e gravado em
`reverse_engineering/validation/OFFLINE_RECONSTRUCTION_AUDIT.json`, acompanhado
de uma versao Markdown. O veredito offline maximo e
`STATIC_ALIGNED_CANDIDATE`; a ferramenta nunca declara equivalencia fisica.

O pacote derivado publicado atualmente contem 624/624 funcoes com pseudocodigo,
P-Code e assembly integral. Consulte o
[manifesto de publicacao](./reverse_engineering/validation/OFFLINE_EVIDENCE_PUBLICATION.md).

Para materializar antes todo o assembly stock por identidade
`nome@endereco`:

```powershell
python .\workspace_tools\reconstruction_pipeline\materialize_offline_assembly.py `
  --engineering-root C:\Users\adriano\Desktop\emulador\kernel-docker-workspace\engenharia `
  --all
```

## Estrutura

- [`reverse_engineering/`](./reverse_engineering/): aquisicao preservada,
  exports Ghidra, P-Code, assembly, documentos de transicao e evidencias.
- [`kernel_development/`](./kernel_development/): fontes reconstruidas,
  Kconfig/Makefile, builds e modulos candidatos.
- [`workspace_tools/reconstruction_pipeline/`](./workspace_tools/reconstruction_pipeline/):
  extratores, comparadores, harnesses e verificadores executaveis.

## Regras de contribuicao

1. Identifique cada entrada por caminho, tamanho e SHA-256.
2. Mapeie toda funcao stock para fonte, assembly, pseudocodigo, P-Code e teste.
3. Nao invente tipos, offsets, registradores, locks ou semantica de bits.
4. Registre divergencias intencionais; nao esconda diferencas para obter um
   numero de paridade artificial.
5. Reexecute os gates afetados sempre que fonte, toolchain, `.config`,
   `Module.symvers`, DTB/DTBO ou script de analise mudar.

Licenca: GPL-2.0.
