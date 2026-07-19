# Validacao offline do decimo primeiro grupo ABI: zte_tpd

Data do checkpoint: 2026-07-19 UTC. Fonte de verdade: `zte_tpd.ko` stock
extraido localmente da ROM NX809J, pseudocodigo e P-Code do Ghidra, assembly
AArch64, relocations ELF, headers GKI 6.12.23 locais e o container de
compilacao. Nenhum dado da internet ou operacao no smartphone foi usado.

## Escopo

| Microtarefa | Assinatura recuperada | KCFI stock | Assembly estrito | Harness |
|---|---|---:|---:|---:|
| `101_tp_ghost_check` | `bool (void)` | `0x2fad8a96` | PASS | PASS |
| `120_tp_esd_check` | `bool (void)` | `0x2fad8a96` | PASS | PASS |

As duas funcoes externas agora preservam o contrato booleano stock. O callback
indireto usado por `tp_esd_check` foi resolvido por um oraculo KCFI local como
`bool (struct ztp_device *)`, tipo `0x80813a29`. O candidato passa `tpd_cdev`
em `x0` e deixa a instrumentacao KCFI para o compilador, sem cast ou verificacao
CFI manual recuperada do pseudocodigo.

## Correcoes estruturais

`tp_esd_check` usa o callback em `tpd_cdev + 0xe98`; o offset anterior
`0xce0` estava incorreto. A funcao resultante tem os mesmos 80 bytes e 20
instrucoes do stock, sem equivalencia especial.

`tp_ghost_check` voltou a executar os efeitos observados no stock:

- alocacao por `vmalloc`, preservando o caminho de alloc hooks/codetag;
- deteccao single e multi conforme os dois seletores de limiar;
- formatacao dos registros de down/up para ate dez pontos;
- copia opcional para o buffer ZLOG em `tpd_cdev + 0xbe8`;
- notificacao `tpd_zlog_record_notify(0x10)` e liberacao na ordem stock;
- mensagens stock `\0015tpd: %s:%s` e `\0015tpd: log_buffer malloc fail`.

O ELF stock prova `point_report_info` com 1.360 bytes, ou dez elementos de
`0x88`. A estrutura recuperada usa os seguintes offsets AArch64:

| Campo | Offset |
|---|---:|
| `down_x` | `0x18` |
| `down_y` | `0x1c` |
| `up_x` | `0x24` |
| `up_y` | `0x28` |
| `ghost_count` | `0x5c` |
| `ghost_active` | `0x5e` |
| `sizeof(struct point_info_struct)` | `0x88` |

Esses valores sao impostos por `static_assert` em `defs.h`; o build completo
falha se qualquer tamanho ou offset mudar. `globals.c` declara exatamente
`struct point_info_struct point_report_info[10]`.

## Paridade de codigo

| Funcao | Stock | Candidato | Resultado |
|---|---:|---:|---:|
| `tp_esd_check` | 80 bytes / 20 instrucoes | 80 bytes / 20 instrucoes | PASS exato |
| `tp_ghost_check` | 1.312 bytes / 328 instrucoes | 1.312 bytes / 328 instrucoes | PASS guardado |

Secao, tamanho, relocations e fluxo de instrucoes coincidem. Para
`tp_ghost_check`, o compilador apenas trocou operandos matematicamente
comutativos em dez instrucoes `ADD`/`MUL` e reordenou um par adjacente de
loads booleanos que alimenta a mesma sequencia `CMP`, `CSET` e `CINC`. O
comparador aceita essas onze equivalencias somente quando todas as condicoes
estruturais sao comprovadas; quatro testes positivos e negativos protegem as
novas regras. A relocation de codetag do modulo ligado resolve para
`tp_ghost_check._alloc_tag`.

Relatorio: `assembly_comparison_next11_abi_final.json`.

## Teste direto offline

O harness `next11_abi_harness.c` inclui diretamente as duas fontes, compila
com `-Wall -Wextra -Werror`, ASAN e UBSAN e executa duas vezes. Resultado:
`14/14` casos em cada execucao.

