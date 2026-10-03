.section .text,"ax",@progbits
.align 2
.global ghost_check_area
.type ghost_check_area, %function
ghost_check_area:
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0x79403009
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xb940110c
    .inst 0x321f018a
    .inst 0x71000d5f
    .inst 0x54000201
    .inst 0x7940380a
    .inst 0xb9449d0d
    .inst 0x6b0a01bf
    .inst 0x540005ac
    .inst 0x7948890b
    .inst 0x4b0d016b
    .inst 0x6b0a017f
    .inst 0x5400052b
    .inst 0x6b0901bf
    .inst 0x540004ec
    .inst 0x7948850b
    .inst 0x4b0d016d
    .inst 0x6b0901bf
    .inst 0x5400014a
    .inst 0x14000022
    .inst 0xb9449d0a
    .inst 0x6b09015f
    .inst 0x540003ec
    .inst 0x7948850b
    .inst 0x4b0a016a
    .inst 0x6b09015f
    .inst 0x5400036b
    .inst 0x7940380a
    .inst 0x7100059f
    .inst 0x52800020
    .inst 0x540000ac
    .inst 0x3400032c
    .inst 0x7100059f
    .inst 0x540000c0
    .inst 0x14000025
    .inst 0x7100099f
    .inst 0x54000340
    .inst 0x71000d9f
    .inst 0x54000421
    .inst 0xb944a50c
    .inst 0x6b09019f
    .inst 0x5400008c
    .inst 0x4b0c016b
    .inst 0x6b09017f
    .inst 0x5400036a
    .inst 0xb944a109
    .inst 0x6b0a013f
    .inst 0x5400032c
    .inst 0x79488908
    .inst 0x4b090108
    .inst 0x6b0a011f
    .inst 0x5400028a
    .inst 0x14000014
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xcc2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xcc2
    .inst 0x14000013
    .inst 0x7948890c
    .inst 0xb944a50d
    .inst 0x4b0d018c
    .inst 0x6b0a019f
    .inst 0x5400016a
    .inst 0x14000004
    .inst 0xb944a50c
    .inst 0x6b0a019f
    .inst 0x540000ed
    .inst 0xb944a108
    .inst 0x6b09011f
    .inst 0x540000ac
    .inst 0x4b080168
    .inst 0x6b09011f
    .inst 0x5400004b
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xac53
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xac53
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03e0
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size ghost_check_area, .-ghost_check_area

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_ghost_check_area_rodata:
    .include "ghost_check_area_rodata.inc"
