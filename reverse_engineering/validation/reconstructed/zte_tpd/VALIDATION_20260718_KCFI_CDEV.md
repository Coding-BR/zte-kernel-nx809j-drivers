# Validacao KCFI de Operacoes Cdev - 2026-07-18

## Escopo

Este checkpoint corrige quatro contratos usados por `struct file_operations`:

- `syna_cdev_open`;
- `syna_cdev_release`;
- `syna_open`;
- `syna_release`.

O ELF stock atribui as quatro funcoes ao type ID KCFI `0x9829071d`,
correspondente a `int (struct inode *, struct file *)`. O candidato anterior
expunha implementacoes sem argumentos ou com tres inteiros genericos e usava
casts ou wrappers nas tabelas de operacoes. As implementacoes atuais possuem o
contrato tipado e sao registradas diretamente; os trampolins internos restantes
fazem a conversao de forma explicita sem ocupar uma fronteira indireta.

## Resultado

- Stock SHA-256: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato SHA-256: `2a70c7f1e88c4091812538d6d2187cec18597919c9d8acc0b60a9769d5b09589`.
- Candidato: `18260072` bytes.
- Dois builds limpos e reprodutiveis: `PASS`.
- ELF, KMI, imports, aliases e namespaces: `PASS`.
- Quatro callbacks deste grupo: `4/4 PASS` com type ID `0x9829071d`.
- Superficie KCFI integral: `189/322` matches; `133` divergencias restantes.
- Superficie KCFI selecionada: `151/151 PASS`.
- Decomposicao stock: `367/367 PASS`.
- Sete harnesses host: `7/7 PASS`.
- Microtarefas: `123` PASS retidos; `244` pendentes.

## Limites

O resultado prova build reprodutivel, contrato KCFI, secao ELF, KMI e ausencia
de regressao nos harnesses existentes. Ele nao prova equivalencia semantica das
quatro rotinas nem comportamento no hardware NX809J. Nenhum comando ADB,
fastboot, `insmod`, `rmmod`, SPI, IRQ, MMIO ou escrita de particao foi executado.

## Evidencia

- `driver_audit_kcfi_cdev.json`;
- `driver_audit_static_final.json`;
- `kcfi_full_surface.json`;
- `kcfi_direct_surface_final_comparison.json`;
- `symbol_inventory_kmi_exact_final.json`;
- `module_decomposition_audit.json`;
- `microtask_progress.json`;
- `parity_report.json`.
