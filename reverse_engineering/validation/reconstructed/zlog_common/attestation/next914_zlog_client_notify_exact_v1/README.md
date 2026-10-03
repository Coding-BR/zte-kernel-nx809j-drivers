# zlog_client_notify — atestação offline exact v1

Status: `CORE_GATES_PASS` / offline-only.

Esta unidade consolida a reconstrução de `zlog_client_notify` contra o módulo
stock `reference_modules/full_vendor_boot/zlog_common.ko`. O candidato foi
recompilado duas vezes pelo Docker `nubia-sm8850-kernel-builder:latest`, usando
o snapshot de `kernel_development/drivers/reconstructed/zlog_common`, o volume
`nubia_sm8850_kernel_src`, o volume `nubia_sm8850_kernel_toolchains` e
`clang-r536225`.

Gates aprovados: identidade de entrada, Docker reprodutível, assembly/relocations,
Ghidra/P-Code, Joern scoped/slice, KCFI e mapa de reconstrução (`8/8`). O
export Ghidra candidato foi regenerado a partir do `.ko` efetivamente produzido
no ciclo Docker; seu MD5 é ligado no `semantic_comparison.json`, evitando
reutilização de evidência de um binário anterior. O tipo KCFI é `0x441dde05`
nos dois módulos e a comparação assembly passou.

O runner é não-promotor por desenho; esta pasta é a evidência versionada e a
promoção do mapa permanece separada da execução dos gates. Não houve execução
em Android/NX809J, `insmod`, teste de hardware ou alegação de equivalência
funcional absoluta.
