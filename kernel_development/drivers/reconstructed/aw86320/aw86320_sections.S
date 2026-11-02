.section .rodata.str1.1,"a",@progbits
.align 1
.global aw86320_rodata_str_base
.type aw86320_rodata_str_base, %object
aw86320_rodata_str_base:
.incbin "aw86320.rodata.str1.1.bin"
.size aw86320_rodata_str_base, .-aw86320_rodata_str_base

.section .rodata,"a",@progbits
.align 3
.global aw86320_rodata_base
.type aw86320_rodata_base, %object
aw86320_rodata_base:
.incbin "aw86320.rodata.bin"
.size aw86320_rodata_base, .-aw86320_rodata_base

.global aw_dt_match
.set aw_dt_match, aw86320_rodata_base + 0x40
.global aw_pm_ops
.set aw_pm_ops, aw86320_rodata_base + 0x1d0
.global proc_ops_icid
.set proc_ops_icid, aw86320_rodata_base + 0x290
.global proc_ops_enable
.set proc_ops_enable, aw86320_rodata_base + 0x2f0
.global proc_ops_speed
.set proc_ops_speed, aw86320_rodata_base + 0x350
.global proc_ops_freq
.set proc_ops_freq, aw86320_rodata_base + 0x3b0
.global proc_ops_reg
.set proc_ops_reg, aw86320_rodata_base + 0x410
.global proc_ops_update
.set proc_ops_update, aw86320_rodata_base + 0x470
.global proc_ops_duration
.set proc_ops_duration, aw86320_rodata_base + 0x4d0

/* Function-pointer relocations copied from stock .rela.rodata. */
.reloc aw86320_rodata_base + 0x1e0, R_AARCH64_ABS64, aw_i2c_suspend
.reloc aw86320_rodata_base + 0x1e8, R_AARCH64_ABS64, aw_i2c_resume
.reloc aw86320_rodata_base + 0x1f0, R_AARCH64_ABS64, aw_i2c_suspend
.reloc aw86320_rodata_base + 0x1f8, R_AARCH64_ABS64, aw_i2c_resume
.reloc aw86320_rodata_base + 0x200, R_AARCH64_ABS64, aw_i2c_suspend
.reloc aw86320_rodata_base + 0x208, R_AARCH64_ABS64, aw_i2c_resume
.reloc aw86320_rodata_base + 0x2a0, R_AARCH64_ABS64, get_ic_id
.reloc aw86320_rodata_base + 0x300, R_AARCH64_ABS64, enable_show
.reloc aw86320_rodata_base + 0x310, R_AARCH64_ABS64, enable_store
.reloc aw86320_rodata_base + 0x360, R_AARCH64_ABS64, speed_show
.reloc aw86320_rodata_base + 0x370, R_AARCH64_ABS64, speed_store
.reloc aw86320_rodata_base + 0x3c0, R_AARCH64_ABS64, freq_show
.reloc aw86320_rodata_base + 0x3d0, R_AARCH64_ABS64, freq_store
.reloc aw86320_rodata_base + 0x420, R_AARCH64_ABS64, reg_show
.reloc aw86320_rodata_base + 0x430, R_AARCH64_ABS64, reg_store
.reloc aw86320_rodata_base + 0x490, R_AARCH64_ABS64, ram_update_store
.reloc aw86320_rodata_base + 0x4e0, R_AARCH64_ABS64, duration_show
.reloc aw86320_rodata_base + 0x4f0, R_AARCH64_ABS64, duration_store

.section .data,"aw",@progbits
.align 3
.global aw86320_data_base
.type aw86320_data_base, %object
aw86320_data_base:
.incbin "aw86320.data.bin"
.size aw86320_data_base, .-aw86320_data_base
.global aw_i2c_driver
.set aw_i2c_driver, aw86320_data_base
.global g_chip_id
.set g_chip_id, aw86320_data_base + 0x110

