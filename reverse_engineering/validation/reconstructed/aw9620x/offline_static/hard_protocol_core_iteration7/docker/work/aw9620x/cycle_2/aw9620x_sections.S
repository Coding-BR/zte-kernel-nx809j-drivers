/* Offline exact assembly/data reconstruction from the identified stock ELF. */

.section __jump_table,"aw",@progbits
.p2align 3
.global aw9620x_jump_table_base
aw9620x_jump_table_base:
.incbin "aw9620x.jump_table.bin"
.reloc aw9620x_jump_table_base+0x0, R_AARCH64_PREL32, aw9620x_text_base+0x2070
.reloc aw9620x_jump_table_base+0x4, R_AARCH64_PREL32, aw9620x_text_base+0x20bc
.reloc aw9620x_jump_table_base+0x8, R_AARCH64_PREL64, mem_alloc_profiling_key
.reloc aw9620x_jump_table_base+0x10, R_AARCH64_PREL32, aw9620x_text_base+0x28b0
.reloc aw9620x_jump_table_base+0x14, R_AARCH64_PREL32, aw9620x_text_base+0x28ec
.reloc aw9620x_jump_table_base+0x18, R_AARCH64_PREL64, mem_alloc_profiling_key
.reloc aw9620x_jump_table_base+0x20, R_AARCH64_PREL32, aw9620x_text_base+0x3df0
.reloc aw9620x_jump_table_base+0x24, R_AARCH64_PREL32, aw9620x_text_base+0x3e4c
.reloc aw9620x_jump_table_base+0x28, R_AARCH64_PREL64, mem_alloc_profiling_key
.reloc aw9620x_jump_table_base+0x30, R_AARCH64_PREL32, aw9620x_text_base+0x4eb0
.reloc aw9620x_jump_table_base+0x34, R_AARCH64_PREL32, aw9620x_text_base+0x5388
.reloc aw9620x_jump_table_base+0x38, R_AARCH64_PREL64, mem_alloc_profiling_key
.reloc aw9620x_jump_table_base+0x40, R_AARCH64_PREL32, aw9620x_text_base+0x5e2c
.reloc aw9620x_jump_table_base+0x44, R_AARCH64_PREL32, aw9620x_text_base+0x5e88
.reloc aw9620x_jump_table_base+0x48, R_AARCH64_PREL64, mem_alloc_profiling_key
.reloc aw9620x_jump_table_base+0x50, R_AARCH64_PREL32, aw9620x_text_base+0x6970
.reloc aw9620x_jump_table_base+0x54, R_AARCH64_PREL32, aw9620x_text_base+0x69cc
.reloc aw9620x_jump_table_base+0x58, R_AARCH64_PREL64, mem_alloc_profiling_key

