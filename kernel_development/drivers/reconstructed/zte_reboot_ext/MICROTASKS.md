# Microtarefas Obrigatórias: zte_reboot_ext

Cada linha representa uma única função stock. Nenhuma função pode ser promovida sem mapeamento, compilação, KCFI e teste com hash verificável.

| ID | Função stock | Entrada | Categoria | Fonte mapeada | Estado |
|---|---|---|---|---|---|
| 001_fill_nvmem_buf | fill_nvmem_buf | 00100554 | core_logic | zte_reboot_ext.c:fill_nvmem_buf | PASS |
| 002_count_format_args | count_format_args | 00100654 | core_logic | zte_reboot_ext.c:count_format_args | PASS |
| 003_entry_panic | entry_panic | 0010073c | core_logic | zte_reboot_ext.c:entry_panic | PASS |
| 004_zte_reboot_ext_probe | zte_reboot_ext_probe | 00100acc | binding | zte_reboot_ext.c:zte_reboot_ext_probe | PASS |
| 005_zte_reboot_ext_remove | zte_reboot_ext_remove | 00100ea8 | binding | zte_reboot_ext.c:zte_reboot_ext_remove | PASS |
| 006_save_panic_buf_data_to_nvmem | save_panic_buf_data_to_nvmem | 00100eec | core_logic | zte_reboot_ext.c:save_panic_buf_data_to_nvmem | PASS |
| 007_register_panic_hook | register_panic_hook | 0010105c | core_logic | zte_reboot_ext.c:register_panic_hook | PASS |
| 008_zte_reboot_ext_panic | zte_reboot_ext_panic | 001010bc | core_logic | zte_reboot_ext.c:zte_reboot_ext_panic | PASS |
| 009_attr_show | attr_show | 001010fc | user_abi | zte_reboot_ext.c:attr_show | PASS |
| 010_attr_store | attr_store | 00101144 | user_abi | zte_reboot_ext.c:attr_store | PASS |
| 011_boot_nvmem_show | boot_nvmem_show | 0010118c | user_abi | zte_reboot_ext.c:boot_nvmem_show | PASS |
| 012_boot_nvmem_store | boot_nvmem_store | 0010131c | user_abi | zte_reboot_ext.c:boot_nvmem_store | PASS |
| 013_init_module | init_module | 00101348 | lifecycle | zte_reboot_ext.c:init_module | PASS |
| 014_cleanup_module | cleanup_module | 00101378 | lifecycle | zte_reboot_ext.c:cleanup_module | PASS |

Para cada microtarefa, implemente ou valide somente a função indicada. Use o pseudocódigo e P-Code stock, preserve a ABI/KCFI e anexe evidência hashada de compile, KCFI e teste. Não marque PASS por inspeção visual.
