# Revisão do export candidato Ghidra — `fp_goodix`

## Escopo

Este checkpoint registra a análise headless do artefato candidato atual com
Ghidra `12.1.2_PUBLIC`, usando o mesmo `fp_goodix.ko` que foi reproduzido no
Docker. O export foi gerado diretamente de:

- `kernel_development/drivers/reconstructed/fp_goodix/fp_goodix.ko`
- SHA-256: `7c2772bf16112e80b4311ec686696156f46adf985d67fac9ae257ef7cc70241d`

O módulo stock usado como referência é
`reference_modules/full_vendor_boot/fp_goodix.ko` e o export stock preservado
está em `offline_static/ghidra_stock`.

## Resultado

- O Ghidra candidato encontrou 39 funções locais; o stock preserva 30 funções
  no escopo público do driver.
- A comparação estrita dos 30 nomes stock passou em 23/30.
- Os sete casos que ainda não passam diretamente no Ghidra são
  `gf_ioctl`, `gf_enable_irq`, `nav_event_input`, `gf_probe`, `gf_parse_dts`,
  `init_module` e `cleanup_module`.
- O relatório de assembly/relocações versionado continua passando em 30/30;
  a auditoria Docker reproduziu o mesmo SHA-256 em `cycle_1` e `cycle_2`.

## Interpretação

As divergências restantes estão concentradas em nomes de dados deslocados,
funções auxiliares reconhecidas como `FUN_*` e diferenças de fronteira/forma
do decompilador. Em particular, `gf_ioctl` e `gf_parse_dts` têm P-Code e
tamanho de corpo compatíveis no checkpoint, mas o C decompilado mantém alvos
locais distintos. Isso é evidência para investigação adicional, não uma
autorização para relaxar a igualdade estrita.

O modo opcional `--allow-pcode-authoritative-decompiler-fallback`
`--allow-ghidra-return-propagation-fallback`
`--allow-shared-data-binding-normalization` também foi executado e não elevou
o conjunto a aprovação total; por isso permanece apenas como relatório
auxiliar, sem promoção.

## Artefatos

- Export completo: `offline_static/ghidra_candidate_20260901`
- Comparação estrita: `ghidra_candidate_20260901_semantic_comparison.json`
- Comparação auxiliar: `ghidra_candidate_20260901_semantic_comparison_pcode_fallback.json`
- Assembly e relocações: `assembly_comparison.json`
- Auditoria Docker/reprodutibilidade: `driver_audit.json`

Status deste checkpoint: evidência versionada; revisão independente e
validação em hardware continuam pendentes.
