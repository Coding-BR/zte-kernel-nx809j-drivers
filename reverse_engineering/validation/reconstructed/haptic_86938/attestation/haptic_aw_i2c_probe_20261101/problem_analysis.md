# Diagnóstico e correção — `aw_i2c_probe`

## Problemas identificados

1. O job exigia `CANDIDATE_GHIDRA_PCODE`, mas não definia `paths.candidate_ghidra_export`. O runner terminava com esse gate em `NOT_EXECUTED`, sem explicar o requisito antes de iniciar Docker/Joern.
2. A primeira exportação Ghidra do módulo candidato dividiu alguns símbolos ELF em corpos menores: por exemplo, `aw_i2c_probe` apareceu com 40 bytes em vez dos 3.704 bytes do símbolo ELF; `rtp_osc_cali`, com 16 em vez de 1.192. Isso produzia uma comparação semântica falsa, apesar da igualdade de Assembly.
3. Para quatro rotinas, a saída C normalizada do Ghidra divergiu por resolução de nomes relocados e reconstrução de CFG. Após corrigir os limites, os tamanhos, o P-Code e a comparação binária coincidem com o stock.

## Correções

- O job aponta para um export candidato derivado do `.ko` do Docker e confirma a identidade por MD5/SHA-256.
- `run_hard_driver_protocol.py` agora rejeita na validação inicial qualquer job que exija `CANDIDATE_GHIDRA_PCODE` sem fornecer `paths.candidate_ghidra_export`.
- O Ghidra foi reexecutado com `ExtendGhidraFunctionBodies.java`, usando os limites de símbolo obtidos do ELF e já confirmados pelo comparador Assembly/relocations. Os 14 corpos exportados agora têm exatamente o tamanho do símbolo ELF.
- Dez rotinas permanecem sob comparação estrita de C normalizado. `aw_i2c_probe`, `irq_handle`, `osc_cali_store` e `haptic_audio_store` são marcadas como ilhas de Assembly: para elas continuam obrigatórios tamanho do corpo, P-Code idêntico e a comparação Assembly/relocations; não se afirma equivalência do C decompilado.
- O comparador KCFI foi ampliado apenas para os traps observados no stock (`0x8228`, `0x8229`, `0x822a`, `0x822c`), mantendo igualdade do tipo, slot e sequência stock/candidato.

## Resultado verificado

O protocolo `protocol_core_v9` passou os oito gates automatizados: identidade das entradas e do mapa, Joern e slices, build reproduzível em Docker, Assembly/relocations, KCFI e PCode Ghidra. O `.ko` candidato tem SHA-256 `5b83f2d62a80cba76014c2f1c7767fae24e6336716727f6b744a9fd6aa185f0a`; o mesmo hash foi usado para o export Ghidra e para o módulo do build final.

A promoção continua bloqueada: `promotion_authorized` é `false`, os gates de evidência (revisão independente, ledger de estado/registradores, testes concorrentes, harness e validação em hardware) não foram concluídos e o mapa mantém `semantic_equivalence: NOT_ESTABLISHED`. Isso valida este checkpoint estático, não a conclusão do driver nem o comportamento físico do dispositivo.
