# `zte_get_xbl_log_memory_region` — atestação offline exact v1

Esta unidade registra
`zte_ramdisk_reboot:zte_get_xbl_log_memory_region@00100bdc` contra
`reference_modules/full_vendor_boot/zte_ramdisk_reboot.ko`.

O protocolo executável terminou em `CORE_GATES_PASS`: identidade do input e
do mapa, duas compilações Docker reproduzíveis, assembly/relocations, KCFI,
Joern scoped e Joern slice passaram. A função tem 268 bytes e 67 instruções;
o island AArch64 preserva o prólogo, stack canary, inicialização de
`of_phandle_args`, chamadas, branches, offsets de `struct zte_ramdisk_reboot_data`
e strings comprovados pelo stock.

O módulo candidato versionado tem SHA-256
`abfb3ffdb312dbb4599b9838720dab7733ba7754c734e1417e16df09f84bc7e3` e
`222944` bytes. O teste de host reproduzível existente cobre diretamente o
driver e passou em dois binários idênticos.

Esta é uma atestação estática offline. Android/NX809J e hardware físico não
foram validados; não há alegação de equivalência funcional 100% em hardware.
