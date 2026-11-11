# Reavaliação hash-bound de relocations e assembly

**Driver:** zte_charger_policy  
**Data:** 2026-11-11  
**Resultado:** a comparação completa foi corrigida para carregar o ELF stock pelo módulo stock versionado. Os relatórios anteriores subcontavam funções exatas porque o caminho absoluto do stock no manifesto não existe neste worktree.

## Causa

offline_static/stock_assembly/manifest.json aponta para uma cópia do módulo em um caminho de outra máquina. O comparador aceita o manifesto, mas, sem o ELF stock, não carrega as seções .rodata e não consegue resolver offsets numéricos das relocations de strings. Isso produziu 29 falsos negativos: as instruções, seção e tamanho coincidiam, mas a lista de relocations comparava offsets stock com strings resolvidas do candidato.

Preservei o manifesto original. Criei offline_static/stock_assembly_resolved/manifest.json como visão portátil: ela aponta para reference_modules/stock/zte_charger_policy.ko por caminho relativo e mantém os mesmos 38 arquivos assembly. O SHA-256 do módulo stock confere com o manifesto original. As comparações abaixo foram refeitas com o ELF stock carregado.

## Resultado por identidade

- Candidato ativo 2f87a9fa003ec14c8d2a4ab42f6cea598b99460cae13363c072ec05699093cec: 32/38 funções passam em instruções, relocations, seção e tamanho. Seis falham: demo_sts_set, probe, probe_work, remove, timeout_alarm_cb e timeout_handler_work.
- Candidato novo, ainda não promovido, 915b27b135bdcbe1e61d6ba889fd4985e8562a652d23a773ef1faebee8496e58: 30/38 passam. O demo_sts_set agora passa com a relocation corrigida. Oito falham: três caminhos com correção de referência em get_status/get_prop_by_name/zte_get_prop_by_name e cinco caminhos de ciclo de vida em probe/probe_work/remove/timeout_alarm_cb/timeout_handler_work.
- As três funções de limpeza de referência permanecem em candidate_under_static_validation porque a fonte atual muda o caminho de erro em relação ao stock. A comparação do módulo ativo antigo passa nessas entradas, mas não pode ser transferida para a fonte nem para o novo candidato.
- O módulo todo continua incompleto. undefined_symbols_match permanece falso pelas dependências de hardening; mapping_review ainda depende da revisão das três funções de limpeza; o candidato 915b27... segue não promovido e static_verified permanece vazio.

## Validação executada

- Extraí os 38 corpos do candidato 915b27... com extract_module_assembly.py dentro do container Docker NX809J/toolchain fixado.
- Comparei os dois conjuntos com compare_function_assembly.py e com o ELF stock identificado pelo hash 0513da230bbc9b82efacdac8309bbc24f94c9ae40f7faefc617ca7e86bf8316c.
- A nova comparação dos 38 corpos ativos e a comparação dos 38 corpos do candidato fresh foram concluídas; seus resultados permanecem FAIL global por 6 e 8 diferenças reais, respectivamente. Não foram executados builds, testes de host ou testes no aparelho, pois nenhum código-fonte mudou.
- O relatório antigo e o manifesto original foram preservados. Este lote corrige a origem dos dados de comparação e atualiza as classificações por função sem afirmar equivalência integral do driver.

## Arquivos

- stock_assembly_resolved/manifest.json: manifesto portátil que resolve a imagem ELF stock.
- active_assembly_comparison_rebased.json: comparação dos 38 corpos do módulo ativo.
- fresh_candidate_assembly/manifest.json e os 38 arquivos .asm: extração do candidato não promovido.
- fresh_assembly_comparison.json: comparação dos 38 corpos do candidato novo.
- attestation.json: hashes de todos os artefatos e métricas.