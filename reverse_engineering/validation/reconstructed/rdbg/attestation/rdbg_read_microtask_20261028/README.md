# Atestação da microtarefa `rdbg_read`

Data: 2026-10-28. Função stock: `rdbg_read@00100708` (`.text+0x260`). O escopo desta atestação é apenas essa função. O mapa mantém `implemented_pending_independent_review`; promoção do driver não está autorizada.

## Identidade e build

- Módulo stock: SHA-256 `05aaaf7e0da03cbf25343e32d9a0a7a965de6907eef342a1d9d4b0b55cd11a12`.
- Candidato: SHA-256 `2747a2c6a790734a5e59f45edc2af1bb4ad332d0ab73fe5ef60358a4fa34ed9f`, 678.992 bytes.
- Dois builds Docker independentes, tanto pelo protocolo quanto pelo snapshot `engenharia/curated/rdbg`, produziram o mesmo SHA-256.
- Imagem: `nubia-sm8850-kernel-builder:latest`, ID `sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390`; Clang `clang-r536225`.
- O snapshot curado foi sincronizado por hash a partir de `kernel_development/drivers/reconstructed/rdbg`; os relatórios estão em `docker_source_sync.json` e `docker_curated_audit.json`.
- A exportação Ghidra candidata identifica `rdbg_read` em `00100cdc`, com corpo de 912 bytes. O endereço de entrada muda com o layout do módulo; a comparação usa a identidade stock e o offset do símbolo.

## Gates da função

O plano está em `protocol_plan_v12/hard_protocol_plan.json` e o relatório final em `protocol_core_v12/hard_protocol_report.json`. Os oito gates automatizados passaram: identidade do módulo, identidade do mapa, Joern scoped, slice Joern, builds Docker reproduzíveis, assembly/relocações, KCFI e Ghidra/P-Code.

- Assembly AArch64: 228 instruções e 912 bytes nos dois lados; instruções, relocações, seção e tamanho do símbolo coincidem.
- Ghidra: C normalizado, corpo e forma das operações P-Code passaram sem fallback de assembly.
- KCFI: tipo `0xf4e9d97c` igual ao stock.
- Joern `4.0.548`: gates scoped e slice aprovados.
- Os builds do snapshot Docker estão preservados em `docker_curated_builds/`; os dois têm o mesmo hash.

## Estado e limites

- `promotion_authorized` é `false`. A revisão independente continua pendente.
- A auditoria do módulo inteiro permanece `incomplete_or_failed`, com `static_verified` vazio. O gate de reprodutibilidade comprova os dois builds iguais e não certifica o módulo parcial como pronto.
- `rdbg_write@00100a9c` e `init_module@00101638` ainda não têm mapeamento.
- Revisão independente, harness de host, paridade completa do módulo, validação de hardware e promoção continuam pendentes. Não carregar o módulo parcial no aparelho.

## Índice

- `protocol_plan_v12/`: preflight sem bloqueios.
- `protocol_core_v12/`: assembly, KCFI, comparação Ghidra/P-Code, Joern, logs e builds reproduzíveis.
- `candidate_ghidra_v11/rdbg.ko/`: export Ghidra ligada ao módulo candidato.
- `docker_curated_builds/`: os dois módulos produzidos pelo snapshot curado e manifesto de hashes.
- `docker_source_sync.json`, `docker_curated_audit.json` e `docker_curated_audit.md`: sincronização e auditoria do Docker de engenharia.
- `../../../../../../kernel_development/drivers/reconstructed/rdbg/reconstruction_map.json`: estado por função e pendências do driver.
