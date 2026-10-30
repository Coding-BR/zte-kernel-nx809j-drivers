.section .text,"ax",@progbits
.align 2
.global tpd_sysfs_fwimage_store
.type tpd_sysfs_fwimage_store, %function
.word 0x30c400c0
tpd_sysfs_fwimage_store:
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
    .inst 0xb40001e8
    .inst 0xf9400509
    .inst 0xb40001a9
    .inst 0xf9400108
    .inst 0xb4000208
    .inst 0xb9444aa1
    .inst 0xeb010109
    .inst 0x54000228
    .inst 0xb9044abf
    .inst 0x928002a0
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
    .inst 0x92800160
    .inst 0x17fffff7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8a95
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8a95
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff2
    .inst 0x8b05002a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3ef7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3ef7
    .inst 0xeb08015f
    .inst 0xaa0303f4
    .inst 0x9a858133
    .inst 0xaa1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x913182a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9462ea8
    .inst 0xb9444aa9
    .inst 0xaa1403e1
    .inst 0xaa1303e2
    .inst 0xf9400508
    .inst 0x8b090100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0xb9444aa8
    .inst 0x913182a0
    .inst 0x0b130108
    .inst 0xb9044aa8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xaa1303e0
    .inst 0x17ffffdb
.size tpd_sysfs_fwimage_store, .-tpd_sysfs_fwimage_store

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tpd_sysfs_fwimage_store_rodata:
    .include "tpd_sysfs_fwimage_store_rodata.inc"
