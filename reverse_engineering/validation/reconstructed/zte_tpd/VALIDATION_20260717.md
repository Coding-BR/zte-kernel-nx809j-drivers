# Validacao Local `zte_tpd` - 2026-07-17

## Identidade

- Stock SHA-256: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato SHA-256: `8bf17b48fd905e75504754ab13db24dbbe98ae6141953bc646a7b823d8bee29f`.
- Candidato: `16298224` bytes.
- Toolchain: `clang-r536225` (Clang 19.0.1), Android 16 / GKI 6.12.23 / AArch64.

## Resultado Medido

- Dois builds limpos: PASS, com SHA-256 identico.
- Build/ELF/KMI: `static_verified`.
- Imports KMI, aliases e namespaces: correspondencia exata com o stock.
- KCFI selecionado: `151/151` funcoes PASS, incluindo `143/143` callbacks em
  oito familias recuperadas.
- Decomposicao: `367/367` funcoes com pseudocodigo, P-Code e assembly AArch64.
- Mapa estrutural: `367/367` identidades stock vinculadas ao fonte atual.
- Microtarefas: `91/367` PASS; `276` ainda requerem teste direto.
- Auditoria offline: `8/10` gates PASS. Somente O6 e O10 estao incompletos.
- Hardware: `DEFERRED` neste ciclo offline.

## Usercopy Compartilhado

O corpo reconstruido de `_inline_copy_from_user` e exato contra o stock:

- 61 instrucoes;
- 244 bytes;
- mesma secao;
- relocacoes exatas para `__arch_copy_from_user` e `memset`.

O candidato possui um unico simbolo ELF para esse helper. Os oito chamadores
recuperados usam o helper compartilhado, mas ainda diferem em assembly por
efeitos mais amplos de compilacao e relocacao. Portanto, somente o helper e
classificado como identidade de assembly neste checkpoint.

## Seguranca dos Handlers Proc

Quatro buffers locais recuperados como `__int64 + __int16` foram substituidos
por uma estrutura compactada explicita de 10 bytes. A copia aceita no maximo 9
bytes e preserva o byte NUL final. O harness dedicado verifica:

- 24 funcoes fonte diretamente;
- duas execucoes independentes;
- `7/7` cenarios PASS em cada execucao;
- leituras, EOF, escritas, erro de parse, limite de copia e falha de usercopy;
- efeitos de `set_finger_lock_flag` e os codigos de `tp_zlog_debug_write`;
- ASan e UBSan sem falhas.

## Evidencia Autoritativa

- `driver_audit_static_final.json`
- `abi_validation.json`
- `header_layout_probe.json`
- `kcfi_direct_surface_final_comparison.json`
- `kcfi_callback_families.json`
- `module_decomposition_audit.json`
- `symbol_inventory_kmi_exact_final.json`
- `assembly_comparison_proc_usercopy_final.json`
- `proc_scalar_harness_report.json`
- `microtask_progress.json`
- `microtask_audit.json`
- `parity_report.json`
- `offline_reconstruction_audit.json`

Nenhum ADB, fastboot, `insmod`, `rmmod`, SPI, IRQ, MMIO ou escrita de particao
foi executado. Este checkpoint nao autoriza declarar equivalencia funcional
integral nem reconstrucao 100%.
