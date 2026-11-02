.section .text,"ax",@progbits
.align 2
.global aw86320_play_atsin0
.type aw86320_play_atsin0, %function
    .word 0xbb79641a
aw86320_play_atsin0:
    .inst 0xd503233f
    .inst 0xa9bb7bfd
    .inst 0xf9000bf9
    .inst 0xa9025ff8
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910003fd
    .inst 0x2a0003f3
    .inst 0x12003c34
    .inst 0x2a0203f5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x5cf
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x5cf
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x650
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x650
    .inst 0x12003e64
    .inst 0x12003c46
    .inst 0x528046c2
    .inst 0x2a1403e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x71016a9f
    .inst 0x540000c8
    .inst 0x72003e7f
    .inst 0x54000080
    .inst 0x12003ea8
    .inst 0x7107d11f
    .inst 0x54000109
    .inst 0xa9444ff4
    .inst 0xf9400bf9
    .inst 0xa94357f6
    .inst 0xa9425ff8
    .inst 0xa8c57bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x529ff288
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_bss_base
    .inst 0x529999aa
    .inst 0x72a006a8
    .inst 0xf94002e9
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base
    .inst 0x72b9998a
    .inst 0x1b087e88
    .inst 0x5285000c
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0xb9434d2b
    .inst 0x52800038
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xc6a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xc6a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x650
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x650
    .inst 0x9baa7d08
    .inst 0xb943492a
    .inst 0x53144d6b
    .inst 0xaa1603e1
    .inst 0x52804982
    .inst 0xb9001138
    .inst 0xd36dfd14
    .inst 0x2a0c0268
    .inst 0x12003e6c
    .inst 0x2a0a396a
    .inst 0x710ff99f
    .inst 0x52857feb
    .inst 0x1a888173
    .inst 0x2a1403e5
    .inst 0x2a150155
    .inst 0x12003e64
    .inst 0x12003ea6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf94002f9
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x7c7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x7c7
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xf20
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xf20
    .inst 0xaa1603e1
    .inst 0x52802522
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394d1b28
    .inst 0x7100051f
    .inst 0x54000041
    .inst 0x39000738
    .inst 0x394d1728
    .inst 0x7100051f
    .inst 0x54000061
    .inst 0x52800048
    .inst 0x39000728
    .inst 0xf94002e8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base
    .inst 0x39400508
    .inst 0x7100051f
    .inst 0x54fff861
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x714
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x714
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x650
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x650
    .inst 0x52804a02
    .inst 0x52800024
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf94002e0
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base
    .inst 0x94000050
    .reloc .-4, R_AARCH64_CALL26, aw86320_play_stop
    .inst 0xf94002e8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base
    .inst 0xb9401108
    .inst 0x7100051f
    .inst 0x54fff681
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x1004
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x1004
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x650
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x650
    .inst 0x52804a62
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf94002e0
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base
    .inst 0x94000077
    .reloc .-4, R_AARCH64_CALL26, aw86320_timecheck_work_init
    .inst 0xf94002e0
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base
    .inst 0x528004a1
    .inst 0x2a1f03e2
    .inst 0x94000098
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0xf94002e0
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base
    .inst 0x52800461
    .inst 0x2a1403e2
    .inst 0x94000094
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0xf94002e0
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base
    .inst 0x52800481
    .inst 0x2a1503e2
    .inst 0x94000090
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0xf94002e0
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw86320_bss_base
    .inst 0x528004a1
    .inst 0x2a1303e2
    .inst 0x9400008c
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0x17ffff99
.size aw86320_play_atsin0, .-aw86320_play_atsin0
