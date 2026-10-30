# Microtarefas Obrigatorias: zte_ramdisk_reboot

Cada linha representa uma funcao stock com fonte revisado e evidencias de compilacao, KCFI e teste.

| ID | Funcao stock | Entrada | Categoria | Fonte mapeada | Estado |
|---|---|---|---|---|---|
| 001_zte_ramdisk_reboot_write | zte_ramdisk_reboot_write | 00100464 | user_abi | zte_ramdisk_reboot.c:zte_ramdisk_reboot_write | PASS |
| 002_zte_check_xbl_log_lines | zte_check_xbl_log_lines | 001004fc | core_logic | zte_ramdisk_reboot.c:zte_check_xbl_log_lines | PASS |
| 003_extract_ocp_info | extract_ocp_info | 001006b8 | core_logic | zte_ramdisk_reboot.c:extract_ocp_info | PASS |
| 004_extract_sn_info | extract_sn_info | 001007ac | core_logic | zte_ramdisk_reboot.c:extract_sn_info | PASS |
| 005_zte_ramdisk_reboot_probe | zte_ramdisk_reboot_probe | 00100894 | binding | zte_ramdisk_reboot.c:zte_ramdisk_reboot_probe | PASS |
| 006_zte_ramdisk_reboot_remove | zte_ramdisk_reboot_remove | 00100bd8 | binding | zte_ramdisk_reboot.c:zte_ramdisk_reboot_remove | PASS |
| 007_zte_get_xbl_log_memory_region | zte_get_xbl_log_memory_region | 00100bdc | core_logic | zte_ramdisk_reboot.c:zte_get_xbl_log_memory_region | PASS |
| 008_attr_show | attr_show | 00100cec | user_abi | zte_ramdisk_reboot.c:attr_show | PASS |
| 009_attr_store | attr_store | 00100d34 | user_abi | zte_ramdisk_reboot.c:attr_store | PASS |
| 010_ramdisk_nvmem_show | ramdisk_nvmem_show | 00100d7c | user_abi | zte_ramdisk_reboot.c:ramdisk_nvmem_show | PASS |
| 011_ramdisk_nvmem_store | ramdisk_nvmem_store | 00100db8 | user_abi | zte_ramdisk_reboot.c:ramdisk_nvmem_store | PASS |
| 012_init_module | init_module | 00100de4 | lifecycle | zte_ramdisk_reboot.c:init_module (module_platform_driver expansion) | PASS |
| 013_cleanup_module | cleanup_module | 00100e14 | lifecycle | zte_ramdisk_reboot.c:cleanup_module (module_platform_driver expansion) | PASS |
