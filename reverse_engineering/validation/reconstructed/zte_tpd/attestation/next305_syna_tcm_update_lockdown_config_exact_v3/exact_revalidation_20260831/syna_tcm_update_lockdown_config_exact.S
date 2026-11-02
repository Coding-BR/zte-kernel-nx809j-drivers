.section .bss,"aw",@nobits
.align 3

.section .text,"ax",@progbits
.align 2
.global syna_tcm_update_lockdown_config
.type syna_tcm_update_lockdown_config, %function
.word 0xb72a3c1c
syna_tcm_update_lockdown_config:
    .inst 0xd503233f
    .inst 0xd10503ff
    .inst 0xa90f7bfd
    .inst 0xa91067fc
    .inst 0xa9115ff8
    .inst 0xa91257f6
    .inst 0xa9134ff4
    .inst 0x9103c3fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xa9047fff
    .inst 0xa9037fff
    .inst 0xa9027fff
    .inst 0xf9000fff
    .inst 0xb40011c0
    .inst 0xaa0103f6
    .inst 0xb4000fe1
    .inst 0xb94002c8
    .inst 0x34000fa8
    .inst 0x3949c2c8
    .inst 0x7100051f
    .inst 0x54000fa1
    .inst 0xf9413ec8
    .inst 0xb4000f68
    .inst 0x2a0203f5
    .inst 0xb94282c2
    .inst 0x71001c5f
    .inst 0x54001109
    .inst 0xaa0003f3
    .inst 0x52800108
    .inst 0xa90dffff
    .inst 0xa90cffff
    .inst 0xa90bffff
    .inst 0xa90affff
    .inst 0xa909ffff
    .inst 0xa908ffff
    .inst 0xa907ffff
    .inst 0xa906ffff
    .inst 0xa905ffff
    .inst 0xf9002bff
    .inst 0xb900dfe8
    .inst 0x34000095
    .inst 0xb9420e77
    .inst 0xb941ea74
    .inst 0x14000003
    .inst 0x2a1f03f4
    .inst 0x2a1f03f7
    .inst 0x910143e8
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad58
    .inst 0x91000318
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad58
    .inst 0x90000019
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .bss+0x964
    .inst 0x91000339
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .bss+0x964
    .inst 0x91014100
    .inst 0xaa1803e1
    .inst 0xaa1903e2
    .inst 0xa9097fff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x910023e8
    .inst 0xaa1803e1
    .inst 0xaa1903e2
    .inst 0x91004100
    .inst 0x390123ff
    .inst 0xa900ffff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x52800028
    .inst 0x910143e1
    .inst 0xaa1303e0
    .inst 0x2a1703e2
    .inst 0x2a1403e3
    .inst 0xb9038a68
    .inst 0x97fff637
    .inst 0x37f80c80
    .inst 0x910143e1
    .inst 0x910023e2
    .inst 0xaa1303e0
    .inst 0x2a1703e3
    .inst 0x97fff99c
    .inst 0x37f80f40
    .inst 0xb94017e8
    .inst 0xf94007e9
    .inst 0x51001d08
    .inst 0x38e84928
    .inst 0x37f80f88
    .inst 0x910143e1
    .inst 0x9109c2c2
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_check_flash_block
    .inst 0x7100001f
    .inst 0x54000fad
    .inst 0xb94282c8
    .inst 0xf9413ec9
    .inst 0x910143e1
    .inst 0xb9408bea
    .inst 0xaa1303e0
    .inst 0x52800104
    .inst 0x51002108
    .inst 0x2a1503e5
    .inst 0x52800115
    .inst 0x0b080142
    .inst 0x8b080123
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_write_flash
    .inst 0x7100001f
    .inst 0x1a95b015
    .inst 0x39402668
    .inst 0x71002d1f
    .inst 0x540000a1
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_switch_fw_mode
    .inst 0xb9038a7f
    .inst 0x394123e2
    .inst 0x350007e2
    .inst 0xf94007f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000840
    .inst 0xb4000073
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x394343e2
    .inst 0xf9000bff
    .inst 0x390123ff
    .inst 0x35000822
    .inst 0xf9404bf3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000880
    .inst 0xb4000073
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x2a1503e0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000b21
    .inst 0xa9534ff4
    .inst 0xa95257f6
    .inst 0xa9515ff8
    .inst 0xa95067fc
    .inst 0xa94f7bfd
    .inst 0x910503ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6bed
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6bed
    .inst 0x1400000d
    .inst 0x394a22c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_partition_id_string
    .inst 0xaa0003e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb6af
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb6af
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7cf8
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7cf8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17ffffe7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2055
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2055
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7cf8
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7cf8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17ffffe0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2313
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2313
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7cf8
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7cf8
    .inst 0x52800103
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17ffffd8
    .inst 0x2a0003f5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1506
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1506
    .inst 0x1400001c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3313
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3313
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6a45
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6a45
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffbd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffbd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3313
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3313
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6a45
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6a45
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffbb
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffbb
    .inst 0x2a0003f5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5e73
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5e73
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7cf8
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7cf8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff9a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x420b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x420b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7cf8
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7cf8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03f5
    .inst 0x17ffff93
    .inst 0x2a0003f5
    .inst 0x394a22c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_partition_id_string
    .inst 0xaa0003e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9bd4
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9bd4
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7cf8
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7cf8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff89
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_tcm_update_lockdown_config, .-syna_tcm_update_lockdown_config

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