.section .data,"aw",@progbits
.p2align 3
.global aw9620x_data_base
aw9620x_data_base:
.incbin "aw9620x.data.bin"
.reloc aw9620x_data_base+0x8, R_AARCH64_ABS64, aw9620x_text_base+0x6f74
.reloc aw9620x_data_base+0x10, R_AARCH64_ABS64, aw9620x_text_base+0x7e40
.reloc aw9620x_data_base+0x18, R_AARCH64_ABS64, aw9620x_text_base+0x7f74
.reloc aw9620x_data_base+0x30, R_AARCH64_ABS64, aw9620x_rodata_str_base+0xad
.reloc aw9620x_data_base+0x40, R_AARCH64_ABS64, __this_module
.reloc aw9620x_data_base+0x58, R_AARCH64_ABS64, aw9620x_rodata_base+0x3c0
.reloc aw9620x_data_base+0xe0, R_AARCH64_ABS64, __mod_i2c__aw9620x_i2c_id_device_table
.reloc aw9620x_data_base+0x128, R_AARCH64_ABS64, aw9620x_data_base+0x138
.reloc aw9620x_data_base+0x138, R_AARCH64_ABS64, aw9620x_data_base+0x1d8
.reloc aw9620x_data_base+0x140, R_AARCH64_ABS64, aw9620x_data_base+0x1f8
.reloc aw9620x_data_base+0x148, R_AARCH64_ABS64, aw9620x_data_base+0x218
.reloc aw9620x_data_base+0x150, R_AARCH64_ABS64, aw9620x_data_base+0x238
.reloc aw9620x_data_base+0x158, R_AARCH64_ABS64, aw9620x_data_base+0x258
.reloc aw9620x_data_base+0x160, R_AARCH64_ABS64, aw9620x_data_base+0x278
.reloc aw9620x_data_base+0x168, R_AARCH64_ABS64, aw9620x_data_base+0x298
.reloc aw9620x_data_base+0x170, R_AARCH64_ABS64, aw9620x_data_base+0x2b8
.reloc aw9620x_data_base+0x178, R_AARCH64_ABS64, aw9620x_data_base+0x2d8
.reloc aw9620x_data_base+0x180, R_AARCH64_ABS64, aw9620x_data_base+0x2f8
.reloc aw9620x_data_base+0x188, R_AARCH64_ABS64, aw9620x_data_base+0x318
.reloc aw9620x_data_base+0x190, R_AARCH64_ABS64, aw9620x_data_base+0x338
.reloc aw9620x_data_base+0x198, R_AARCH64_ABS64, aw9620x_data_base+0x358
.reloc aw9620x_data_base+0x1a0, R_AARCH64_ABS64, aw9620x_data_base+0x378
.reloc aw9620x_data_base+0x1a8, R_AARCH64_ABS64, aw9620x_data_base+0x398
.reloc aw9620x_data_base+0x1b0, R_AARCH64_ABS64, aw9620x_data_base+0x3b8
.reloc aw9620x_data_base+0x1b8, R_AARCH64_ABS64, aw9620x_data_base+0x3d8
.reloc aw9620x_data_base+0x1c0, R_AARCH64_ABS64, aw9620x_data_base+0x3f8
.reloc aw9620x_data_base+0x1c8, R_AARCH64_ABS64, aw9620x_data_base+0x418
.reloc aw9620x_data_base+0x1d8, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x2a96
.reloc aw9620x_data_base+0x1e8, R_AARCH64_ABS64, aw9620x_text_base+0x87b8
.reloc aw9620x_data_base+0x1f0, R_AARCH64_ABS64, aw9620x_text_base+0x88cc
.reloc aw9620x_data_base+0x1f8, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x22c0
.reloc aw9620x_data_base+0x210, R_AARCH64_ABS64, aw9620x_text_base+0x8e94
.reloc aw9620x_data_base+0x218, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x2aac
.reloc aw9620x_data_base+0x228, R_AARCH64_ABS64, aw9620x_text_base+0x8f20
.reloc aw9620x_data_base+0x230, R_AARCH64_ABS64, aw9620x_text_base+0x8fac
.reloc aw9620x_data_base+0x238, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x2d28
.reloc aw9620x_data_base+0x248, R_AARCH64_ABS64, aw9620x_text_base+0x92e8
.reloc aw9620x_data_base+0x250, R_AARCH64_ABS64, aw9620x_text_base+0x939c
.reloc aw9620x_data_base+0x258, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x265c
.reloc aw9620x_data_base+0x270, R_AARCH64_ABS64, aw9620x_text_base+0x9484
.reloc aw9620x_data_base+0x278, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x32ea
.reloc aw9620x_data_base+0x290, R_AARCH64_ABS64, aw9620x_text_base+0x9564
.reloc aw9620x_data_base+0x298, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x2427
.reloc aw9620x_data_base+0x2b0, R_AARCH64_ABS64, aw9620x_text_base+0x9644
.reloc aw9620x_data_base+0x2b8, R_AARCH64_ABS64, aw9620x_rodata_str_base+0xabc
.reloc aw9620x_data_base+0x2c8, R_AARCH64_ABS64, aw9620x_text_base+0x9728
.reloc aw9620x_data_base+0x2d8, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x104b
.reloc aw9620x_data_base+0x2e8, R_AARCH64_ABS64, aw9620x_text_base+0x9808
.reloc aw9620x_data_base+0x2f8, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x3959
.reloc aw9620x_data_base+0x308, R_AARCH64_ABS64, aw9620x_text_base+0x98e8
.reloc aw9620x_data_base+0x318, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x1432
.reloc aw9620x_data_base+0x328, R_AARCH64_ABS64, aw9620x_text_base+0x99c8
.reloc aw9620x_data_base+0x338, R_AARCH64_ABS64, aw9620x_rodata_str_base+0xac0
.reloc aw9620x_data_base+0x348, R_AARCH64_ABS64, aw9620x_text_base+0x9aa8
.reloc aw9620x_data_base+0x358, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x27ff
.reloc aw9620x_data_base+0x368, R_AARCH64_ABS64, aw9620x_text_base+0x9b88
.reloc aw9620x_data_base+0x378, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x1771
.reloc aw9620x_data_base+0x388, R_AARCH64_ABS64, aw9620x_text_base+0x9c68
.reloc aw9620x_data_base+0x398, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x802
.reloc aw9620x_data_base+0x3a8, R_AARCH64_ABS64, aw9620x_text_base+0x9d48
.reloc aw9620x_data_base+0x3b0, R_AARCH64_ABS64, aw9620x_text_base+0x9e5c
.reloc aw9620x_data_base+0x3b8, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x2121
.reloc aw9620x_data_base+0x3d0, R_AARCH64_ABS64, aw9620x_text_base+0x9f28
.reloc aw9620x_data_base+0x3d8, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x1779
.reloc aw9620x_data_base+0x3e8, R_AARCH64_ABS64, aw9620x_text_base+0xa000
.reloc aw9620x_data_base+0x3f8, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x992
.reloc aw9620x_data_base+0x408, R_AARCH64_ABS64, aw9620x_text_base+0xa14c
.reloc aw9620x_data_base+0x418, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x1976
.reloc aw9620x_data_base+0x428, R_AARCH64_ABS64, aw9620x_text_base+0xa324
.reloc aw9620x_data_base+0x430, R_AARCH64_ABS64, aw9620x_text_base+0xa360

