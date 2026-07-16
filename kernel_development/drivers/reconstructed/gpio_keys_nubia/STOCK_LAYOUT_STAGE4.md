# `gpio_keys_nubia`: checkpoint estrutural stage 4

Estado: **23/24 FUNCOES AARCH64 EXATAS; `gpio_keys_probe` AINDA PARCIAL**.

Este checkpoint preserva os layouts documentados nos stages 2 e 3 e registra
duas fronteiras de helper inline recuperadas diretamente dos simbolos locais do
ELF OEM. Igualdade estrutural ou de contagens nao substitui validacao dinamica.

## Invariantes preservadas

| Estrutura/campo | Valor stock |
|---|---:|
| `offsetof(gpio_keys_drvdata, data)` | `0x48` |
| `sizeof(gpio_button_data)` | `0x110` |
| `release_timer` | `0x20` |
| `delayed_work` | `0x50` |
| `software_debounce` | `0xb8` |
| IRQ primario/secundario | `0xbc` / `0xc0` |
| `gpios` / `gpion` | `0xc4` / `0xc8` |
| `report_lock` | `0xd0` |
| `wakeup_trigger_type` | `0x100` |
| `spinlock_t` | `0x104` |

## Fronteiras inline recuperadas

### `nb_setup_secondary`

O relocation OEM do `mutex_init` referencia `nb_setup_secondary.__key`. Isso
prova que a busca de `gpios`/`gpion`, o IRQ secundario e `report_lock` pertencem
a um helper lexical chamado `nb_setup_secondary`, posteriormente inlined no
`gpio_keys_probe`. A string de `__func__` no log vendor confirma o mesmo nome.

### `nb_key_is_need_report`

O ELF OEM referencia `nb_key_is_need_report.stat_rec`. A variavel voltou a ser
local estatica desse helper inline, com a leitura de `previous_state` antes do
calculo do novo estado. Essa ordem e necessaria para reproduzir exatamente os
opcodes de `gpio_keys_gpio_report_event`.

## Tipagem recuperada

`active_low` e `bool`, nao `int`. A tipagem booleana e sustentada pelo
fonte-base 6.12 local e pelo padrao AArch64 do stock. Ela eliminou dois spills
de pilha do candidato sem alterar a semantica, o ABI ou usar artificios de
otimizacao.

## Superficie atual do `probe`

| Metrica | Stock | Stage 4 |
|---|---:|---:|
| Tamanho | 3600 | 3600 |
| Instrucoes | 900 | 900 |
| Relocacoes | 164 | 164 |
| Blocos basicos | 228 | 228 |
| Arestas CFG | 387 | 387 |
| Chamadas | 67 | 67 |

O multiconjunto de relocacoes coincide, mas 21 posicoes ainda aparecem em ordem
diferente. A similaridade de mnemonicos e `95,2222%`; opcodes e ordem de
relocacoes ainda impedem o gate 24/24.

## Gates do checkpoint

- Assembly: 23/24 exatas.
- KCFI: 21/21 funcoes elegiveis.
- Imports: 63/63 exatos.
- Simbolos de texto: 24/24, nenhum extra.
- Harnesses: 11/11 e 18/18.
- Builds isolados: dois hashes
  `0ab95b270bcafbf5095d1effb73458c55574449866dbd9ee386d0974ffdbd0c2`.
- Candidato promovido: hash igual aos dois builds limpos.
- Hardware e revisao independente: nao executados.

O checkpoint e adequado para continuidade de engenharia reversa offline, mas
nao autoriza `insmod`, substituicao do OEM ou alegacao de reconstrucao 100%.
