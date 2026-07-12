# Status de reconstrucao do `zte_reboot_ext`

O driver concluiu os gates estaticos 0 a 7: stock e dependencia vendor rastreados, 14 funcoes reconstruidas, imports/aliases exatos, build reproduzivel, KCFI 14/14, comparacao Ghidra 14/14 e harness comportamental reproduzivel.

Nao e permitido declarar 100% concluido. Faltam revisao independente, validacao supervisionada no hardware e promocao final (gates 8 a 10).

- Stock: `1e5b8e9e91f304236802d52a316570f6649b8f504b58558b28909d48c62d910f`.
- Candidato: `e6146dfb5cf51b0ec46e1f32bfd7b5f7315d089eebc96beef6fadf6eb79bf17f`.
- Dependencia: `get_ss_panic_buf_byte`, CRC `0x6462cbe7`, exportado por `qcom_q6v5`.
- Restricao: nao executar panic, unload ou substituicao automatica no aparelho.

Estado autoritativo: `engenharia/validation/zte_reboot_ext/CYCLE_VALIDATION.md`.