.section .codetag.alloc_tags,"aw",@progbits
.p2align 3
.global aw9620x_codetag_base
aw9620x_codetag_base:
.incbin "aw9620x.codetag.bin"
.reloc aw9620x_codetag_base+0x8, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x2522
.reloc aw9620x_codetag_base+0x10, R_AARCH64_ABS64, aw9620x_rodata_str_base+0xe8
.reloc aw9620x_codetag_base+0x18, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x2c9e
.reloc aw9620x_codetag_base+0x20, R_AARCH64_ABS64, aw9620x_percpu_base
.reloc aw9620x_codetag_base+0x30, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x2522
.reloc aw9620x_codetag_base+0x38, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x34f0
.reloc aw9620x_codetag_base+0x40, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x2c9e
.reloc aw9620x_codetag_base+0x48, R_AARCH64_ABS64, aw9620x_percpu_base+0x10
.reloc aw9620x_codetag_base+0x58, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x2522
.reloc aw9620x_codetag_base+0x60, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x1143
.reloc aw9620x_codetag_base+0x68, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x2c9e
.reloc aw9620x_codetag_base+0x70, R_AARCH64_ABS64, aw9620x_percpu_base+0x20
.reloc aw9620x_codetag_base+0x80, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x2522
.reloc aw9620x_codetag_base+0x88, R_AARCH64_ABS64, aw9620x_rodata_str_base+0xdc0
.reloc aw9620x_codetag_base+0x90, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x2c9e
.reloc aw9620x_codetag_base+0x98, R_AARCH64_ABS64, aw9620x_percpu_base+0x30
.reloc aw9620x_codetag_base+0xa8, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x2522
.reloc aw9620x_codetag_base+0xb0, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x15c1
.reloc aw9620x_codetag_base+0xb8, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x2c9e
.reloc aw9620x_codetag_base+0xc0, R_AARCH64_ABS64, aw9620x_percpu_base+0x40
.reloc aw9620x_codetag_base+0xd0, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x2522
.reloc aw9620x_codetag_base+0xd8, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x1da9
.reloc aw9620x_codetag_base+0xe0, R_AARCH64_ABS64, aw9620x_rodata_str_base+0x2c9e
.reloc aw9620x_codetag_base+0xe8, R_AARCH64_ABS64, aw9620x_percpu_base+0x50

