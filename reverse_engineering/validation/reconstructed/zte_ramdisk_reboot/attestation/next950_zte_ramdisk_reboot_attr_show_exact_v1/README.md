# `attr_show` — atestação offline exact v1

Esta unidade registra `zte_ramdisk_reboot:attr_show@00100cec` contra
`reference_modules/full_vendor_boot/zte_ramdisk_reboot.ko`.

O protocolo executável terminou em `CORE_GATES_PASS`: identidade do input e
do mapa, duas compilações Docker reproduzíveis, assembly/relocations, KCFI,
Joern scoped e Joern slice passaram. A função tem 68 bytes e 17 instruções;
o type ID KCFI `0x618e6a55` coincide com o stock.

O módulo candidato versionado tem SHA-256
`46743fab8ab0efd7394fc849f0bb991760c14c7145f70690e0f6029d616d040f` e
`224416` bytes. O teste de host reproduzível existente cobre diretamente o
trampolim sysfs e passou em dois binários idênticos.

Esta é uma atestação estática offline. Android/NX809J e hardware físico não
foram validados; não há alegação de equivalência funcional 100% em hardware.
