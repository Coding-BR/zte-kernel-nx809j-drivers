# Atestação da microtarefa rdbg_probe

Data: 2026-10-28. Função stock: rdbg_probe@001004ac. Esta atestação cobre somente essa função. O mapa mantém o estado implemented_pending_independent_review; a promoção do driver não está autorizada.

## Identidade e build

- Módulo stock: SHA-256 05aaaf7e0da03cbf25343e32d9a0a7a965de6907eef342a1d9d4b0b55cd11a12.
- Candidato: SHA-256 82d7dfbcc33096fe1c616767671dbd4a22580128af18b669d3a53b810b347f54, 577872 bytes.
- O protocolo Docker executou dois ciclos independentes com o mesmo hash. A auditoria separada de engenharia/curated/rdbg também compilou os dois ciclos com o mesmo hash.
- Imagem: nubia-sm8850-kernel-builder:latest, ID sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390; Clang clang-r536225.
- A sincronização para o snapshot curado incluiu rdbg_fn_04_probe.c; o manifesto está em docker_source_sync.json.

## Gates da função

O relatório final do protocolo está em protocol_core/hard_protocol_report.json. Todos os oito gates passaram: identidade do módulo, identidade do mapa, Joern scoped, slice Joern, builds Docker reproduzíveis, assembly/relocações, KCFI e Ghidra/P-Code.

- Assembly: comparação estrita aprovada em .text, com 150 instruções e 600 bytes nos dois módulos. Instruções, relocação resolvida, seção e tamanho do símbolo coincidem. Os campos globais do candidato são ligados aos offsets stock por acessos idênticos nos mesmos locais.
- Ghidra: corpo de 544 bytes em ambos; C normalizado, corpo e forma das operações P-Code passaram. A comparação normalizada do C foi direta, sem fallback de P-Code, de retorno ou de ilha assembly.
- KCFI: tipo 0xc7f8c87c igual ao stock.
- Joern 4.0.548: gates scoped e slice aprovados, sem problemas de parse.

## Estado e limites

- promotion_authorized é false. O runner não promove microtarefas; ainda estão pendentes modelo limitado, tabela de callbacks, harness host, revisão independente, tipos KMI, diagnóstico LLVM IR, sanitizers, contraexemplo semântico e ledger de efeitos de estado.
- A auditoria do módulo completo no snapshot curado permanece incomplete_or_failed; não há verificação em hardware.
- rdbg_probe permanece implemented_pending_independent_review. O driver RDBG ainda não está completo: rdbg_read, rdbg_write e init_module seguem sem mapeamento. A reconstrução parcial não deve ser tratada como módulo pronto para promoção ou carregamento no aparelho.

## Índice das evidências

- protocol_plan/: plano pronto, sem bloqueios.
- protocol_core/: relatório final, assembly, KCFI, comparação Ghidra/P-Code, Joern e build Docker reproduzível.
- candidate_ghidra/rdbg.ko/: export Ghidra do candidato, ligado ao módulo pelo MD5.
- docker_source_sync.json, docker_curated_audit.json e .md: sincronização e rebuild do snapshot engenharia/curated.
- docker_curated_builds/: módulos dos dois ciclos do snapshot curado.
- ../../../../../../kernel_development/drivers/reconstructed/rdbg/reconstruction_map.json: estado por função e funções RDBG ainda sem mapeamento.
