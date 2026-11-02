.section .text,"ax",@progbits
.align 2
.global tpd_sysfs_fwimage_show
.type tpd_sysfs_fwimage_show, %function
.word 0x30c400c0
tpd_sysfs_fwimage_show:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9400115
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xf9462ea8
    .inst 0xb4000468
    .inst 0xf9400509
    .inst 0xb4000429
    .inst 0xf9400108
    .inst 0xb4000488
    .inst 0x913182a0
    .inst 0xaa0503f4
    .inst 0xaa0303f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9462eab
    .inst 0xb9444aa9
    .inst 0xf940016a
    .inst 0xeb090148
    .inst 0x54000409
    .inst 0xf9462eab
    .inst 0x8b140129
    .inst 0xaa1303e0
    .inst 0xeb0a013f
    .inst 0xb9444aaa
    .inst 0xf9400569
    .inst 0x9a948114
    .inst 0xaa1403e2
    .inst 0x8b0a0121
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0xb9444aa8
    .inst 0x913182a0
    .inst 0x0b140108
    .inst 0xb9044aa8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xaa1403e0
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xab8b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xab8b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x92800174
    .inst 0x17fffff6
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8a95
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8a95
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x928002b4
    .inst 0x17fffff1
    .inst 0xb9044abf
    .inst 0xf9400560
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vfree
    .inst 0xf9462ea8
    .inst 0xf900051f
    .inst 0xf9462ea0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3edd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3edd
    .inst 0xf9062ebf
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x913182a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xaa1f03f4
    .inst 0x17ffffe2
.size tpd_sysfs_fwimage_show, .-tpd_sysfs_fwimage_show

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tpd_sysfs_fwimage_show_rodata:
    .include "tpd_sysfs_fwimage_show_rodata.inc"