/* Function/table relocations copied from stock .rela.data. */
.reloc aw86320_data_base + 0x08, R_AARCH64_ABS64, aw_i2c_probe
.reloc aw86320_data_base + 0x10, R_AARCH64_ABS64, aw_remove
.reloc aw86320_data_base + 0x18, R_AARCH64_ABS64, aw_shutdown
.reloc aw86320_data_base + 0x30, R_AARCH64_ABS64, aw86320_rodata_str_base + 0xb9a
.reloc aw86320_data_base + 0x40, R_AARCH64_ABS64, __this_module
.reloc aw86320_data_base + 0x58, R_AARCH64_ABS64, aw86320_rodata_base + 0x40
.reloc aw86320_data_base + 0xa8, R_AARCH64_ABS64, aw86320_rodata_base + 0x1d0
.reloc aw86320_data_base + 0xe0, R_AARCH64_ABS64, __mod_i2c__aw_i2c_id_device_table_device_table

.section .bss,"aw",@nobits
.align 3
.global aw86320_bss_base
.type aw86320_bss_base, %object
aw86320_bss_base:
.zero 0x18
.size aw86320_bss_base, .-aw86320_bss_base
.global g_aw86320
.set g_aw86320, aw86320_bss_base
.global aw_i2c_probe.__key
.set aw_i2c_probe.__key, aw86320_bss_base + 0x8
.global micro_pump_proc_entry
.set micro_pump_proc_entry, aw86320_bss_base + 0x10

.section .data..percpu,"awT",@progbits
.align 3
.global aw86320_percpu_base
.type aw86320_percpu_base, %object
aw86320_percpu_base:
.incbin "aw86320.data._percpu.bin"
.size aw86320_percpu_base, .-aw86320_percpu_base

.section .codetag.alloc_tags,"aw",@progbits
.align 3
.global aw86320_codetag_base
.type aw86320_codetag_base, %object
aw86320_codetag_base:
.incbin "aw86320.codetag.alloc_tags.bin"
.size aw86320_codetag_base, .-aw86320_codetag_base
.reloc aw86320_codetag_base + 0x08, R_AARCH64_ABS64, aw86320_rodata_str_base + 0xb9a
.reloc aw86320_codetag_base + 0x10, R_AARCH64_ABS64, aw86320_rodata_str_base + 0xb18
.reloc aw86320_codetag_base + 0x18, R_AARCH64_ABS64, aw86320_rodata_str_base + 0xe7d
.reloc aw86320_codetag_base + 0x20, R_AARCH64_ABS64, aw86320_percpu_base
.reloc aw86320_codetag_base + 0x30, R_AARCH64_ABS64, aw86320_rodata_str_base + 0xb9a
.reloc aw86320_codetag_base + 0x38, R_AARCH64_ABS64, aw86320_rodata_str_base + 0x94b
.reloc aw86320_codetag_base + 0x40, R_AARCH64_ABS64, aw86320_rodata_str_base + 0xe7d
.reloc aw86320_codetag_base + 0x48, R_AARCH64_ABS64, aw86320_percpu_base + 0x10

.section .init.data,"aw",@progbits
.align 3
.global aw86320_init_data_base
aw86320_init_data_base:
.incbin "aw86320.init_data.bin"
.reloc aw86320_init_data_base, R_AARCH64_ABS64, init_module

.section .exit.data,"aw",@progbits
.align 3
.global aw86320_exit_data_base
aw86320_exit_data_base:
.incbin "aw86320.exit_data.bin"
.reloc aw86320_exit_data_base, R_AARCH64_ABS64, cleanup_module

.section .rodata.aw86320_abi_surface,"a",@progbits
.align 3
.global aw86320_abi_surface
.type aw86320_abi_surface, %object
aw86320_abi_surface:
/* Stock .init.eh_frame retains this kernel-provided profiling reference. */
.xword mem_alloc_profiling_key
.size aw86320_abi_surface, .-aw86320_abi_surface

.section .note.GNU-stack,"",@progbits
