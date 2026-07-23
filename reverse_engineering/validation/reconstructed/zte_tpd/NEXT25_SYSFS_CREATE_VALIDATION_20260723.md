# Next25: criacao da hierarquia sysfs

## Veredito

`PASS` offline para `syna_sysfs_create_dir`.
O driver `zte_tpd` completo permanece `INCOMPLETE`. Nenhuma operacao foi
executada no smartphone.

- Stock SHA-256:
  `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato: `24.590.136` bytes, SHA-256
  `f828a61670510ed2da430a80ced9d6858a3d5b8807af96391fba14bef0e8358b`.
- Microtarefa: `209_syna_sysfs_create_dir`.
- Resultado agregado: `165 PASS / 202 READY`.

## ABI, layout e ownership

```c
int syna_sysfs_create_dir(struct syna_tcm *tcm,
			  struct platform_device *parent);
```

O Assembly stock comprova `parent->dev` em `+0x10` e o armazenamento de
`struct kobject *` em `syna_tcm + 0x398`. O overlay passou a declarar
`sysfs_dir` nesse offset, preservando `sizeof(struct syna_tcm) == 0x580`.
O probe AArch64 compilado contra a arvore GKI 6.12 valida ambos os offsets.

O ponteiro e criado e destruido pelo ciclo sysfs observado. Nao existe
evidencia local de publicacao RCU; portanto, nenhuma anotacao `__rcu`, lock
novo ou lifetime adicional foi inventado.

## Fluxo recuperado

1. criar `sysfs` sob `&parent->dev.kobj`;
2. armazenar o retorno em `tcm->sysfs_dir`;
3. se o retorno for nulo, emitir o primeiro log e retornar `-20`;
4. criar `attr_group`;
5. em retorno negativo, emitir o segundo log, executar `kobject_put` e
   propagar o erro;
6. criar o diretorio de testes;
7. em retorno negativo, emitir o terceiro log, remover `attr_group`,
   executar `kobject_put` e propagar o erro;
8. retornar zero em sucesso.

Retornos positivos de `sysfs_create_group` e `syna_testing_create_dir` nao
acionam rollback. Essa distincao foi preservada porque o stock testa o bit de
sinal, e nao igualdade com zero.

## Equivalencia estatica

| Gate | Stock | Candidato | Resultado |
| --- | ---: | ---: | ---: |
| Corpo | `212` bytes | `212` bytes | `PASS` |
| Instrucoes | `53` | `53` | `PASS` |
| Secao | `.text` | `.text` | `PASS` |
| Relocations comparadas | `18` | `18` | `PASS` |
| KCFI | `0x720adbbe` | `0x720adbbe` | `PASS` |
| C normalizado Ghidra | referencia | identico | `PASS` |
| P-Code | `154` operacoes | `154` operacoes | `PASS` |

Nao foram usadas equivalencias permissivas de instrucao ou relocation. A
normalizacao Ghidra aceita somente a diferenca de apresentacao
`&attr_group`/`attr_group`, depois de o ELF comprovar a mesma relocation de
objeto. O teste de regressao rejeita outros simbolos.

## Harness direto

O harness substitui somente as APIs kobject/sysfs, o helper de testes e
`printk`. Foram executados cinco casos:

1. falha ao criar o kobject;
2. falha negativa ao criar o grupo;
3. falha negativa ao criar o diretorio de testes;
4. sucesso com retornos zero;
5. sucesso com retornos positivos.

Cada caso valida retorno, estado de `sysfs_dir`, argumentos, ordem e
quantidade das chamadas, rollback e logs exatos. Dois ciclos independentes
foram compilados com Clang 19.0.1, `-Wall -Wextra -Werror` e ASAN+UBSAN.
Ambos passaram sem warning ou diagnostico de sanitizador e produziram o
mesmo binario de harness.

## Build e regressao

Dois builds canonicos em caminhos `M=` distintos, com mtimes normalizados,
produziram o mesmo SHA-256 candidato e stderr vazio. A auditoria independente
executou outros dois builds limpos e reproduziu o mesmo hash, tambem sem
warnings.

O checkpoint tambem corrigiu a portabilidade dos manifests no Windows.
Vinte e seis arquivos historicos diferiam dos blobs Git apenas por CRLF; os
bytes normalizados coincidiram com o indice em `59/59` caminhos unicos.
Depois do reparo, uma auditoria leu diretamente os blobs do commit e validou
`495/495` referencias de compile/KCFI/teste das `165` tarefas PASS. Assim,
o resultado nao depende do formato de fim de linha do checkout local. O gate
reproduzivel e `verify_driver_microtasks.py --git-index`.

Regressao global:

- KCFI recuperavel: `305/322` (`94,72%`);
- superficie direta selecionada: `176/176`;
- familias de callback: `8/8`, total `143/143`;
- decomposicao: `367/367` em C, P-Code e Assembly;
- simbolos text stock ausentes: `0`;
- imports ausentes ou inesperados: `0`;
- simbolos text auxiliares extras: `147`;
- testes unitarios da esteira: `162/162`.

## Evidencias

- `build_next25_sysfs_create_final_report.json`;
- `driver_audit_next25_sysfs_create.json`;
- `promoted_candidate_verification_next25_sysfs_create.json`;
- `assembly_comparison_next25_sysfs_create_final.json`;
- `candidate_assembly_next25_sysfs_create_final/`;
- `ghidra_semantic_comparison_next25_sysfs_create_final.json`;
- `ghidra_candidate_next25_sysfs_create_final/`;
- `harness/next25_sysfs_create_host_test_report.json`;
- `kcfi_stock_next25_sysfs_create.json`;
- `kcfi_candidate_next25_sysfs_create_final.json`;
- `kcfi_comparison_next25_sysfs_create_final.json`;
- `kcfi_candidate_next25_sysfs_create_all.json`;
- `kcfi_direct_surface_next25_sysfs_create_comparison.json`;
- `kcfi_callback_families_next25_sysfs_create.json`;
- `kcfi_full_surface_next25_sysfs_create.json`;
- `module_decomposition_audit_next25_sysfs_create.json`;
- `symbol_inventory_next25_sysfs_create.json`;
- `microtask_attestation_next25_sysfs_create_final.json`;
- `parity_report_next25_sysfs_create.json`;
- `offline_audit_next25_sysfs_create.json`.

## Limites

O `PASS` vale somente para a funcao e as superficies offline enumeradas. Ele
nao prova lifetime real do kobject durante concorrencia, permissoes dos
atributos, interacao com userspace, teardown no NX809J nem boot.

O driver completo ainda possui `17` divergencias KCFI recuperaveis, `202`
microtarefas sem atestacao integral, `147` simbolos text auxiliares extras,
revisao humana independente pendente e validacao dinamica deferida.
