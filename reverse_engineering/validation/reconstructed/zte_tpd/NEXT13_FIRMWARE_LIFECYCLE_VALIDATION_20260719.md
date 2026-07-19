# Validacao offline Next13: ciclo de firmware do `zte_tpd`

Data do checkpoint: 2026-07-19 UTC. Fonte de verdade: `zte_tpd.ko` stock
extraido localmente da ROM userdebug NX809J, assembly AArch64, pseudocodigo e
P-Code gerados pelo Ghidra 12.1.2, headers locais do GKI 6.12.23 e compilacao
no Docker. Nenhum dado da internet ou operacao no smartphone foi usado.

## Escopo fechado

| ID | Funcao | Assinatura reconstruida | KCFI | Assembly/P-Code |
|---|---|---|---:|---:|
| `011` | `tp_free_tp_firmware_data` | `void (void)` | `0xe5c47d60` | PASS exato |
| `012` | `tp_alloc_tp_firmware_data` | `int (int)` | `0xcdde824b` | PASS exato |
| `013` | `tpd_copy_to_tp_firmware_data` | `int (char *)` | `0x7bff871d` | PASS exato |
| `014` | `tpd_reset_fw_data_pos_and_size` | `void (void)` | `0xe5c47d60` | PASS exato |
| `035` | `tpfwupgrade_store` | `ssize_t (struct file *, const char __user *, size_t, loff_t *)` | `0xc3d43b4d` | PASS exato |
| `051` | `get_tp_noise_show` | `ssize_t (struct file *, char __user *, size_t, loff_t *)` | `0xf4e9d97c` | PASS exato |
| `052` | `get_tp_noise_store` | `ssize_t (struct file *, const char __user *, size_t, loff_t *)` | `0xc3d43b4d` | PASS exato |
| `073` | `tp_self_test_read` | `ssize_t (struct file *, char __user *, size_t, loff_t *)` | `0xf4e9d97c` | PASS exato |
| `074` | `tp_self_test_write` | `ssize_t (struct file *, const char __user *, size_t, loff_t *)` | `0xc3d43b4d` | PASS exato |

O callback de upgrade em `tpd_cdev + 0xe18` foi resolvido separadamente por
oracle local. Somente a familia ABI equivalente
`int (struct ztp_device *, char *, int)` produziu o Type ID stock
`0x4d7650a4`.

## Correcao obrigatoria do Next12

O Next12 documentou o descritor com `0x10` bytes. Essa inferencia estava
incompleta. O assembly stock das rotinas de alocacao prova que tanto
`vmalloc` quanto `memset` recebem `size + 0x18`, e a allocation tag registra
uma alocacao de `0x18` bytes para o descritor. O layout correto e:

```c
struct tpd_firmware_data {
    size_t size;          /* +0x00 */
    void *data;           /* +0x08 */
    u8 reserved_0010[8];  /* +0x10 */
};                        /* 0x18 bytes */
```

`defs.h` contem `static_assert` para `data == 0x08` e tamanho `0x18`. O
Next13 substitui a afirmacao de tamanho do Next12. Os seis PASS antigos deste
cluster foram reatestados com as fontes corrigidas; nenhuma evidencia antiga
foi reutilizada para a promocao atual.

## Offsets e contratos recuperados

| Objeto em `tpd_cdev` | Offset |
|---|---:|
| posicao de transferencia, `u32` | `0x448` |
| ponteiro para `struct tpd_firmware_data` | `0xc58` |
| mutex do ciclo de firmware | `0xc60` |
| callback de upgrade | `0xe18` |
| callback de captura de ruido | `0xee8` |
| callback de leitura do self-test | `0xf98` |
| callback de escrita do self-test | `0xfa0` |

`tp_alloc_tp_firmware_data` libera o descritor anterior, zera a posicao,
aloca exatamente `0x18` bytes e cria o buffer de `size + 0x18`. O caminho de
falha do `vmalloc` conserva o slot pendente depois do `kfree`, comportamento
stock incomum que foi preservado e testado em vez de ser silenciosamente
"corrigido".

`tpd_copy_to_tp_firmware_data` rejeita descritor ou buffer ausente, rejeita
tamanho zero, limita a copia ao espaco restante e atualiza `+0x448` pelo
numero realmente copiado. A chamada usa um unico argumento `char *`, como
provado pelo KCFI `0x7bff871d`; tres callers Synaptics foram ajustados para
essa ABI.

Esses callers de suporte nao fazem parte do PASS do cluster. A auditoria
separada encontrou divergencia de corpo em `syna_testing_pt01_zte` (692 bytes
stock contra 540), `syna_testing_pt05_zte` (852 contra 612) e
`syna_testing_pt0a_zte` (852 contra 612). As microtarefas `218`, `219` e `220`
permanecem `READY_FOR_IMPLEMENTATION`; corrigir a chamada ABI nao basta para
provar as funcoes completas. Evidencia:
`assembly_comparison_next13_firmware_callers_open.json`.

`tpfwupgrade_store` interpreta o valor decimal sob o mutex. Valores abaixo de
11 acionam o callback e liberam o firmware existente. Valores a partir de 11
recriam o descritor e o buffer. As rotinas de ruido e self-test usam os
callbacks e offsets acima, preservando retornos, ordem de cleanup e mensagens
observadas no stock.

