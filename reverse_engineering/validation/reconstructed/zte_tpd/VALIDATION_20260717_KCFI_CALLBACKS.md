# Validacao KCFI de Callbacks Sysfs e Driver - 2026-07-17

## Escopo

Este checkpoint corrige contratos de callback que antes eram encobertos por
wrappers candidatos. A decisao usa preambulos KCFI stock, P-Code, assembly
AArch64, as tabelas `kobj_attribute`, `platform_driver` e `spi_driver` e o
oracle Clang local.

Familias corrigidas:

- sete callbacks sysfs `show`: `ssize_t (struct kobject *, struct kobj_attribute *, char *)`;
- cinco callbacks sysfs `store`: `ssize_t (struct kobject *, struct kobj_attribute *, const char *, size_t)`;
- dois callbacks `platform_driver.probe`: `int (struct platform_device *)`;
- quatro callbacks `platform_driver.remove` e `shutdown`: `void (struct platform_device *)`;
- `spi_driver.probe`: `int (struct spi_device *)`;
- `spi_driver.remove`: `void (struct spi_device *)`.

As tabelas agora apontam diretamente para as funcoes reconstruidas. Foram
removidos 20 wrappers que existiam apenas para contornar KCFI; dois wrappers
de assinatura nao relacionados permanecem para analise posterior.

## Resultado

- Stock SHA-256: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato SHA-256: `8a887193ada1f644a7ca9937be2846dc2c56832c1dd51b80cf4adccd4d4b6eac`.
- Dois builds limpos e reprodutiveis: `PASS`.
- ELF, KMI, imports, aliases e namespaces: `PASS`.
- Decomposicao stock: `367/367 PASS`.
- Superficie KCFI integral: `185/322` matches; `137` divergencias restantes.
- Superficie KCFI selecionada: `151/151 PASS`.
- Sete harnesses host: `7/7 PASS`.
- Microtarefas: `123` PASS retidos; `244` pendentes.

## Limites

Esta validacao comprova assinatura, secao, compilacao e comportamento host
dos subconjuntos testados. Nao afirma equivalencia semantica completa nem
validacao no hardware NX809J. Nenhum comando foi enviado ao smartphone.

## Evidencia

- `driver_audit_kcfi_callbacks.json`
- `kcfi_full_surface.json`
- `kcfi_direct_surface_final_comparison.json`
- `symbol_inventory_kmi_exact_final.json`
- `module_decomposition_audit.json`
- `microtask_progress.json`
