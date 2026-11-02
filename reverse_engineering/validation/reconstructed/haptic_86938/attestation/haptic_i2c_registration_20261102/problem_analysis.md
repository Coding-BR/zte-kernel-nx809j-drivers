# Haptic I²C registration: diagnóstico e correção

## Falha encontrada

O arquivo antigo `haptic_86938_fn_000_aw8693x_set_bst_peak_cur.c` instalava `module_init` e `module_exit` de microtarefas: a inicialização retornava `0` sem registrar barramento algum e a saída não fazia nada. O candidato podia ser aceito pelo loader como carregado, mas não criava o driver I²C nem fazia bind com o dispositivo. Também não havia definição de `aw_i2c_driver`, tabela de IDs, tabela OF ou operações PM na reconstrução.

O stock confirma o fluxo real:

- `init_module@001119fc` imprime `v0.5.0.15`, chama `i2c_register_driver(&__this_module, aw_i2c_driver)`, imprime erro se o retorno for diferente de zero e retorna esse valor.
- `cleanup_module@00111a64` chama `i2c_del_driver(aw_i2c_driver)`.
- A relocação do objeto `aw_i2c_driver` aponta para `aw_i2c_probe` e `aw_remove`; seus demais campos ligam o nome `haptic_hv`, `THIS_MODULE`, a tabela OF, as PM ops e a tabela I²C.

## Correção

Foi adicionado `haptic_86938_i2c_driver.c` com o objeto e as tabelas reconstruídos a partir das relocations stock e dos headers Linux 6.12.23 usados pelo Docker. A tabela de IDs contém `haptic_hv`; a compatibilidade OF é `awinic,haptic_hv`; as três fases de suspensão repetem os callbacks `aw_i2c_suspend`/`aw_i2c_resume`, como no stock.

Os wrappers agora registram e removem o driver e preservam o retorno de erro. A tabela OF permanece ligada ao objeto; removi `MODULE_DEVICE_TABLE(of, ...)` porque o stock publica somente `alias=i2c:haptic_hv` no `modinfo`. A macro OF adicionava aliases que divergiam do módulo original.

O job de validação cobre somente `init_module` e `cleanup_module`. O comparador Ghidra tem uma normalização estrita para a diferença de tipagem `aw_i2c_driver` versus `&aw_i2c_driver`: só a aceita depois de provar o mesmo símbolo de dados, bytes de função iguais, P-Code igual e relocations/assembly iguais.

## Evidência

- Objeto/relocations/metadados: `driver_registration_audit.json` — 31 verificações passaram.
- Docker: dois builds limpos, idênticos, SHA-256 `8de021746a541740816265f9b0670aa2b03cac3ab5532ea94e804c25a8ac4f14`; alias, imports, identidade da fonte e candidato coincidem com o rebuild fresco. O `vermagic` do candidato coincide com o manifesto do kernel alvo NX809J (`6.12.23-android16-5-gf1bdb13583da-ab13761046-4k SMP preempt mod_unload modversions aarch64`). O módulo stock de referência registra `6.12.23-maybe-dirty-4k SMP preempt mod_unload modversions aarch64`, portanto não há paridade textual de `vermagic` entre esses dois artefatos. Sem teste controlado no aparelho, isto não comprova carregamento em hardware.
- Protocolo focado: `protocol_core_v3/hard_protocol_report.json` — os oito gates automatizados passaram (`INPUT_IDENTITY`, `MAP_IDENTITY`, `JOERN_SCOPED`, `JOERN_SLICE`, `DOCKER_REPRODUCIBLE`, `ASSEMBLY_RELOCATIONS`, `KCFI`, `CANDIDATE_GHIDRA_PCODE`). O comparador registrou a normalização estreita de sintaxe Ghidra para as duas funções; bytes, P-Code e assembly estrito passaram.
- Mapa: `init_module` e `cleanup_module` agora têm fonte e status `candidate_under_static_validation`.

## Estado restante

Este marco corrige e valida o caminho de registro I²C. Não declara o módulo inteiro equivalente: a auditoria geral continua sem `static_verified` porque os mapeamentos ainda precisam de revisão independente; também não houve validação em hardware. A decisão do protocolo mantém `promotion_authorized: false`.