.section .text.ftrace_trampoline,"a",@progbits
.global aw9620x_text_ftrace_trampoline_base
aw9620x_text_ftrace_trampoline_base:
.incbin "aw9620x.text_ftrace_trampoline.bin"

/* Stock .init.eh_frame retained as evidence only: its unwind records
 * include a PREL32 edge to .exit.text and fail kernel modpost section checks. */

.section .rodata.str1.1,"aMS",@progbits,1
.global aw9620x_rodata_str_base
aw9620x_rodata_str_base:
.incbin "aw9620x.rodata_str.bin"

.section .rodata.cst16,"aM",@progbits,16
.p2align 2
.global aw9620x_rodata_cst16_base
aw9620x_rodata_cst16_base:
.incbin "aw9620x.rodata_cst16.bin"

.section .data..percpu,"aw",@progbits
.p2align 3
.global aw9620x_percpu_base
aw9620x_percpu_base:
.incbin "aw9620x.percpu.bin"

.section .bss,"aw",@nobits
.p2align 3
.global aw9620x_bss_base
aw9620x_bss_base:
.zero 0x70

.section .init.data,"aw",@progbits
.p2align 3
.global aw9620x_init_data_base
aw9620x_init_data_base:
.incbin "aw9620x.init_data.bin"
.reloc aw9620x_init_data_base+0x0, R_AARCH64_ABS64, init_module

.section .exit.data,"aw",@progbits
.p2align 3
.global aw9620x_exit_data_base
aw9620x_exit_data_base:
.incbin "aw9620x.exit_data.bin"
.reloc aw9620x_exit_data_base+0x0, R_AARCH64_ABS64, cleanup_module

.section .rodata,"a",@progbits
.p2align 3
.global aw9620x_rodata_base
aw9620x_rodata_base:
.incbin "aw9620x.rodata.bin"

.section .rodata.__llvm_fs_discriminator__,"a",@progbits
.global aw9620x_rodata_llvm_discriminator_base
aw9620x_rodata_llvm_discriminator_base:
.incbin "aw9620x.rodata_llvm_discriminator.bin"

/* Stock data symbols, kept as aliases over preserved bytes. */
.global __llvm_fs_discriminator__
.type __llvm_fs_discriminator__, %object
.set __llvm_fs_discriminator__, aw9620x_rodata_llvm_discriminator_base
.size __llvm_fs_discriminator__, 0x1
.global __mod_i2c__aw9620x_i2c_id_device_table
.type __mod_i2c__aw9620x_i2c_id_device_table, %object
.set __mod_i2c__aw9620x_i2c_id_device_table, aw9620x_rodata_base+0x380
.size __mod_i2c__aw9620x_i2c_id_device_table, 0x40
.global __start_alloc_tags
.set __start_alloc_tags, aw9620x_codetag_base
.global __stop_alloc_tags
.set __stop_alloc_tags, aw9620x_codetag_base+0xf0

.section .note.GNU-stack,"",@progbits
