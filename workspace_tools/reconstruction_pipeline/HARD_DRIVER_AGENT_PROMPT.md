# Prompt Obrigatorio para Continuar um Driver Dificil

Copie o bloco abaixo para a IA que continuar o trabalho. Substitua apenas os
campos entre `<...>`. O prompt nao concede autorizacao para promocao ou teste em
hardware.

---

Voce esta trabalhando na reconstrucao offline de um driver vendor do NX809J.

Raiz unica do repositorio: `<REPO_ROOT>`

Driver ativo: `<DRIVER>`

Job do protocolo: `<JOB_JSON>`

Pasta nova de evidencia desta execucao: `<OUTPUT_DIR>`

Docker engineering root: `<ENGINEERING_ROOT>`

Java 21 fixado: `<JAVA_HOME>`

Antes de qualquer edicao, leia integralmente:

1. `NX809J_LOCAL_SOURCE_OF_TRUTH.md`;
2. `workspace_tools/reconstruction_pipeline/LLM_MANDATORY_RECONSTRUCTION_CYCLE.md`;
3. `workspace_tools/reconstruction_pipeline/HARD_DRIVER_RECONSTRUCTION_PROTOCOL.md`;
4. `reverse_engineering/docs/PIPELINE_RECONSTRUCAO_OFFLINE_TOTAL.md`;
5. `reverse_engineering/docs/PROTOCOLO_EQUIVALENCIA_BINARIA_COMPILADOR.md`;
6. `reverse_engineering/docs/PIPELINE_DELEGACAO_LLM_E_MICROPROVAS.md`.

Trate o `.ko` stock local, seu Assembly, relocacoes, KCFI, P-Code, export Ghidra
e DTS/DTBO local como fontes de verdade. Internet, drivers semelhantes,
similaridade BSim, decompiladores e outras LLMs podem sugerir tecnicas, mas nao
podem provar nenhum fato especifico do NX809J.

Ao comparar simbolos, separe imports, exports reais (`__ksymtab_*`) e simbolos
internos. Imports/exports divergentes bloqueiam ABI; nomes internos extras exigem
classificacao por evidencia. Nunca transforme um delta interno em PASS apenas
removendo-o do relatorio: elimine do build somente auxiliares sem referencias e
fora do mapa, preservando-os como evidencia.

Regras inviolaveis:

- preserve todo WIP existente e mostre `git status --short` antes e depois;
- trabalhe em uma funcao stock ou SCC por vez;
- use a identidade `stock_function@stock_entry`, nunca apenas o nome;
- classifique todos os perfis aplicaveis; nao rebaixe fluxo indireto, hardware,
  lifecycle, firmware, mmap ou concorrencia;
- separe observacoes com localizador, inferencias, desconhecidos e
  contradicoes;
- execute Joern e Docker; nenhum dos dois substitui o outro;
- Joern possui poder de veto estrutural, mas nunca promove;
- use KCFI para toda funcao/callsite aplicavel e compare Assembly/relocacoes;
- valide KMI com `audit_module_abi_surface.py`, compondo o `Module.symvers`
  comum do Docker com os `vendor.Module.symvers` realmente usados pelo
  snapshot; valide tambem aliases, exports, metadados, dependencias e vermagic;
- se o candidato mudar apenas metadados, prove a estabilidade das secoes KCFI
  com `audit_kcfi_artifact_stability.py` antes de reutilizar qualquer evidencia;
- um slice Joern deve ser filtrado, hashado, limitado e ter timeout; reduza a
  source view antes de ampliar o limite;
- para uma funcao dominada por divergencia de codegen, uma ilha AArch64 exata
  pode ser considerada somente quando for materializada de Assembly stock
  hashado, com contagem de instrucoes, corpo, relocacoes, KCFI e build Docker
  reproduzivel. Use `materialize_stock_function_assembly.py` como gerador e
  nunca invente `.inst` nem use bytes opacos para encobrir uma divergencia;
- se o Ghidra emitir `FUN_<endereco>`, `SUB_<endereco>` ou
  `GHIDRA_STRING[...]`, o fallback P-Code deve registrar o artefato nomeado,
  comparar a ordem das chamadas e o C normalizado inteiro, e continuar
  exigindo paridade independente de Assembly/relocacoes. O fallback nunca
  transforma body-size, P-Code, KCFI, Joern ou Docker em PASS;
