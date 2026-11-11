# Status de reconstrucao do `zte_reboot_ext`

## Snapshot reconciliado e revalidação Docker — 2026-11-11

O snapshot curado foi sincronizado com a árvore versionada: nove arquivos copiados (seis includes assembly e três documentos), zero removidos; a verificação posterior encontrou zero diferenças. A validação canônica reconstruiu 14/14 funções Ghidra e passou em rastreabilidade, revisão do mapa, identidade do kernel, imports/aliases e dois builds limpos reproduzíveis. Os dois builds deram SHA-256 `a6a823e3a35abc50292883f43951838b8715ed851da5d27304ebe94c68f498a2` (242336 bytes). O candidato registrado continua `42ef53dce4e2b7decf091877ef395b35250045aae0dd159f21a526d6002672e0`; seu SHA completo difere do rebuild em metadados build-id e/ou debug/BTF, mas conteúdo executável, layout de seções e modinfo coincidem. O auditor retorna `static_verified`; não houve promoção do módulo, revisão independente ou teste em hardware. O estado não significa equivalência comportamental total nem prontidão de dispositivo. Evidência: `reverse_engineering/validation/reconstructed/zte_reboot_ext/attestation/source_snapshot_reconcile_20261111/`.

O driver concluiu os gates estaticos 0 a 7: stock e dependencia vendor rastreados, 14 funcoes reconstruidas, imports/aliases exatos, build reproduzivel, KCFI 14/14, comparacao Ghidra 14/14 e harness comportamental reproduzivel.

Nao e permitido declarar 100% concluido. Faltam revisao independente, validacao supervisionada no hardware e promocao final (gates 8 a 10).

- Stock: `1e5b8e9e91f304236802d52a316570f6649b8f504b58558b28909d48c62d910f`.
- Candidato registrado no estado anterior: `c806028b78b69d9aa4ec63594e3962b73563d0eb6e29b1cca3bfb51ad8589633` (236064 bytes).
- Dependencia: `get_ss_panic_buf_byte`, CRC `0x6462cbe7`, exportado por `qcom_q6v5`.
- Restricao: nao executar panic, unload ou substituicao automatica no aparelho.

Estado autoritativo: `engenharia/validation/zte_reboot_ext/CYCLE_VALIDATION.md`.

## Atualização de identidade — 2026-11-02

A auditoria independente `next092_full_static_validation_20261003` registra o
candidato corrente `42ef53dce4e2b7decf091877ef395b35250045aae0dd159f21a526d6002672e0`
(243160 bytes), igual aos dois builds Docker reproduzíveis e com resultado
`static_verified`. O `candidate_sha256` do mapa foi atualizado para esse mesmo
artefato. Os status das 14 funções não foram alterados; revisão independente e
validação em hardware continuam pendentes.
