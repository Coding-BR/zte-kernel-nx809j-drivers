# Validacao offline Next12: callbacks fwimage do zte_tpd

Data do checkpoint: 2026-07-19 UTC. Fonte de verdade: `zte_tpd.ko` stock
extraido localmente da ROM NX809J, assembly AArch64, pseudocodigo e P-Code
gerados pelo Ghidra, headers locais do GKI 6.12.23 e compilacao no Docker.
Nenhum dado da internet ou operacao no smartphone foi usado.

## Escopo

| Microtarefa | Assinatura GKI | KCFI stock | Assembly | Harness |
|---|---|---:|---:|---:|
| `093_tpd_sysfs_fwimage_show` | `ssize_t (struct file *, struct kobject *, struct bin_attribute *, char *, loff_t, size_t)` | `0x30c400c0` | PASS guardado | PASS |
| `094_tpd_sysfs_fwimage_store` | mesma assinatura | `0x30c400c0` | PASS exato | PASS |

As assinaturas sao as callbacks `read` e `write` de `struct bin_attribute` no
header `include/linux/sysfs.h` do GKI local. Os wrappers antigos foram removidos
e a tabela ELF `fwimage_attr`, com 72 bytes, aponta diretamente para `show` em
`+0x28` e `store` em `+0x30` por relocations `R_AARCH64_ABS64`.

Relatorio: `fwimage_attr_linkage_next12_final.json`.

## Estrutura e offsets recuperados

O descritor de firmware e imposto em `defs.h`:

```c
struct tpd_firmware_data {
    size_t size; /* +0x00 */
    void *data;  /* +0x08 */
};              /* 0x10 bytes */
```

Os `static_assert` falham se `data` deixar `+0x08` ou o descritor deixar de ter
`0x10` bytes em AArch64. O Ghidra e o assembly stock convergem para:

| Objeto em `tpd_cdev` | Offset |
|---|---:|
| posicao corrente, `u32` | `0x448` |
| ponteiro para `struct tpd_firmware_data` | `0xc58` |
| mutex do firmware | `0xc60` |

O `show` retorna `-ENOMEM` quando o descritor ou `data` e nulo e `-EINVAL`
quando `size` e zero. Sob o mutex, copia no maximo os bytes restantes e avanca
a posicao. Quando `position >= size`, zera a posicao, libera `data`, zera o
ponteiro interno, libera o descritor, zera o slot `+0xc58`, registra a mensagem
stock e desbloqueia.

O `store` aplica os mesmos erros iniciais. Se a posicao chegou ao fim, ela e
zerada e a funcao retorna `-EINVAL`. Caso contrario, limita a escrita ao espaco
restante, registra posicao e tamanho, copia sob o mutex e avanca a posicao.

## Prova Ghidra e P-Code

O candidato canonicamente compilado foi importado novamente no Ghidra 12.1.2.
O comparador substitui somente enderecos `DAT_*` que resolvem para o mesmo
conteudo de string e ignora enderecos e IDs temporarios do P-Code. Para cada
funcao ele exige simultaneamente:

- tamanho de corpo igual ao stock;
- pseudocodigo C normalizado identico;
- sequencia de mnemonicos de instrucao identica;
- sequencia ordenada de operacoes P-Code identica.

`tpd_sysfs_fwimage_show` reproduziu 205 registros P-Code e
`tpd_sysfs_fwimage_store`, 175. Os exports selecionados do candidato foram
publicados em `ghidra_candidate_next12_fwimage_final/`.

Relatorio: `ghidra_semantic_comparison_next12_fwimage_final.json`.

## Paridade de assembly

| Funcao | Stock | Candidato | Resultado |
|---|---:|---:|---:|
| `tpd_sysfs_fwimage_show` | 272 bytes / 68 instrucoes | 272 bytes / 68 instrucoes | PASS guardado |
| `tpd_sysfs_fwimage_store` | 224 bytes / 56 instrucoes | 224 bytes / 56 instrucoes | PASS exato |

