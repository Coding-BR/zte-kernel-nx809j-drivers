.section .data,"aw",@progbits
.align 3
.global aw22xxx_exact_data_base
aw22xxx_exact_data_base:
.incbin "exact_stock_sections/stock_data.bin"
.global g_ver_var
.set g_ver_var, aw22xxx_exact_data_base+0x370
.global aw22xxx_blink_cfg
.set aw22xxx_blink_cfg, aw22xxx_exact_data_base+0x38

.section .rodata,"a",@progbits
.align 3
.global aw22xxx_exact_rodata_base
aw22xxx_exact_rodata_base:
.incbin "exact_stock_sections/stock_rodata.bin"

.section .rodata.str1.1,"a",@progbits
.align 1
.global aw22xxx_exact_rodata_str_base
aw22xxx_exact_rodata_str_base:
.incbin "exact_stock_sections/stock_rodata_str.bin"

.section .codetag.alloc_tags,"aw",@progbits
.align 3
.global aw22xxx_exact_codetag_base
aw22xxx_exact_codetag_base:
.incbin "exact_stock_sections/stock_codetag_alloc_tags.bin"
.global aw22xxx_fw_loaded._alloc_tag
.set aw22xxx_fw_loaded._alloc_tag, aw22xxx_exact_codetag_base+0x78
.global aw22xxx_i2c_writes._alloc_tag
.set aw22xxx_i2c_writes._alloc_tag, aw22xxx_exact_codetag_base+0xa0
.reloc aw22xxx_exact_codetag_base+0x8, R_AARCH64_ABS64, aw22xxx_exact_rodata_str_base+0x16e4
.reloc aw22xxx_exact_codetag_base+0x10, R_AARCH64_ABS64, aw22xxx_exact_rodata_str_base+0xf68
.reloc aw22xxx_exact_codetag_base+0x18, R_AARCH64_ABS64, aw22xxx_exact_rodata_str_base+0x17e4
.reloc aw22xxx_exact_codetag_base+0x20, R_AARCH64_ABS64, aw22xxx_exact_percpu_base
.reloc aw22xxx_exact_codetag_base+0x30, R_AARCH64_ABS64, aw22xxx_exact_rodata_str_base+0x16e4
.reloc aw22xxx_exact_codetag_base+0x38, R_AARCH64_ABS64, aw22xxx_exact_rodata_str_base+0x1646
.reloc aw22xxx_exact_codetag_base+0x40, R_AARCH64_ABS64, aw22xxx_exact_rodata_str_base+0x17e4
.reloc aw22xxx_exact_codetag_base+0x48, R_AARCH64_ABS64, aw22xxx_exact_percpu_base+0x10
.reloc aw22xxx_exact_codetag_base+0x58, R_AARCH64_ABS64, aw22xxx_exact_rodata_str_base+0x16e4
.reloc aw22xxx_exact_codetag_base+0x60, R_AARCH64_ABS64, aw22xxx_exact_rodata_str_base+0x1646
.reloc aw22xxx_exact_codetag_base+0x68, R_AARCH64_ABS64, aw22xxx_exact_rodata_str_base+0x17e4
.reloc aw22xxx_exact_codetag_base+0x70, R_AARCH64_ABS64, aw22xxx_exact_percpu_base+0x20
.reloc aw22xxx_exact_codetag_base+0x80, R_AARCH64_ABS64, aw22xxx_exact_rodata_str_base+0x16e4
.reloc aw22xxx_exact_codetag_base+0x88, R_AARCH64_ABS64, aw22xxx_exact_rodata_str_base+0x1377
.reloc aw22xxx_exact_codetag_base+0x90, R_AARCH64_ABS64, aw22xxx_exact_rodata_str_base+0x17e4
.reloc aw22xxx_exact_codetag_base+0x98, R_AARCH64_ABS64, aw22xxx_exact_percpu_base+0x30
.reloc aw22xxx_exact_codetag_base+0xa8, R_AARCH64_ABS64, aw22xxx_exact_rodata_str_base+0x16e4
.reloc aw22xxx_exact_codetag_base+0xb0, R_AARCH64_ABS64, aw22xxx_exact_rodata_str_base+0xe8b
.reloc aw22xxx_exact_codetag_base+0xb8, R_AARCH64_ABS64, aw22xxx_exact_rodata_str_base+0x17e4
.reloc aw22xxx_exact_codetag_base+0xc0, R_AARCH64_ABS64, aw22xxx_exact_percpu_base+0x40

.section .data..percpu,"aw",@progbits
.align 3
.global aw22xxx_exact_percpu_base
aw22xxx_exact_percpu_base:
.incbin "exact_stock_sections/stock_percpu.bin"

.section .bss,"aw",@nobits
.align 3
.global aw22xxx_exact_bss_base
aw22xxx_exact_bss_base:
.zero 0x61d8
.global duration
.set duration, aw22xxx_exact_bss_base+0x4
.global user_para_data
.set user_para_data, aw22xxx_exact_bss_base+0x5
.global read_idx
.set read_idx, aw22xxx_exact_bss_base+0x61b0
.global write_idx
.set write_idx, aw22xxx_exact_bss_base+0x61b4
.global kthread_status
.set kthread_status, aw22xxx_exact_bss_base+0x61b8
.global aw22xxx_cfg_name
.set aw22xxx_cfg_name, aw22xxx_exact_bss_base+0x61c0
.global cfg_update_kthread
.set cfg_update_kthread, aw22xxx_exact_bss_base+0x61c8
.global aw22xxx_fw_name
aw22xxx_fw_name:
.zero 0x40
.zero 0x54

.section .note.GNU-stack,"",@progbits
