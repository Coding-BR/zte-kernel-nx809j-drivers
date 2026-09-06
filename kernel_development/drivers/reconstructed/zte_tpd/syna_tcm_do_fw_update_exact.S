.section .text,"ax",@progbits
.align 2
.global syna_tcm_do_fw_update
.type syna_tcm_do_fw_update, %function
.word 0xb9434444
syna_tcm_do_fw_update:
    .inst 0xd503233f
    .inst 0xa9ba7bfd
    .inst 0xf9000bfc
    .inst 0xa90267fa
    .inst 0xa9035ff8
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x910003fd
    .inst 0xd10c83ff
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0xb5000080
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2055
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2055
    .inst 0x1400000e
    .inst 0xb4000161
    .inst 0x34000142
    .inst 0xaa0103f7
    .inst 0x2a0203f6
    .inst 0x2a0403f9
    .inst 0x350001a3
    .inst 0xaa0003f8
    .inst 0x2a1f03f5
    .inst 0x2a1f03f4
    .inst 0x2a1f03f3
    .inst 0x1400000c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6bed
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6bed
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa93b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa93b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x1400001c
    .inst 0x53107c73
    .inst 0xb941e814
    .inst 0xaa0003f8
    .inst 0x12003c75
    .inst 0x910023e0
    .inst 0x2a1f03e1
    .inst 0x52806202
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2e87
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2e87
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa93b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa93b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910023e2
    .inst 0xaa1703e0
    .inst 0x2a1603e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_parse_fw_image
    .inst 0x37f80300
    .inst 0x36000419
    .inst 0x52800122
    .inst 0xaa1803e0
    .inst 0x910023e1
    .inst 0x2a1303e3
    .inst 0x2a1503e4
    .inst 0x2a1403e5
    .inst 0x52800026
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_do_fw_update_ex
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54001181
    .inst 0x910c83ff
    .inst 0xa9454ff4
    .inst 0xf9400bfc
    .inst 0xa94457f6
    .inst 0xa9435ff8
    .inst 0xa94267fa
    .inst 0xa8c67bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1bbb
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1bbb
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa93b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa93b
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e0
    .inst 0x17ffffea
    .inst 0xb9408be8
    .inst 0x7100891f
    .inst 0x54000102
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x721b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x721b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2379
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2379
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03e0
    .inst 0x17ffffe0
    .inst 0x3940231a
    .inst 0xf94043f9
    .inst 0x528001c9
    .inst 0x5280020a
    .inst 0xb9400f17
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaa01
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaa01
    .inst 0x71000b5f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2379
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2379
    .inst 0x9a890149
    .inst 0x2a1703e2
    .inst 0xb8696b36
    .inst 0x2a1603e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x6b1702df
    .inst 0x54000941
    .inst 0x71000b5f
    .inst 0x52800248
    .inst 0x52800289
    .inst 0x9a880128
    .inst 0x3943030b
    .inst 0x8b080328
    .inst 0x3940010a
    .inst 0x6b0b015f
    .inst 0x540008e1
    .inst 0x3940050a
    .inst 0x3943070b
    .inst 0xaa1803e9
    .inst 0x6b0b015f
    .inst 0x54000841
    .inst 0x3940090a
    .inst 0x3943092b
    .inst 0x6b0b015f
    .inst 0x540007c1
    .inst 0x39400d0a
    .inst 0x39430d2b
    .inst 0x6b0b015f
    .inst 0x54000741
    .inst 0x3940110a
    .inst 0x3943112b
    .inst 0x6b0b015f
    .inst 0x540006c1
    .inst 0x3940150a
    .inst 0x39431529
    .inst 0x6b09015f
    .inst 0x54000641
    .inst 0x39401909
    .inst 0x39431b0a
    .inst 0x6b0a013f
    .inst 0x540005c1
    .inst 0x39401d09
    .inst 0x39431f0a
    .inst 0x6b0a013f
    .inst 0x54000541
    .inst 0x39402109
    .inst 0x3943230a
    .inst 0x6b0a013f
    .inst 0x540004c1
    .inst 0x39402509
    .inst 0x3943270a
    .inst 0x6b0a013f
    .inst 0x54000441
    .inst 0x39402909
    .inst 0x39432b0a
    .inst 0x6b0a013f
    .inst 0x540003c1
    .inst 0x39402d09
    .inst 0x39432f0a
    .inst 0x6b0a013f
    .inst 0x54000341
    .inst 0x39403109
    .inst 0x3943330a
    .inst 0x6b0a013f
    .inst 0x540002c1
    .inst 0x39403509
    .inst 0x3943370a
    .inst 0x6b0a013f
    .inst 0x54000241
    .inst 0x39403909
    .inst 0x39433b0a
    .inst 0x6b0a013f
    .inst 0x540001c1
    .inst 0x39403d08
    .inst 0x39433f09
    .inst 0x6b09011f
    .inst 0x54000141
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xa45
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xa45
    .inst 0x17ffffa2
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb72d
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb72d
    .inst 0x52800139
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaa3b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaa3b
    .inst 0x14000006
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x542b
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x542b
    .inst 0x52800039
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7253
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7253
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2379
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2379
    .inst 0xaa1703e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1603e0
    .inst 0xaa1703e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1803e0
    .inst 0x2a1903e2
    .inst 0x17ffff6b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_tcm_do_fw_update, .-syna_tcm_do_fw_update

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
