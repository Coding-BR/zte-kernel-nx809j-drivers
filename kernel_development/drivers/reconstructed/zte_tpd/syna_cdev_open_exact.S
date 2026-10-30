.section .text,"ax",@progbits
.align 2
.global syna_cdev_open
.type syna_cdev_open, %function
.word 0x9829071d
syna_cdev_open:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xa90157f6
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data
    .inst 0xf8450408
    .inst 0xf9405514
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xb9438682
    .inst 0x35000062
    .inst 0x52800028
    .inst 0x14000008
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, unk_366C2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, unk_366C2
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_open_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_open_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9438688
    .inst 0x11000508
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x80
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0x80
    .inst 0xb9038688
    .inst 0xf900181f
    .inst 0xb900381f
    .inst 0xf9400289
    .inst 0xb9403d28
    .inst 0xb9004008
    .inst 0xf9400288
    .inst 0xb9403908
    .inst 0xb9003c08
    .inst 0xf9400288
    .inst 0x390de91f
    .inst 0x3916129f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9427e93
    .inst 0x9113e295
    .inst 0xeb15027f
    .inst 0x54000281
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x50
    .inst 0x91000273
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0x50
    .inst 0x9100c260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xf9400280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_clear_data_duplicator
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, unk_34E37
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, unk_34E37
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_open_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_open_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03e0
    .inst 0xa9424ff4
    .inst 0xa94157f6
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xd2802016
    .inst 0xf2fbd5b6
    .inst 0x14000004
    .inst 0xf94002b3
    .inst 0xeb15027f
    .inst 0x54fffd00
    .inst 0xf9400668
    .inst 0xf9400109
    .inst 0xeb13013f
    .inst 0x54000241
    .inst 0xf9400269
    .inst 0xf940052a
    .inst 0xeb13015f
    .inst 0x540001c1
    .inst 0xf9000528
    .inst 0xf9000109
    .inst 0xf9400a60
    .inst 0x91008ac8
    .inst 0xa9002276
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xb944f288
    .inst 0x34fffd88
    .inst 0x51000508
    .inst 0xb904f288
    .inst 0x17ffffe9
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __list_del_entry_valid_or_report
    .inst 0x17fffff3
.size syna_cdev_open, .-syna_cdev_open

.section .rodata.str1.1,"aMS",@progbits,1
.align 0
.L_syna_cdev_open_name:
    .asciz "syna_cdev_open"
