# aw8693x_offset_cali — validação isolada

Identidade: b3091690ef10935f75294db0a9014aa819c327b9611a8c7da4a3f651acc35d6a  
Stock: reference_modules/stock/haptic_86938.ko (SHA-256 05e946134e27ef741fcbb67cdb2dcc93bf9a75f439fa341178459c3e8825187e)  
Estado: candidate_under_static_validation

## Problema corrigido

Quando o índice do ganho é maior ou igual a 8, o stock registra erro, define o divisor como zero e executa SDIV AArch64. O stock retorna zero nesse caso. A expressão C de divisão por zero tinha comportamento indefinido. A fonte agora usa SDIV inline em AArch64 e um fallback host que define explicitamente o resultado zero, mantendo também protegido o caso INT_MIN / -1.

## Evidência da função isolada

- Build Docker reproduzível, identidade da entrada e source hash conferidos em protocol_core_v11.
- KCFI 0x847a0830, símbolo .text com 432 bytes, igual ao stock.
- C decompilado normalizado igual; divergência estrita de P-Code e assembly limitada à condição unsigned equivalente x >= 8 / x > 7, coberta por prova hash-bound.
- Host harness: 8 casos aprovados com AddressSanitizer e UndefinedBehaviorSanitizer, incluindo índice inválido/divisor zero, limites de saída, sequência I2C e erros ignorados dos helpers.
- Revisão independente: QUALIFIED; correção isolada sustentada, microtask permanece em validação.

## Integração ainda não demonstrada

O candidato contém a função corrigida, mas não contém aw8693x_func_list nem haptic_init. A auditoria Docker do driver inteiro indica .ko reconstruído ausente e falhas de traceabilidade/paridade. Portanto, ainda não há prova de que a tabela do módulo final ligue o slot +0x50 à função candidata, nem de paridade do módulo completo. A tarefa continua candidate_under_static_validation; nenhuma validação em hardware foi executada.

Relatórios: protocol_core_v11/hard_protocol_report.json, host_harness_report.json, candidate_linkage_audit.json, independent_review_v11.json.