Secao, tamanho, relocations e contagem coincidem nas duas funcoes. `store` tem
opcodes identicos. Em `show`, 11 opcodes diferem somente nos campos `Rt`, `Rn`,
`Rm` ou `Rd` de loads, `ADD/SUBS/CMP` e `CSEL`; imediatos, condicoes e classe da
instrucao permanecem identicos.

O comparador aceita essa equivalencia somente se o relatorio Ghidra estiver
aprovado e vinculado ao mesmo SHA-256 do modulo. Mudancas de imediato, classe
de instrucao, relacao, tamanho, relocation ou P-Code sao rejeitadas. Testes
positivos e negativos cobrem essas regras.

Relatorio: `assembly_comparison_next12_fwimage_final.json`.

## Teste direto offline

O harness inclui diretamente as duas fontes e usa doubles deterministas para
`mutex`, `memcpy`, `vfree`, `kfree` e `printk`. Ele compila com
`-Wall -Wextra -Werror`, ASAN e UBSAN e executa duas vezes. Resultado: `15/15`
casos em cada execucao.

A cobertura inclui descritor nulo, `data` nulo, tamanho zero, copia completa e
truncada, atualizacao e reset da posicao, ordem de liberacao, ponteiro exato do
mutex, mensagens stock, metadados sysfs ignorados e chamadas atraves dos tipos
reais de `bin_attribute`.

Relatorio: `next12_abi_harness_report.json`.

## Compilacao reproduzivel

- Container: `nubia-sm8850-kernel-builder:latest`.
- Toolchain: `clang-r536225` / Clang 19.0.1.
- Target: AArch64, `ARCH=arm64`, `LLVM=1`, `LLVM_IAS=1`,
  `KBUILD_EXTRA_SYMBOLS=vendor.Module.symvers`, `-j8`.
- Dois ciclos independentes em containers e filesystems Linux efemeros.
- Caminho canonico: `M=/work/engineering/validation/audit_work_kcfi_next12_final/zte_tpd`.
- Duracoes: `79,375 s` e `85,516 s`.
- Tamanho: `24.073.488` bytes em ambos os ciclos.
- SHA-256: `0b01c106b929a1c4016f9218cc1a5215692a793fe77c7b6c3a3ee6adbf8dc1a0`.
- Logs de `clean` e `build` identicos, sem warnings, errors ou clock skew.
- Manifesto de entrada: 521 arquivos, SHA-256
  `8a975ab3f4a58f424ddbd1b357d48dbfab48b52a9bde0a111d3d116dd2a85e65`.

Relatorio: `build_next12_fwimage_final_report.json`.

## KCFI e layout

As duas funcoes possuem tipo `0x30c400c0`, secao e tamanho exatos. A superficie
global passou de 292 para 294 matches em 322 registros stock, com 28 mismatches,
zero funcoes candidatas ausentes e 46 exclusoes documentadas: `91,30%`.

O probe de layout compilou contra os headers GKI reais e o relatorio ABI foi
recalculado depois da promocao, vinculado ao SHA-256 final.

Relatorios: `kcfi_next12_fwimage_exact.json`,
`kcfi_full_surface_next12_fwimage_final.json`,
`header_layout_probe_next12_fwimage.json` e
`abi_validation_next12_fwimage.json`.

## Promocao e limites

A promocao escopada preservou os 148 PASS anteriores e promoveu somente as
microtarefas `093` e `094`. O manifesto agora possui 150 PASS e 217 funcoes
abertas entre 367; nenhuma promocao em massa foi executada.

- O driver `zte_tpd` inteiro nao esta reconstruido nem semanticamente provado.
- O harness prova apenas os caminhos host cobertos, nao o hardware fisico.
- Os 28 mismatches KCFI restantes exigem novos ciclos atomicos.
- Revisao independente permanece `NOT_PERFORMED`.
- Validacao em hardware permanece `DEFERRED`.
- Nenhum ADB, fastboot, `insmod`, `rmmod`, SPI, IRQ, MMIO ou firmware foi usado.

Este checkpoint fecha offline somente as callbacks de transferencia da imagem
de firmware. Ele nao autoriza afirmar "100% reconstruido" para o modulo.
