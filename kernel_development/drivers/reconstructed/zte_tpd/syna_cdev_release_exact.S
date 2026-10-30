.section .text,"ax",@progbits
.align 2
.global syna_cdev_release
.type syna_cdev_release, %function
.word 0x9829071d
syna_cdev_release:
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xf9000bf7
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data
    .inst 0xf9400108
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, g_cdev_data
    .inst 0xf9405515
    .inst 0xb94386a2
    .inst 0x7100005f
    .inst 0x540000ec
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_release_rodata_3968
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_release_rodata_3968
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_release_rodata_e6e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_release_rodata_e6e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000028
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x50
    .inst 0x91000273
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0x50
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xb94386a8
    .inst 0x9100c260
    .inst 0x51000508
    .inst 0xb90386a8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9427eb4
    .inst 0x9113e2b6
    .inst 0xeb16029f
    .inst 0x54000441
    .inst 0x9100c260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xf94002a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_clear_data_duplicator
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_release_rodata_6410
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_release_rodata_6410
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_release_rodata_e6e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_release_rodata_e6e
    .inst 0xf900327f
    .inst 0xb9006a7f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf94002a8
    .inst 0xb9406e69
    .inst 0xb940390a
    .inst 0x6b09015f
    .inst 0x54000060
    .inst 0xb9003909
    .inst 0xf94002a8
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0xc0
    .inst 0xb9403d0a
    .inst 0xb9400129
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xc0
    .inst 0x6b09015f
    .inst 0x54000040
    .inst 0xb9003d09
    .inst 0x2a1f03e0
    .inst 0xa9434ff4
    .inst 0xf9400bf7
    .inst 0xa94257f6
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xd2802017
    .inst 0xf2fbd5b7
    .inst 0x14000004
    .inst 0xf94002d4
    .inst 0xeb16029f
    .inst 0x54fffb40
    .inst 0xf9400688
    .inst 0xf9400109
    .inst 0xeb14013f
    .inst 0x54000241
    .inst 0xf9400289
    .inst 0xf940052a
    .inst 0xeb14015f
    .inst 0x540001c1
    .inst 0xf9000528
    .inst 0xf9000109
    .inst 0xf9400a80
    .inst 0x91008ae8
    .inst 0xa9002297
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xb944f2a8
    .inst 0x34fffd88
    .inst 0x51000508
    .inst 0xb904f2a8
    .inst 0x17ffffe9
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __list_del_entry_valid_or_report
    .inst 0x17fffff3
.size syna_cdev_release, .-syna_cdev_release
.section .rodata.str1.1,"aMS",@progbits,1
.org 0xe6e
.L_syna_cdev_release_rodata_e6e:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x64, 0x65, 0x76, 0x5f, 0x72, 0x65, 0x6c, 0x65, 0x61, 0x73, 0x65, 0x00
.org 0x3968
.L_syna_cdev_release_rodata_3968:
.byte 0x01, 0x35, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x43, 0x44, 0x65, 0x76, 0x69, 0x63, 0x65, 0x20, 0x61, 0x6c, 0x72, 0x65, 0x61, 0x64, 0x79, 0x20, 0x63, 0x6c, 0x6f, 0x73, 0x65, 0x64, 0x2c, 0x20, 0x25, 0x64, 0x0a, 0x00
.org 0x6410
.L_syna_cdev_release_rodata_6410:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x43, 0x44, 0x65, 0x76, 0x69, 0x63, 0x65, 0x20, 0x63, 0x6c, 0x6f, 0x73, 0x65, 0x0a, 0x00
