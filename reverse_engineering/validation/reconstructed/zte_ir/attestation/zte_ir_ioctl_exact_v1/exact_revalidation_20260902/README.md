# Atestação exact de `zte_ir_ioctl`

Esta unidade promove a função `zte_ir_ioctl@0010069c` como uma ilha AArch64
materializada do assembly stock. O módulo foi compilado duas vezes no Docker
fixado e os oito gates automatizados do protocolo passaram.

O corpo stock contém instruções privilegiadas de `TTBR0_EL1`, `TTBR1_EL1` e
`DAIF`. A atestação é exclusivamente estática/offline; não prova segurança,
efeito físico nem autoriza carregamento no aparelho.

Evidências principais: `hard_protocol_report.json`, `assembly/comparison.json`,
`kcfi/comparison.json`, `ghidra_semantic_comparison.json`,
`joern/joern_gate_report.json` e `docker_reproducibility.json`.
