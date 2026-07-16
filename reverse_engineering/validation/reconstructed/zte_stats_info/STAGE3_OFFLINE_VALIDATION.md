# `zte_stats_info` - validacao offline Stage 3

## Escopo

Este documento registra o fechamento estatico do candidato reconstruido sem
usar ADB, fastboot, `insmod`, `rmmod` ou escrita de particoes.

| Artefato | SHA-256 | Tamanho |
|---|---|---:|
| Stock `zte_stats_info.ko` | `20f5f60ddbdc5412de08a5ec0a62d34bfe3dd8cebba0cb54cda6ffc7bdb64d96` | 27008 |
| Candidato final | `22f93083062922e5a2932e387d91db714e123896818e13a2ef853948308349e7` | 329768 |
| Harness de host A/B | `7d58b5c976699c4997f7301020bd60d51cbf46728f3d0ab94d4c801b5af246e4` | 26472 |

O candidato foi compilado com Clang 19.0.1 (`clang-r536225`) e o
`Module.symvers` do kernel alvo 6.12.23 Android 16 registrado no workspace.

## Matriz de evidencia

| Gate offline | Resultado | Evidencia principal |
|---|---|---|
| Identidade stock/candidato | PASS | hashes acima e `driver_audit_current.json` |
| Build limpo duplo | PASS | duas saidas com SHA-256 final identico |
| ELF/KMI/imports | PASS | AArch64 ET_REL, 43 imports e vermagic alvo aceito |
| ABI/layout | PASS | taskstats v10 = 0x160; 26 offsets do kernel alvo |
| Assembly AArch64 | PASS | `assembly_comparison.json`, 8/8 |
| Ghidra | PASS | inventario 8/8, call graph e tamanhos de corpo |
| KCFI | PASS | 3/3 type IDs, secoes e tamanhos |
| Harness | PASS | 8/8 funcoes cobertas, binarios A/B identicos |
| Revisao independente | PENDENTE | revisor deve ser diferente do implementador |
| Hardware | DEFERRED | exige sessao controlada no NX809J |

## Comparacao AArch64

O comparador verifica instrucoes normalizadas, relocacoes, secao ELF e tamanho
de simbolo. O resultado nao deve ser confundido com identidade byte a byte do
ELF inteiro.

| Funcao | Instrucoes stock/candidato | Bytes stock/candidato |
|---|---:|---:|
| `__zte_lock_task_sighand` | 33/33 | 132/132 |
| `init_module` | 55/55 | 220/220 |
| `zte_add_del_listener` | 162/162 | 648/648 |
| `zte_cgroupstats_user_cmd` | 2/2 | 8/8 |
| `zte_mk_reply` | 71/71 | 284/284 |
| `zte_parse` | 57/57 | 228/228 |
| `zte_prepare_reply` | 67/67 | 268/268 |
| `zte_taskstats_user_cmd` | 473/473 | 1892/1892 |

## Causa da ultima divergencia

A diferenca final de `zte_taskstats_user_cmd` nao era uma API ausente. Era a
forma como o Clang materializava o CFG e selecionava registradores. O fonte foi
ajustado para preservar evidencias observadas no assembly e no P-Code:

1. locais independentes para register/deregister;
2. locais e labels de cleanup independentes para PID/TGID;
3. acumuladores `delta`, `utime` e `stime` locais no loop TGID;
4. escrita de `ac_btime` antes de `ac_btime64`.

O quarto item reproduziu a selecao condicional de registrador vista no stock.
Nao foi necessario usar assembly inline, casts de callback ou desativar CFI.

## Ghidra e P-Code

O candidato final foi importado novamente no Ghidra 12.1.2 em modo headless.
Foram exportados pseudocodigo agregado, arquivos por funcao, P-Code, simbolos,
strings, blocos de memoria, externals e calls. A comparacao stock/candidato
confirmou:

- inventario de 8 funcoes nos dois lados;
- multiplicidade de chamadas externas igual em 8/8;
- tamanhos de corpo reportados pelo Ghidra iguais em 8/8.

Avisos de relocacao em secoes de debug ocorreram durante a importacao, mas a
autoanalise terminou e o postscript exportou as 8 funcoes. Eles nao foram
silenciados nem tratados como prova de equivalencia.

## Reproducibilidade

O modulo foi limpo e compilado duas vezes no container. Os dois builds e o
artefato curado fecharam em:

`22f93083062922e5a2932e387d91db714e123896818e13a2ef853948308349e7`

O harness tambem foi compilado e executado duas vezes:

`PASS zte_stats_info host tests`

Os dois binarios de teste possuem o mesmo SHA-256 e tamanho.

## Limites e proxima promocao

Este estagio comprova que as superficies estaticas medidas estao alinhadas,
mas o veredito formal do protocolo continua `INCOMPLETE`. O rotulo
`STATIC_ALIGNED_CANDIDATE` fica reservado para depois da revisao independente.
Para promocao:

1. um revisor independente deve repetir hashes, build, ABI, assembly, Ghidra,
   KCFI e harness e emitir `independent_review.json`;
2. uma sessao separada no NX809J deve validar registro da familia
   `ZTE_TASKSTATS`, comandos PID/TGID, register/deregister de CPU mask, erros e
   cleanup;
3. o teste de hardware deve guardar logs e rollback e nunca substituir o modulo
   stock sem uma estrategia de recuperacao.

Sem esses dois gates, nao declarar reconstrucao 100% nem equivalencia funcional
absoluta.