Foram cobertos callback ESD ausente, retorno verdadeiro/falso, argumento e
offset exatos; falha de alocacao; ausencia de deteccao; seletores de limiar
baixo/alto; deteccao single/multi; detalhes dos pontos; buffer ZLOG presente ou
nulo; e ordem exata de notificacao e liberacao.

O harness usa doubles host deterministas. Nao executa ADB, fastboot, `insmod`,
`rmmod`, SPI, IRQ, MMIO ou firmware. Relatorio:
`next11_abi_harness_report.json`.

## Compilacao reproduzivel

- Container: `nubia-sm8850-kernel-builder:latest`.
- Toolchain: `clang-r536225` / Clang 19.0.1.
- Target: AArch64, `ARCH=arm64`, `LLVM=1`, `LLVM_IAS=1`,
  `KBUILD_EXTRA_SYMBOLS=vendor.Module.symvers`, `-j8`.
- Dois ciclos independentes em containers e filesystems Linux efemeros.
- Caminho canonico: `M=/work/engineering/validation/audit_work_kcfi_next11/zte_tpd`.
- Duracoes: `79,406 s` e `74,343 s`.
- Tamanho: `23.815.136` bytes nos dois ciclos.
- SHA-256: `4473da139a7d9a9f76896df0ecf0f756738aa72baac26a87ccb5c902568c3563`.
- Logs `clean` e `build` sao identicos entre os ciclos e nao possuem diagnosticos.
- Manifesto da arvore de entrada: 521 arquivos, SHA-256
  `644ee46d58f4468f2eee8ccb60ecf464e667458a2c6f58ca2e811969fb60c433`.

Relatorio: `build_next11_abi_report.json`.

## KCFI global

A superficie completa possui 322 registros stock, 292 matches, 30 mismatches,
zero ausentes e 46 simbolos excluidos pela politica documentada: `90,68%`.
O Next11 corrigiu dois tipos antes divergentes, elevando o total de 290 para
292 matches.

Os oraculos locais tambem demonstram:

- `bool`, `u8` e `unsigned char (void)` convergem para `0x2fad8a96`;
- `bool`/`u8 (struct ztp_device *)` convergem para o callback `0x80813a29`.

Relatorios: `kcfi_next11_abi_exact.json`,
`kcfi_full_surface_next11_abi_final.json` e `signature_oracles/`.

## Layout e rastreabilidade

O probe AArch64 e a validacao ABI completa passaram contra o mesmo candidato.
O mapa `reconstruction_map_next11_abi.json` liga 367 funcoes ao stock, Ghidra,
P-Code, assembly e fonte atual por SHA-256. Ele prova identidade estrutural e
alcance da evidencia, nao equivalencia semantica global.

Relatorios: `header_layout_probe_next11_abi.json`,
`abi_validation_next11_abi.json` e `reconstruction_map_next11_abi.json`.

## Regressao da infraestrutura

Os 40 testes direcionados de assembly, oraculos KCFI, superficie KCFI, layout
e promocao escopada passaram. A suite ampla executou 117 testes: 116 passaram e um erro
preexistente permaneceu fora deste escopo.

O erro conhecido esta em
`test_audit_userdebug_observability.py::test_repository_report_matches_pinned_nx809j_config`:
o SHA-256 de `reproducible_environment/inputs/nx809j_kernel.config` difere de
`environment.lock.json`. Esses arquivos nao foram alterados neste lote.

## Limites e proximo gate

- A superficie KCFI global ainda possui 30 mismatches.
- O harness prova apenas os caminhos host cobertos.
- Validacao fisica, revisao independente e equivalencia semantica do modulo
  inteiro permanecem pendentes.
- A promocao escopada preservou os 146 PASS anteriores, promoveu somente
  `101_tp_ghost_check` e `120_tp_esd_check` e deixou 219 funcoes abertas.
- O manifesto central permanece `INCOMPLETE`; nenhuma promocao em massa foi
  executada.
- Nenhuma conclusao de "100% reconstruido" e permitida com esses limites.

Este checkpoint fecha offline `tp_ghost_check` e `tp_esd_check`. Ele nao
declara o driver `zte_tpd` inteiro reconstruido.
