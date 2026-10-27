# Auditoria de cobertura das reconstruções — 2026-10-27

## Resultado

**Ainda não: o inventário completo não foi reconstruído.** A pasta reference_modules/full_vendor_boot contém 335 módulos .ko. Há 21 mapas: 20 candidatos com fonte e módulo passaram a classificação estática; haptic_86938 ainda só tem evidência stock. Os outros 314 sem mapa foram triados por nome e conferidos contra os hashes stock: 306 estão provisoriamente classificados como platform/standard e ficam no corpus de dependências; 8 estão na fila device-vendor-review e seguem sem mapa: 7 aguardam confirmação de escopo por fonte local e Device Tree; `soc_fan` já tem escopo confirmado pelo Device Tree do NX809J, mas continua sem mapa, fonte e módulo candidato. Essa triagem não prova propriedade nem ativação do overlay em runtime. Veja [vendor_boot_scope_triage_20261027.json](vendor_boot_scope_triage_20261027.json) e a [revisão de escopo de soc_fan](../../soc_fan/offline_static/SOC_FAN_SCOPE_REVIEW.json).

Os 20 candidatos anteriores passaram os gates estáticos registrados, mas isso não prova equivalência semântica. O relatório registra **0 validados em hardware**. Para `aw9620x`, os 8 gates automatizados passaram e `promotion_authorized` continua `false`.

## Candidatos com fonte, mapa e módulo

`aw86320`, `aw9620x`, `fp_goodix`, `gpio_keys_nubia`, `nubia_hw_version`, `zlog_common`, `zlog_exception`, `zlog_test`, `zte_charger_policy`, `zte_fingerprint`, `zte_imem_info`, `zte_ir`, `zte_led`, `zte_misc`, `zte_power_supply`, `zte_ramdisk_reboot`, `zte_reboot_ext`, `zte_sensor_sensitivity`, `zte_stats_info`, `zte_tpd`.

## Progresso em `haptic_86938`

A evidência stock cobre 160 funções. Corrigi em exportação Ghidra separada os limites de oito corpos usando tamanhos ELF, preservei a exportação original, extraí assembly stock via Docker e validei MP0 para as 160 identidades. MP1 encontrou 155 chamadas indiretas. O KCFI 0x7cc2eb16 foi resolvido como u32(struct i2c_adapter *) com probe Kbuild no Docker fixado, três implementações stock e offsets do header; 154 origens indiretas e três hipóteses de alvo calculado seguem abertas. MP2 e MP3 têm inventários brutos dos efeitos e do fluxo de controle. MP4 indexa 213 chamadas de ciclo de vida, 214 relocations de dados, 127 ponteiros de função e 23 relocations próximas a APIs de callback; a revisão relacionou tabelas I²C, file operations, IRQ, timers e firmware, mantendo desconhecidos ABI, ownership e teardown. MP5 organiza 11 grupos de recursos e efeitos de estado de 29 funções críticas. A revisão manual com assembly confirmou quatro relações de ciclo de vida (misc register/deregister, dois hrtimers e delayed work) e a relação de dev_id da IRQ com o mesmo estado. O pareamento automático por contagem continua em zero; não há prova completa de ownership para aquisição/liberação. A workqueue armazenada em +0x448 sem referência direta a destroy_workqueue, callbacks de firmware e demais caminhos de teardown seguem como questões abertas, sem concluir vazamento ou double-free. Ver [MP5_RELATION_REVIEW.json](../../haptic_86938/offline_static/MP5_RELATION_REVIEW.json). **A reconstrução candidata ainda não começou**; o plano continua bloqueado pela fonte candidata ausente, pelos demais CALLIND sem origem rastreada e pelas provas de lifetime. Equivalência semântica, promoção e hardware seguem pendentes.

## Fila difícil sem mapa

`awp1921`, `dmesg_dumper`, `ftmmod`, `nb7vpq904m`, `rdbg`, `soc_fan`, `st54jese`, `st54jnfc`.

## Snapshot Docker

A pasta `engenharia/curated` tem `aw9620x`, `fp_goodix` e `zte_tpd`. O módulo e o mapa de `aw9620x` coincidem byte a byte com o repositório. O snapshot `fp_goodix` diverge: o `.ko` e o mapa têm hashes diferentes, embora as seções executáveis e de dados examinadas (`.text`, `.init.text`, `.exit.text`, `.rodata`, `.data` e `__versions`) coincidam; a igualdade do módulo completo e a reprodutibilidade Docker não estão demonstradas. `zte_tpd` tem 809 arquivos de fonte, mas não tem mapa nem `.ko` nessa pasta. `haptic_86938` ainda não está curado no Docker.

O JSON ao lado contém hashes, contagens, estados e fontes da auditoria.
