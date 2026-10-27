.section .text,"ax",@progbits
.align 2
.global aw_remove
.type aw_remove, %function
    .word 0xa8cfcee2
aw_remove:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0xf9405c13
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x58e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x58e
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xc60
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xc60
    .inst 0x52809042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_bss_base+0x10
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xf86
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xf86
    .inst 0xf9400281
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base+0x10
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, remove_proc_entry
    .inst 0xf9400281
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base+0x10
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x588
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x588
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, remove_proc_entry
    .inst 0xf9400281
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base+0x10
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x923
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x923
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, remove_proc_entry
    .inst 0xf9400281
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base+0x10
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x28a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x28a
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, remove_proc_entry
    .inst 0xf9400281
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base+0x10
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x9af
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x9af
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, remove_proc_entry
    .inst 0xf9400281
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base+0x10
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x2e5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x2e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, remove_proc_entry
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x279
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x279
    .inst 0xaa1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, remove_proc_entry
    .inst 0x91098260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, cancel_delayed_work_sync
    .inst 0x910b2260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, cancel_delayed_work_sync
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw_remove, .-aw_remove
