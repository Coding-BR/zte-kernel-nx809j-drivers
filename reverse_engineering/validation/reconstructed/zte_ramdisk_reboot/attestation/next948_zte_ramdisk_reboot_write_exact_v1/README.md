# `zte_ramdisk_reboot_write` — atestação offline exact v1

Esta unidade registra `zte_ramdisk_reboot:zte_ramdisk_reboot_write@00100464`
contra `reference_modules/full_vendor_boot/zte_ramdisk_reboot.ko`.

O protocolo executável terminou em `CORE_GATES_PASS`. Os sete gates passaram:
identidade do input e do mapa, duas compilações Docker reproduzíveis,
assembly/relocations, KCFI, Joern scoped e Joern slice. O assembly candidato
é um island AArch64 controlado, derivado do P-Code/assembly stock, porque a
otimização C livre reordenava os branches iniciais; a ABI C, o símbolo
exportado e as chamadas comprovadas permanecem preservados.

O módulo candidato versionado tem SHA-256
`46743fab8ab0efd7394fc849f0bb991760c14c7145f70690e0f6029d616d040f` e
`224416` bytes. A função tem 148 bytes, 37 instruções, relocations equivalentes
e type ID KCFI `0xb0cfc9d1`, igual ao stock. O teste de host reproduzível
existente cobre diretamente esta função e passou em dois binários idênticos.

A exportação Ghidra candidata de 2026-09-01 não foi usada: sua identidade
corresponde a um módulo anterior. A comparação desta unidade usa a exportação
Ghidra stock, assembly/relocations frescos do módulo Docker e o island
controlado. Android/NX809J e hardware físico continuam não validados; a
atestação é estática e não autoriza uma alegação de equivalência funcional
100% em hardware.
