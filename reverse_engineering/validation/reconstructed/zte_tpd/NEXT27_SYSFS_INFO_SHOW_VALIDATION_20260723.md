# Next27: syna_sysfs_info_show

## Estado

`READY` para implementacao final. Esta microtarefa ainda nao foi promovida
para `PASS`.

O candidato atual foi compilado depois de alinhar o fluxo do pseudocodigo
Ghidra e de tornar explicitos os acessos AArch64 desalinhados do `part_number`
com `aligned(1), may_alias`. Nenhum teste foi executado no smartphone.

- Stock SHA-256:
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato SHA-256:
  `198cc353e3d6b51057624d64f00dd9226be2ef32c2aff77d025f7802a24dda0b`.
- Candidato: `24589656` bytes.
- Microtarefa: `211_syna_sysfs_info_show`.
- Contagem global: `166 PASS / 201 READY`.

## Evidencia positiva

- Dois builds canonicos em containers e caminhos independentes passaram sem
  stderr e produziram o SHA-256 acima.
- O harness direto passou em cinco casos, repetido em dois ciclos, com
  Clang 19.0.1, ASAN e UBSAN: desconectado, bare, bootloader, application e
  firmware desconhecido.
- O harness verificou formato, ordem dos campos, retorno `ssize_t`, contador
  de referencia, part number de 16 bytes, packrat, Config ID, dimensoes e
  limites de leitura/escrita.
- O KCFI type ID coincide exatamente:
  `0x4e31a072` stock e candidato.
- Os exports locais do Ghidra foram materializados para Assembly, P-Code e
  pseudocodigo do candidato atual.

## Bloqueadores do PASS

| Gate | Stock | Candidato | Resultado |
| --- | ---: | ---: | --- |
| Corpo `.text` | `1020` bytes | `1008` bytes | `FAIL` |
| Instrucoes AArch64 | `255` | `252` | `FAIL` |
| KCFI type ID | `0x4e31a072` | `0x4e31a072` | `PASS` |
| KCFI tamanho | `1020` | `1008` | `FAIL` |
| Ghidra C normalizado | referencia | divergente | `FAIL` |
| Ghidra P-Code shape | `958` operacoes | `949` | `FAIL` |

A divergencia nao foi convertida em equivalencia permissiva. O proximo passo
e alinhar a ordem dos ramos de conexao e a preservacao dos temporarios que
produzem os 12 bytes ausentes, depois repetir todos os gates.

## Arquivos de evidencia

- `build_next27_info_probe4_report.json`;
- `assembly_comparison_next27_info_probe4.json`;
- `kcfi_comparison_next27_info_probe4.json`;
- `ghidra_semantic_comparison_next27_info_probe4.json`;
- `harness/next27_sysfs_info_show_host_test_report.json`;
- `candidate_assembly_next27_info_probe4/`;
- `ghidra_candidate_next27_info_probe4_scoped/`.

## Limites

O harness substitui `kobject`, `driver_data`, `scnprintf` e `printk`; ele
prova comportamento observavel em host, nao lifetime real de kobjects,
permissoes sysfs, concorrencia, userspace Android ou hardware SPI.