## Prova Ghidra e P-Code

O candidato final foi importado novamente no Ghidra 12.1.2. Para cada uma das
nove funcoes, o gate exige corpo em bytes, C decompilado normalizado,
sequencia de mnemonicos e forma ordenada de P-Code. Resultado: `9/9` PASS,
com `1.249` registros P-Code no total.

O normalizador trata somente artefatos comprovados do renderizador: enderecos
`DAT_*` resolvidos para a mesma string, o endereco contextual sintetico de
`SoftwareBreakpoint` e o nome arbitrario que o Ghidra atribui ao primeiro
argumento de `__kmalloc_cache_noprof`. Ele nao normaliza offsets, tamanhos,
opcodes KCFI, constantes de alocacao ou controle de fluxo. O relatorio Ghidra
fica hash-bound ao gate de assembly, que exige relocations e allocation tags
equivalentes.

Relatorios: `ghidra_semantic_comparison_next13_firmware_lifecycle_final.json`
e `assembly_comparison_next13_firmware_lifecycle_final.json`.

## Paridade de assembly

| Funcao | Bytes | Instrucoes |
|---|---:|---:|
| `tp_alloc_tp_firmware_data` | 352 | 88 |
| `tpd_copy_to_tp_firmware_data` | 200 | 50 |
| `tp_free_tp_firmware_data` | 96 | 24 |
| `tpd_reset_fw_data_pos_and_size` | 28 | 7 |
| `tpfwupgrade_store` | 560 | 140 |
| `get_tp_noise_show` | 280 | 70 |
| `get_tp_noise_store` | 112 | 28 |
| `tp_self_test_read` | 356 | 89 |
| `tp_self_test_write` | 148 | 37 |

Stock e candidato possuem os mesmos tamanhos, instrucoes, secoes e
relocations nas nove funcoes. Nao foi usada equivalencia de alocacao de
registradores: todos os opcodes comparados sao exatos. Allocation tags
geradas pelo compilador sao aceitas apenas quando o par de relocations, a
funcao proprietaria e a ordem local coincidem.

## Testes diretos offline

Dois harnesses incluem diretamente as fontes atuais e compilam com
`-Wall -Wextra -Werror`, ASAN e UBSAN:

- `next13_firmware_harness_report.json`: `12/12` em duas execucoes para
  alocacao, substituicao, falhas, tamanho `0x18`, copia completa, truncada,
  vazia, fim do buffer e rejeicao dos offsets antigos;
- `proc_special_harness_next13_report.json`: `12/12` em duas execucoes para
  free/reset, upgrade, ruido, self-test e demais callbacks proc do harness.

O total deste checkpoint e `24/24` casos por repeticao. Nenhum caminho de
hardware, IRQ, SPI, MMIO ou firmware real foi exercitado.

## Compilacao, KCFI e layout

- Container: `nubia-sm8850-kernel-builder:latest`.
- Toolchain: `clang-r536225`, Android Clang 19.0.1.
- Alvo: AArch64, Android 16, GKI 6.12.23, `LLVM=1`, `LLVM_IAS=1`.
- Dois ciclos limpos em filesystems Linux independentes: `89,25 s` e
  `89,39 s`.
- Manifesto de entrada: 521 arquivos, SHA-256
  `b3a696a133ec0f2c9b9defb034e45be1078ed7ea3196ea54c74f3da0bc503aef`.
- Modulo final: 24.076.504 bytes, SHA-256
  `328777a498b79f5cb3fb2ce2e4ce7fbe841049d9ac69faa0c66095074d2b863e`.
- KCFI do cluster: `9/9` exato.
- KCFI global: `296/322` matches, 26 divergencias, zero ausentes, `91,93%`.
- Probe ABI/layout contra os headers GKI reais: PASS.

## Promocao e limites

O atestador preservou os 150 PASS anteriores, reatestou as nove funcoes deste
cluster e promoveu somente `012`, `013` e `035`. O manifesto passa a ter
`153 PASS` e `214 READY_FOR_IMPLEMENTATION`, em 367 microtarefas. Nenhuma
promocao em massa foi executada e nenhum PASS obsoleto foi demovido.

A suite focal passou `63/63`. A suite ampla executou 130 testes: 129 passaram;
o unico erro e o descompasso preexistente entre o SHA do config userdebug e
`environment.lock.json` no teste `test_audit_userdebug_observability`, fora do
escopo funcional deste checkpoint.

- O modulo `zte_tpd` inteiro ainda nao esta reconstruido ou provado.
- As 26 divergencias KCFI restantes continuam abertas.
- Os tres callers Synaptics modificados continuam abertos por divergencia de
  assembly e ausencia de teste direto integral.
- Revisao independente permanece `NOT_PERFORMED`.
- Validacao em hardware permanece `DEFERRED`.
- Nenhum ADB, fastboot, `insmod`, `rmmod` ou acesso ao smartphone foi usado.

Este checkpoint fecha somente o ciclo de firmware selecionado. Ele nao
autoriza afirmar "100% reconstruido" para o modulo completo.
