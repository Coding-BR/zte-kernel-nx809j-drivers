# Investigacao Estatica Stage 4: `nubia_hw_version`

Data: 2026-07-30

## Escopo e regra de veredito

Esta etapa usa somente a evidencia local da ROM userdebug NX809J: o modulo
stock, exportacao Ghidra 12.1.2, P-Code, Assembly AArch64, o source
reconstruido e o ambiente Docker local. Nao usa dados de drivers NX809J da
Internet e nao executa ADB, fastboot, `insmod`, `rmmod`, GPIO ou escrita de
particoes.

`static_verified` significa que a cadeia publica de evidencia, o build limpo,
o KMI e a rastreabilidade passaram. Nao significa equivalencia OEM completa
nem autoriza teste em hardware ou substituicao do modulo stock.

## Evidencia confirmada

| Gate | Resultado | Evidencia |
|---|---|---|
| Modulo stock | PASS | SHA-256 `b24e66e189267f240d637d826169d1bcb28abda390260a88cf52124dbbabfc6c` |
| Fonte candidato | PASS | SHA-256 `bb9a57f9875c4fa6b7409d6493ecb4d5831246fa2a2625e62dc2e63160eaf8fe` |
| Ghidra e mapa | PASS | 19/19 funcoes com Assembly, P-Code, pseudocodigo e mapeamento hash-bound |
| Build limpo duplo | PASS | ambos produzem `625f31a3adc4a72ffd05a562550235d1c2c0453b54c5d51b3a15f619f9ad9031` (245472 bytes) |
| ELF, modinfo e imports | PASS | AArch64 ET_REL, aliases, namespaces e imports em paridade; vermagic aceito pelo manifesto alvo |
| Joern estrito | PASS | tres funcoes sensiveis, 0 problemas de parser, 0 chamadas nao resolvidas e 0 deltas de chamada mapeados |
| Hardware | NAO EXECUTADO | deliberadamente fora deste ciclo |

O build Stage 4 foi executado com `nubia-sm8850-kernel-builder:latest`, os
volumes `nubia_sm8850_kernel_src` e `nubia_sm8850_kernel_toolchains`, e
`clang-r536225`. Os avisos de clock skew da montagem Windows/Docker foram
registrados, mas cada `make` retornou sucesso e os dois artefatos limpos tem o
mesmo hash. Isso comprova reproducibilidade do artefato, nao comportamento em
hardware.

## Limites recuperados do binario

O modulo stock contem tabela de simbolos, mas `readelf -SW` nao encontra
secoes `.BTF`, `.BTF.ext`, `.debug_info` ou outro DWARF utilizavel. Portanto,
o binario nao preserva as tags nominais originais das duas estruturas usadas
por helpers exportados.

O Clang 19 inclui a identidade nominal de `struct` no type ID KCFI. Isto foi
confirmado por uma sonda minima compilada com o mesmo `clang-r536225`: trocar
apenas uma tag de estrutura muda o hash, mesmo quando os registradores e o
layout AArch64 permanecem identicos. Ghidra recupera `ponteiro + u32` e os
strides corretos, mas nao recupera a tag C perdida.

Assim, estes bloqueios permanecem reais:

| Funcao | KCFI stock | KCFI candidato | Corpo AArch64 |
|---|---:|---:|---|
| `nubia_get_pcb_table_item_by_gpio` | `0x7694f747` | `0x7d13948b` | exato |
| `nubia_get_rf_band_by_gpio` | `0x2ba39f21` | `0x5bc4b08a` | exato |

O oraculo anterior ja avaliou 155520 assinaturas nominais correlacionadas sem
preimagem para os hashes stock. Nenhum hash foi forjado e nenhuma assinatura
foi promovida por semelhanca visual.

## Experimentos de `nubia_hw_rf_band_show`

O P-Code stock exige a ordem de decisao `gpio1 == 2`, depois `gpio1 == 1`,
depois `gpio1 == 0`, com indice assinado validado na faixa `0..2` antes do
carregamento. O candidato atual preserva CFG, chamadas e semantica observada,
mas mede 63 instrucoes/252 bytes; o stock mede 61 instrucoes/244 bytes.

Quatro variantes foram compiladas fora do repositorio, em `F:\\drivers`, com
o mesmo kernel e Clang. Nenhuma superou o candidato atual e nenhuma foi
promovida:

| Variante | Estrategia | Instrucoes | Bytes | Veredito |
|---|---|---:|---:|---|
| v1 | tipagem explicita e guardas adicionais | 72 | 288 | rejeitada |
| v2 | `switch` e tabela compartilhada | 70 | 280 | rejeitada |
| v3 | condicoes invertidas na ordem do P-Code | 63 | 252 | igual a base |
| v4 | reordenacao fisica de rotulos | 63 | 252 | igual a base |

As variantes v1 e v2 introduziram checks adicionais que nao existem no
Assembly OEM. V3 e v4 demonstram que a base ja e a forma canonica escolhida
pelo compilador para essas expressoes. O codigo do driver nao foi alterado
apenas para perseguir layout; nao foram usados `volatile`, inline Assembly,
hints artificiais ou casts para burlar KCFI.

## Reproducao offline

Execute a auditoria em um diretorio de trabalho externo, preferencialmente no
`F:`, para nao consumir o disco do sistema:

```powershell
python .\workspace_tools\reconstruction_pipeline\validate_reconstructed_drivers.py `
  --curated-root .\kernel_development\drivers\reconstructed `
  --driver nubia_hw_version --rebuild `
  --work-root F:\drivers\validation-work\nubia_hw_version\stage4 `
  --output F:\drivers\validation-runs\nubia_hw_version\stage4.json `
  --markdown F:\drivers\validation-runs\nubia_hw_version\stage4.md `
  --image nubia-sm8850-kernel-builder:latest `
  --source-volume nubia_sm8850_kernel_src `
  --toolchain-volume nubia_sm8850_kernel_toolchains `
  --clang-revision clang-r536225

python .\workspace_tools\reconstruction_pipeline\validate_module_decomposition.py `
  --repo-root . --driver nubia_hw_version --check
```

O gate Joern deve ser executado para qualquer funcao alterada. Nesta etapa, o
escopo estrito foi `nubia_get_pcb_table_item_by_gpio`,
`nubia_get_rf_band_by_gpio` e `nubia_hw_rf_band_show`. Joern e um gate de
estrutura e chamadas; ele nao substitui Ghidra, KCFI, Assembly, harness nem
validacao de hardware.

## Proximas condicoes para promocao

1. Obter uma fonte com tipos nominais: header OEM, modulo nao stripado, BTF ou
   DWARF correspondente ao mesmo build.
2. Fechar a diferenca de `nubia_hw_rf_band_show` sem reduzir seguranca ou
   inserir artificios de compilador.
3. Ter revisao independente que repita o gate publico em ambiente limpo.
4. Somente depois planejar uma validacao de hardware isolada, autorizada, com
   logs e rollback documentado.

Enquanto esses itens nao forem atendidos, o estado correto do driver e
`STAGE4_STATIC_PARTIAL`.
