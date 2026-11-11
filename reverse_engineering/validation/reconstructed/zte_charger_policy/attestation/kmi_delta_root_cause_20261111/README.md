# Raiz do delta de imports do zte_charger_policy

**Data:** 2026-11-11  
**Resultado:** todos os imports diferentes do stock correspondem às mudanças declaradas de ciclo de vida/teardown; não encontrei um import acidental sem explicação nesta revisão.

## Delta exato

- Ausentes em relação ao stock: devm_kfree e devm_power_supply_register.
- Novos em relação ao stock: alarm_cancel, cancel_delayed_work_sync, destroy_workqueue, power_supply_register, power_supply_unregister, zte_misc_unregister_callback e alt_cb_patch_nops.

Os seis primeiros imports novos são usados pela gestão explícita de recursos e pela drenagem de callbacks/trabalhos. No módulo fresh, .altinstructions e .rela.altinstructions aparecem; llvm-readelf mostra alt_cb_patch_nops como símbolo indefinido referenciado por relocations dessa seção. Os offsets próximos correspondem aos corpos de timeout_handler_work, probe_work, charger_policy_stop_runtime, timeout_alarm_cb e remove; a fonte atual usa atomic_cmpxchg/atomic_xchg somente no gate runtime_stopping e atomic_set na inicialização. O módulo ativo antigo não tem essas seções nem esse import.

O build Docker reproduzível confirma que o candidato compila, mas o auditor compara o conjunto de imports com o stock. Por isso undefined_symbols_match continua falso: o delta é deliberado e impede declarar paridade binária/KMI com stock. O relatório hash-bound mantém separadas essa incompatibilidade e os gates que passam, como identidade NX809J, namespaces, aliases e vermagic.

Este lote não altera código nem promove o candidato. Remover os imports exigiria retirar ou redesenhar o hardening e afetaria a semântica de vida útil; a decisão permanece explícita no mapa e no STATUS.md.