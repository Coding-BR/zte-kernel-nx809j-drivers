# Auditoria de cobertura das reconstruções — 2026-10-27

## Resultado

**Ainda não: o inventário completo não foi reconstruído.** A pasta de referência contém **335 módulos .ko**. Encontrei **20 candidatos** com mapa, fonte e módulo reconstruído no diretório curado; **315 módulos** não aparecem nos mapas atuais. Esses módulos precisam ser classificados individualmente; o número não afirma que todos sejam drivers dentro do escopo do projeto.

Os **20 candidatos** contados como verificados passaram pelos gates offline conforme os relatórios consultados. Isso não prova equivalência comportamental nem validação física. Os relatórios consultados registram **0 módulos validados em hardware**.

## Candidatos com mapa e artefato

`aw86320`, `aw9620x`, `fp_goodix`, `gpio_keys_nubia`, `nubia_hw_version`, `zlog_common`, `zlog_exception`, `zlog_test`, `zte_charger_policy`, `zte_fingerprint`, `zte_imem_info`, `zte_ir`, `zte_led`, `zte_misc`, `zte_power_supply`, `zte_ramdisk_reboot`, `zte_reboot_ext`, `zte_sensor_sensitivity`, `zte_stats_info`, `zte_tpd`

A base são os 18 módulos do relatório consolidado de 2026-09-04, mais `aw86320` e `aw9620x`. Para AW9620x, os 8 gates automatizados passaram, mas `promotion_authorized` permanece `false`; revisão independente e hardware seguem pendentes.

## Fila difícil ainda sem mapa

`awp1921`, `dmesg_dumper`, `ftmmod`, `haptic_86938`, `nb7vpq904m`, `rdbg`, `soc_fan`, `st54jese`, `st54jnfc`

Os nove nomes existem no stock `full_vendor_boot` e não possuem `reconstruction_map.json` neste diretório.

O JSON ao lado lista candidatos, hashes e fontes da auditoria.
