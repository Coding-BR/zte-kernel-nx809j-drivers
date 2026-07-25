# Next46: Validacao de `syna_sysfs_fw_update_store`

## Escopo e veredito

- Driver: `zte_tpd`
- Microtarefa: `217_syna_sysfs_fw_update_store`
- Entrada stock: `0x0011b3b0`
- Corpo stock: `268` bytes, `67` instrucoes
- Stock local SHA-256: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`
- Fonte candidato SHA-256: `93c7bbe7cba24f543b832cf7d7f9657f5dedf49b729896dd48656e17660531e0`
- Veredito offline da funcao: `PASS`
- Veredito do driver integral: `INCOMPLETE`
- Hardware: `DEFERRED`

Este checkpoint prova a funcao isolada por build reproduzivel, assembly,
Ghidra, KCFI e harness direto. Nao declara equivalencia integral do modulo nem
comportamento MMIO no NX809J.

## Contrato reconstruido

A funcao resolve `struct syna_tcm` a partir da cadeia privada de `kobject` e
`device`. O comportamento comprovado e:

1. Le o estado de conexao em `tcm + 0x582` e testa somente o bit zero.
2. Quando desconectado, emite o aviso stock e retorna o `count` integral.
3. Quando conectado, executa `kstrtouint(buf, 10, &value)`; qualquer falha
   retorna `-EINVAL`.
4. Chama `syna_dev_do_reflash(tcm, true)`.
5. Um retorno negativo do reflash e logado e devolvido como `int` com sinal.
6. Em sucesso e modo app (`*(u8 *)(*(u64 *)tcm + 9) == 1`), chama o ponteiro
   armazenado em `tcm + 0x6b8`.
7. O retorno do callback e ignorado, como no stock, e a funcao devolve
   `(int)count`.

O valor decimal parseado apenas valida a entrada. O binario stock nao o usa
para selecionar o firmware. O callback possui assinatura exata:

```c
int (*set_up_app_fw)(struct syna_tcm *tcm);
```

Nao foi adicionado teste de ponteiro nulo no caminho app porque esse ramo nao
existe no stock e alteraria o comportamento observado.

## Build reproduzivel

Relatorio:
`build_next46_fw_update_final_report.json`

- imagem: `nubia-sm8850-kernel-builder:latest`
- toolchain: Android Clang `r536225`, Clang `19.0.1`
- ciclos aceitos: `2/2`
- caminhos `M=` deliberadamente diferentes: sim
- diagnosticos: nenhum
- tamanho: `24646728` bytes
- SHA-256 em ambos os ciclos:
  `e6125574d862d08e7f577e148e46bbd4d3aedf5f4a569c56738a865f61741075`

## Assembly e relocations

Relatorio:
`assembly_comparison_next46_fw_update_final.json`

- tamanho: `268/268` bytes
- instrucoes: `67/67`
- secao: `.text` em ambos
- relocations resolvidas: iguais
- strings de aviso e erro: iguais
- guard KCFI do callback: `0xae20471c`

Tres opcodes nao sao byte a byte identicos. Eles formam a sequencia gerada
pelo compilador para ler e salvar o stack canary:

| Indice | Stock | Candidato | Diferenca |
|---:|---|---|---|
| 5 | `d5384109` | `d5384108` | destino de `mrs SP_EL0`: `x9` para `x8` |
| 7 | `f9438929` | `f9438908` | temporario da carga: `x9` para `x8` |
| 8 | `f90007e9` | `f90007e8` | temporario do armazenamento: `x9` para `x8` |

O comparador nao ignora `MRS` genericamente. Ele permite somente a mudanca de
`Rt` na codificacao exata de `mrs ..., SP_EL0`; as duas instrucoes seguintes
continuam limitadas aos campos de registrador conhecidos. Essa equivalencia so
e aceita quando o relatorio Ghidra independente passa e referencia a SHA-256
exata do modulo candidato. Alterar o registrador de sistema continua sendo
falha.

## Comparacao Ghidra

Relatorio:
`ghidra_semantic_comparison_next46_fw_update_canonical.json`

Pacote restrito:
`ghidra_candidate_next46_fw_update_canonical_scoped/`

- modulo candidato vinculado por SHA-256: sim
- tamanho do corpo: `268/268`
- C decompilado normalizado: igual
- shape ordenado de P-Code: igual, `193/193`
- strings resolvidas: iguais
- resultado: `PASS`

O pacote versionado contem apenas a funcao alvo, chamadas, P-Code, strings e
manifesto. O projeto de trabalho completo do Ghidra e os probes exploratorios
nao sao artefatos de publicacao.

## KCFI

Relatorio:
`kcfi_comparison_next46_fw_update_final.json`

- type ID stock: `0x9ce291cd`
- type ID candidato: `0x9ce291cd`
- tamanho do simbolo: `268/268`
- guard indireto observado no assembly: `0xae20471c`
- resultado: `PASS`

Nenhum cast de ponteiro de funcao foi usado para contornar CFI.

## Harness direto

Relatorio:
`harness/next46_fw_update_host_test_report.json`

O harness foi compilado duas vezes com Clang 19.0.1, `-Werror`, ASAN e UBSAN.
Os dois ciclos passaram os mesmos `12` casos e produziram o binario SHA-256
`ea39302ef4f0b47f54c563f6e3dcf28ef2f0ec124123c7fad68a88213d74d694`.

Cobertura direta:

1. dispositivo desconectado;
2. `count` largo no caminho desconectado;
3. bit um sem bit zero permanece desconectado;
4. entrada decimal invalida;
5. overflow decimal;
6. falha de reflash, log e retorno;
7. sucesso fora do modo app sem callback;
8. truncamento stock de `count` largo para `int`;
9. callback app, argumento e sucesso;
10. retorno negativo do callback ignorado;
11. outros bits de conexao junto do bit zero;
12. valor decimal maximo de `u32`.

O harness substitui a hierarquia de `kobject`, parser, reflash e `printk` por
stubs controlados. Ele nao usa smartphone, sysfs real ou hardware.

## Rastreabilidade e proximo alvo

A microtarefa possui provas com hash para os cinco papeis: `compile`,
`assembly`, `ghidra`, `kcfi` e `test`. O mapa estrutural preserva o status
conservador `structural_identity_only`; os gates funcionais ficam no manifesto
de microtarefas.

O agregador passa a `169 PASS / 198 READY`. O proximo alvo sequencial e
`218_syna_testing_pt0a_zte`, que deve repetir integralmente este ciclo antes de
qualquer promocao.

Limitacao de ferramenta observada: `bind_candidate_source_map.py` ainda espera
o campo legado `ghidra_export` e nao reconhece o esquema finalizado atual. Por
isso, somente a hash da fonte 217 foi atualizada neste mapa, sem regenerar ou
reclassificar os demais mapeamentos.
