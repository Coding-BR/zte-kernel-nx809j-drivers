# Status: zte_ramdisk_reboot

Estado geral: **INCOMPLETO — nao declarar 100%**.

| Gate | Estado | Evidencia/Bloqueador |
|---|---|---|
| 0-7 | PASS | Validacao estatica completa para o modulo atual 1f027cf0...; ver reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/attestation/next098_full_static_validation_20261003/. A comparacao AArch64 atual tambem passou 13/13 funcoes. |
| 8 - Revisao independente | INCOMPLETO | Auditoria de ciclo de vida/sincronizacao desta sessao publicada em reverse_engineering/validation/reconstructed/zte_ramdisk_reboot/attestation/lifetime_sync_audit_20261103/. O criterio original pede revisao em outra sessao/LLM; segue pendente. |
| 9 - Hardware | INCOMPLETO | Nao executado por risco de watchdog, reboot, NVMEM e memoria reservada. |
| 10 - Promocao | INCOMPLETO | Depende dos Gates 8 e 9. |

## Snapshot canonico atual — 2026-11-03

- Fonte: SHA-256 b6659a11624f3c189df04054bbb4caf97099e4a758786e4f90d0a3cddab35052.
- Modulo: SHA-256 1f027cf0fab9269141d722b225b04bfea688add1d28577ba1cbd03543e388892 (221584 bytes).
- reconstruction_map.json: SHA-256 61ef6325dcd7b3729dab0705150998162d6ce1dcb94dd4071fab05e4a48106a5.
- Fonte, modulo e mapa coincidem com o snapshot Docker curado.
- As 13 funcoes passam em instrucoes AArch64 normalizadas, relocations, secao e tamanho de simbolo contra o stock. Dumps e resultado estao na atestacao de ciclo de vida acima.

A validacao completa existente atesta para este mesmo hash: stock/Ghidra 13/13, microtarefas 13/13, KCFI 9/9 na superficie indireta, imports/aliases, build duplo reproduzivel e testes host. O hash e tamanho antigos da reconsolidacao Docker de 2026-09-04 foram substituidos pelos identificadores do snapshot canonico atual.

## Riscos herdados do stock registrados

A funcao remove e vazia, embora probe crie um kobject/sysfs e guarde estado devm no ponteiro global ramdisk_rb. No unbind, o kernel libera devres depois de remove; o kobject e o ponteiro global nao sao limpos, deixando risco de acesso a memoria liberada. O nvmem_cell_get nao tem nvmem_cell_put correspondente. O erro de sysfs_create_group chama kobject_del sem kobject_put. Tambem ha acesso concorrente sem lock ao extract_buffer exposto por sysfs; a revisao registra ainda o byte global compartilhado entre chamadas do watchdog como risco condicionado a concorrencia.

Esses comportamentos sao reproduzidos pelo candidato e nao foram corrigidos para nao alterar a equivalencia declarada. Qualquer hardening futuro deve ser marcado como desvio, passar por rebuild Docker e revalidacao completa de assembly/ABI/KCFI, e atualizar o mapa.

O Gate 9 permanece pendente; nenhuma operacao de hardware foi realizada. O modulo segue **INCOMPLETO**.
