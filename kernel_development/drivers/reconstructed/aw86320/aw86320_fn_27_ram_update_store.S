.section .text,"ax",@progbits
.align 2
.global ram_update_store
.type ram_update_store, %function
    .word 0xc3d43b4d
ram_update_store:
    .inst 0xd503233f
    .inst 0xd10143ff
    .inst 0xa9027bfd
    .inst 0xf9001bf5
    .inst 0xa9044ff4
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0xaa0103f5
    .inst 0x910023e0
    .inst 0xf9438908
    .inst 0xf100245f
    .inst 0xf81f83a8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_bss_base
    .inst 0xf9400114
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base
    .inst 0x52800128
    .inst 0xb90007ff
    .inst 0x9a883053
    .inst 0x2a1f03e2
    .inst 0x790023ff
    .inst 0xaa1303e1
    .inst 0xf90007ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __check_object_size
    .inst 0x910023e0
    .inst 0xaa1503e1
    .inst 0xaa1303e2
    .inst 0x97fffdea
    .reloc .-4, R_AARCH64_CALL26, _inline_copy_from_user
    .inst 0x350000c0
    .inst 0x910023e0
    .inst 0x910013e2
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kstrtouint
    .inst 0x340001c0
    .inst 0x928002b3
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000421
    .inst 0xaa1303e0
    .inst 0xa9444ff4
    .inst 0xf9401bf5
    .inst 0xa9427bfd
    .inst 0x910143ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xb94007e5
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x84d
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x84d
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x67c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x67c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x52805a82
    .inst 0xaa0303e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb94007e8
    .inst 0x34fffd28
    .inst 0xf940f283
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, __this_module
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, __this_module
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x3a7
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x3a7
    .inst 0x90000006
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ram_load
    .inst 0x910000c6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, ram_load
    .inst 0x52800021
    .inst 0x52819804
    .inst 0xaa1403e5
    .inst 0x3900029f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, request_firmware_nowait
    .inst 0x17ffffdc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size ram_update_store, .-ram_update_store
