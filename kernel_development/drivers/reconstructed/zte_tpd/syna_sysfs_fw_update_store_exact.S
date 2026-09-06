.section .text,"ax",@progbits
.align 2
.global syna_sysfs_fw_update_store
.type syna_sysfs_fw_update_store, %function
.word 0x9ce291cd
syna_sysfs_fw_update_store:
    .inst 0xd503233f
    .inst 0xd100c3ff
    .inst 0xa9017bfd
    .inst 0xa9024ff4
    .inst 0x910043fd
    .inst 0xd5384109
    .inst 0xaa0303f3
    .inst 0xf9438929
    .inst 0xf90007e9
    .inst 0xf9400c09
    .inst 0xb90007ff
    .inst 0xf9400d29
    .inst 0xf9404d34
    .inst 0x39560a89
    .inst 0x360004c9
    .inst 0xaa0203e8
    .inst 0x910013e2
    .inst 0x52800141
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kstrtouint
    .inst 0x34000060
    .inst 0x928002b3
    .inst 0x14000013
    .inst 0xaa1403e0
    .inst 0x52800021
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_dev_do_reflash
    .inst 0x37f80400
    .inst 0xf9400288
    .inst 0x39402508
    .inst 0x7100051f
    .inst 0x54000141
    .inst 0xf9435e88
    .inst 0xaa1403e0
    .inst 0xb85fc110
    .inst 0x7288e391
    .inst 0x72b5c411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x93407e73
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540002a1
    .inst 0xaa1303e0
    .inst 0xa9424ff4
    .inst 0xa9417bfd
    .inst 0x9100c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_fw_update_store_warn
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_fw_update_store_warn
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_fw_update_store_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_fw_update_store_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_fw_update_store_error
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_fw_update_store_error
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_sysfs_fw_update_store_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_sysfs_fw_update_store_name
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffe7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_sysfs_fw_update_store, .-syna_sysfs_fw_update_store

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_syna_sysfs_fw_update_store_warn:
    .asciz "\0014[warn ] %s: Device is NOT connected\n"
.L_syna_sysfs_fw_update_store_name:
    .asciz "syna_sysfs_fw_update_store"
.L_syna_sysfs_fw_update_store_error:
    .asciz "\0013[error] %s: Fail to do reflash\n"
.section .note.GNU-stack,"",@progbits
