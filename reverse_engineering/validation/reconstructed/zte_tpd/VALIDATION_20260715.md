# Validacao Local `zte_tpd` - 2026-07-15

## Resultado

- Build/ELF: `static_verified`.
- Protocolo offline completo: `INCOMPLETE`, com `8/10` gates PASS.
- Hardware: `DEFERRED`.
- Nenhuma afirmacao de reconstrucao `100%`.

## Artefatos Vinculados

- Stock: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato: `87162be490ca55ca47b64b14c9ce0e75325e6177cfa5c04edac58137b8e4fcf8`.
- Tamanho do candidato: `12769952` bytes.

## Evidencia Positiva

- Build limpo duplo reproduzivel: PASS.
- Candidato canonico igual ao segundo build fresco: PASS.
- Imports KMI exatos: `152/152`.
- Aliases, namespaces, vermagic e AArch64 ET_REL: PASS.
- Mapa estrutural: `367/367` identidades Ghidra.
- Simbolos stock presentes: `359/359`.
- KCFI verificado: `14/14`.
- Probe de layout GKI/TCM: PASS.
- Harnesses do subconjunto direto: `17/17`.

## Pendencias Reais

- O6: somente 17 funcoes possuem harness direto; as 367 microtarefas ainda nao
  possuem o trio individual de compile, KCFI e teste.
- O10: revisao independente ausente.
- Validacao controlada no NX809J ausente para este SHA.

## Relatorios Principais

- `driver_audit_static_final.json`
- `offline_reconstruction_audit.json`
- `header_layout_probe.json`
- `abi_validation.json`
- `kcfi_kmi_exact_final_comparison.json`
- `symbol_inventory_kmi_exact_final.json`
- `parity_report.json`
- `microtask_audit.json`

O stock local, Ghidra, P-Code, assembly, relocacoes e headers configurados sao a
fonte da verdade desta revisao. Nenhum ADB, fastboot, `insmod`, `rmmod`, SPI ou
escrita de particao foi executado.
