# Next26: remocao controlada da hierarquia sysfs

## Veredito

`PASS` offline para `syna_sysfs_remove_dir`.
O driver `zte_tpd` completo permanece `INCOMPLETE`. Nenhuma operacao foi
executada no smartphone.

- Stock SHA-256:
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato: `24.592.200` bytes, SHA-256
  `d8c3cf5c315406dbb4d8424aaa0732ca79bcabb765853196a3751847a23607e8`.
- Microtarefa: `210_syna_sysfs_remove_dir`.
- Resultado agregado: `166 PASS / 201 READY`.

## Contrato recuperado

```c
void syna_sysfs_remove_dir(struct syna_tcm *tcm);
```

O overlay AArch64 declara:

- `tcm->sysfs_dir` em `+0x398`;
- `tcm->utility_dir` em `+0x3a0`;
- `frame_wait` continua em `+0x448`;
- `sizeof(struct syna_tcm)` continua `0x580`.

O kobject em `+0x3a0` e criado pelo caminho stock com o nome `"utility"`.
`utility_dir` e um nome de engenharia para esse objeto; nao e uma afirmacao
de que a estrutura original tinha esse identificador.

## Fluxo observado no stock

1. Se `tcm == NULL`, emitir exatamente
   `KERN_ERR "[error] %s: Invalid tcm device handle\n"` e retornar.
2. Se `tcm->sysfs_dir == NULL`, retornar silenciosamente.
3. Chamar `syna_testing_remove_dir(tcm)`.
4. Se `tcm->utility_dir != NULL`, remover `attr_debug_group` e chamar
   `kobject_put(tcm->utility_dir)`.
5. Remover `attr_group` de `tcm->sysfs_dir`.
6. Chamar `kobject_put(tcm->sysfs_dir)`.
7. Nao zerar os ponteiros armazenados; essa peculiaridade foi preservada.

## Equivalencia estatica

| Gate | Stock | Candidato | Resultado |
| --- | ---: | ---: | --- |
| Corpo | `132` bytes | `132` bytes | `PASS` |
| Instrucoes | `33` | `33` | `PASS` |
| Secao | `.text` | `.text` | `PASS` |
| Relocations resolvidas | mesma sequencia | mesma sequencia | `PASS` |
| KCFI | `0x3175607e` | `0x3175607e` | `PASS` |
| C normalizado Ghidra | referencia | identico | `PASS` |
| P-Code | `83` operacoes | `83` operacoes | `PASS` |

Nao foram usadas equivalencias permissivas. O endereco do grupo de debug,
o endereco do grupo principal, a mensagem de erro e o nome da funcao foram
resolvidos contra as relocations e strings do ELF stock.

## Harness direto

O harness substitui somente `syna_testing_remove_dir`, `sysfs_remove_group`,
`kobject_put` e `printk`. Os quatro casos exercitados foram:

1. `tcm == NULL`;
2. `sysfs_dir == NULL`;
3. diretorio principal presente sem `utility_dir`;
4. ambos os diretorios presentes.

Cada caso valida retorno, ordem, multiplicidade, ponteiros, grupos, log e
retencao dos ponteiros. Dois ciclos independentes usaram Clang 19.0.1 com
`-Wall -Wextra -Werror`, ASAN e UBSAN. Ambos passaram sem diagnosticos.

## Reproducibilidade e escopo

Dois builds canonicos, em caminhos de modulo independentes e com mtimes
normalizados, produziram o mesmo SHA-256 e stderr vazio. O probe de layout
compilado contra a arvore Android 16 / GKI 6.12.23 passou, assim como a
decomposicao hash-bound `367/367`.

Uma segunda esteira de auditoria executou outros dois rebuilds Docker limpos.
Ambos reproduziram o candidato promovido byte a byte. A auditoria confirmou:

- AArch64 `ET_REL`;
- `vermagic` igual ao manifesto atestado da ROM userdebug;
- aliases, namespaces e simbolos indefinidos iguais ao stock;
- mapa Ghidra completo e vinculado ao fonte;
- SHA-256 promovido
  `d8c3cf5c315406dbb4d8424aaa0732ca79bcabb765853196a3751847a23607e8`.

O resultado `static_verified` dessa auditoria vale para a superficie estatica
do modulo e para a reproducibilidade do artefato. Ele nao substitui a
conclusao das `201` microtarefas restantes nem validacao dinamica em hardware.

Os gates globais permanecem:

- KCFI recuperavel: `305/322`;
- superficie direta selecionada: `176/176`;
- familias de callback: `8/8`, total `143/143`;
- microtarefas atestadas: `166/367`.

Este checkpoint prova apenas a funcao e as superficies offline indicadas.
Nao prova lifetime concorrente real de kobjects, permissao sysfs, interacao
com userspace, teardown em hardware ou boot.

## Evidencias

- `build_next26_sysfs_remove_probe1_report.json`;
- `assembly_comparison_next26_sysfs_remove_probe1.json`;
- `ghidra_semantic_comparison_next26_sysfs_remove_probe1.json`;
- `kcfi_comparison_next26_sysfs_remove_probe1.json`;
- `kcfi_full_surface_next26_sysfs_remove_probe1.json`;
- `kcfi_direct_surface_next26_sysfs_remove_probe1_comparison.json`;
- `kcfi_callback_families_next26_sysfs_remove_probe1.json`;
- `harness/next26_sysfs_remove_host_test_report.json`;
- `header_layout_probe.json`;
- `module_decomposition_audit_next26_sysfs_remove_probe1.json`;
- `driver_audit_next26_sysfs_remove.json`;
- `promoted_candidate_verification_next26_sysfs_remove.json`.