- procure contraexemplos de retorno, stores, calls, ordem, errno e cleanup;
- nao modele MMIO, IRQ, DMA, firmware ou bus como se o modelo provasse o efeito
  fisico;
- nao use cast, hardening desativado, Assembly `naked`, `.inst` opaco ou
  comparacao relaxada para esconder divergencia;
- qualquer mudanca invalida relatorios presos ao hash anterior;
- nao altere `MICROTASKS.json`, `reconstruction_map.json`, auditorias ou
  atestacoes para fabricar `PASS`;
- nao carregue modulo, use ADB/fastboot, escreva particao ou teste hardware sem
  autorizacao separada, plano de rollback e logs;
- converta toda evidencia temporaria aprovada em pacote versionado; uma pasta
  `.tmp_*` nunca e a unica procedencia de um resultado final.

Primeiro valide o job sem executar gates caros:

```powershell
python .\workspace_tools\reconstruction_pipeline\run_hard_driver_protocol.py `
  --job "<JOB_JSON>" `
  --repo-root "<REPO_ROOT>" `
  --engineering-root "<ENGINEERING_ROOT>" `
  --java-home "<JAVA_HOME>" `
  --output-dir "<PLAN_OUTPUT_DIR>" `
  --mode plan
```

Leia `hard_protocol_plan.json`. Se houver bloqueador de identidade, hash, mapa,
Joern lock, Java ou Docker, corrija a entrada; nao edite C ainda.

Depois produza MP0-MP6 e o contrato de teste. Somente quando nao houver
contradicao, proponha um patch atomico. Execute o nucleo em pasta vazia:

Para uma ilha exata, preserve também o vínculo de proveniência no pacote:

```powershell
python .\workspace_tools\reconstruction_pipeline\materialize_stock_function_assembly.py `
  --assembly "<STOCK_ASSEMBLY>" `
  --function "<STOCK_FUNCTION>" `
  --output "<EXACT_SOURCE>"
```

O comando acima é apenas a materialização inicial. Antes de compilar, ajuste
somente relocations comprovadas para símbolos/sections do candidato e registre
cada ajuste no `decision.json`; o comparador de Assembly deve continuar vendo
o mesmo corpo e a mesma ordem de relocations do stock.

```powershell
python .\workspace_tools\reconstruction_pipeline\run_hard_driver_protocol.py `
  --job "<JOB_JSON>" `
  --repo-root "<REPO_ROOT>" `
  --engineering-root "<ENGINEERING_ROOT>" `
  --java-home "<JAVA_HOME>" `
  --output-dir "<CORE_OUTPUT_DIR>" `
  --mode core
```

Se o nucleo falhar, use o primeiro contraexemplo reproduzivel e volte ao menor
bloco causal. Nao empilhe tentativas de codegen sem explicar a divergencia. Se o
nucleo passar, execute os gates adicionais do perfil: harness/sanitizers,
CBMC/fuzzing, lock/lifetime, Ghidra candidato, KMI ou contexto de hardware.

Antes de solicitar atestacao, exija que todos os artefatos finais apontem para o
mesmo hash de fonte e candidato. A revisao independente deve ser feita por outra
pessoa ou sessao a partir do stock, sem confiar no seu resumo. Use apenas os
atestadores seletivos existentes; `run_hard_driver_protocol.py` nunca autoriza
promocao.

Sua resposta final deve incluir:

```text
driver e identidades trabalhadas
perfis aplicados e por que
hash stock, hash da arvore fonte e hash candidato
resultado Joern e caminho do report
resultado Docker 2x e caminho do report
resultado KCFI, Assembly/relocacoes e harness
contraexemplos encontrados e corrigidos
evidencias ainda ausentes
hardware: DEFERRED ou resultado autorizado
promocao: NOT_AUTHORIZED ou atestador seletivo usado com evidencia
git diff --stat restrito ao escopo
```

Sem todos os gates aplicaveis, escreva explicitamente:

```text
INCOMPLETO: nao autorizado a declarar 100%.
```

---
