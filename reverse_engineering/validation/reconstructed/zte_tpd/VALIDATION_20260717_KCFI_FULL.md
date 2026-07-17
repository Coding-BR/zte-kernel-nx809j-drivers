# Auditoria KCFI Integral `zte_tpd` - 2026-07-17

## Motivo

O comparador anterior cobria 151 funcoes selecionadas, principalmente callbacks
e handlers com assinatura ja recuperada. Esse PASS era correto para o
subconjunto, mas nao media todas as funcoes com preambulo KCFI no modulo stock.

## Resultado Integral

- Stock SHA-256: `a3778a079e8ed2d5fafd2fe0f7f55b814a4a47cb8c9c091b6a09b55865b26342`.
- Candidato SHA-256: `8bf17b48fd905e75504754ab13db24dbbe98ae6141953bc646a7b823d8bee29f`.
- Registros KCFI stock recuperados: `322`.
- Type ID e secao correspondentes: `154/322` (`47,83%`).
- Type IDs divergentes: `168`.
- Registros candidatos ausentes: `0`.
- Funcoes stock excluidas pela recuperacao de preambulo: `46`.

As 46 exclusoes nao sao classificadas como PASS nem como N/A automatico. Cada
uma requer evidencia de assembly separada, pois a ferramenta detectou
sobreposicao entre o local esperado do preambulo e outro corpo de funcao.

## Impacto no Protocolo

- A superficie selecionada `151/151` continua PASS.
- A paridade integral muda para `INCOMPLETE`.
- A auditoria offline passa de `8/10` para `7/10` gates PASS.
- Uma microtarefa so pode usar `kcfi_full_surface.json` quando o proprio registro
  da funcao tiver `passed: true`.
- Funcoes divergentes devem ter a declaracao C corrigida e o modulo recompilado
  antes de qualquer promocao comportamental nova.

## Proxima Etapa

As 168 divergencias foram agrupadas por type ID stock. As maiores familias sao
resolvidas primeiro, usando Ghidra/P-Code para aridade e fluxo, e um oracle
Clang/KCFI local para a categoria ABI exata de retorno e parametros. Nenhum cast
de ponteiro de funcao sera aceito como correcao.

## Evidencia

- `kcfi_full_surface.json`
- `KCFI_FULL_SURFACE.md`
- `signature_oracles/stock_all_kcfi.json`
- `signature_oracles/candidate_final_all_kcfi.json`
- `kcfi_direct_surface_final_comparison.json`
- `parity_report.json`

Todo o processo e offline. Nenhum comando foi enviado ao smartphone.
