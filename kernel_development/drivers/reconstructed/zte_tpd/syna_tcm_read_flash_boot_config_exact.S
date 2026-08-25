.section .bss,"aw",@nobits
.align 3

.section .text,"ax",@progbits
.align 2
.global syna_tcm_read_flash_boot_config
.type syna_tcm_read_flash_boot_config, %function
syna_tcm_read_flash_boot_config:
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xf9000bf7
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910003fd
    .inst 0xb5000081
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2917
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2917
    .inst 0x14000004
    .inst 0xb50001a2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3c0c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3c0c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9c1e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9c1e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0xa9434ff4
    .inst 0xf9400bf7
    .inst 0xa94257f6
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x39402408
    .inst 0x7100051f
    .inst 0x540000e1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xfc8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xfc8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9c1e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9c1e
    .inst 0x52800022
    .inst 0x14000050
    .inst 0xf9401029
    .inst 0x39400128
    .inst 0x7100051f
    .inst 0x54000100
    .inst 0x71000d1f
    .inst 0x540008a1
    .inst 0x52800268
    .inst 0x5280024a
    .inst 0x5280022b
    .inst 0x5280020c
    .inst 0x14000005
    .inst 0x528001e8
    .inst 0x528001ca
    .inst 0x528001ab
    .inst 0x5280018c
    .inst 0x386c692c
    .inst 0x386b692b
    .inst 0x2a0b218c
    .inst 0xb9402c2b
    .inst 0x1b0c7d74
    .inst 0x34000674
    .inst 0x386a692a
    .inst 0x38686928
    .inst 0x2a082144
    .inst 0x1b047d73
    .inst 0x340005d3
    .inst 0xb9403828
    .inst 0x6b14011f
    .inst 0x54000040
    .inst 0xb9003834
    .inst 0xb9403428
    .inst 0xaa0003f6
    .inst 0x2a0303f5
    .inst 0xaa0203f7
    .inst 0x6b04011f
    .inst 0x54000040
    .inst 0xb9003424
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2940
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2940
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9c1e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9c1e
    .inst 0x2a1403e2
    .inst 0x2a1403e3
    .inst 0x2a1303e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9400ae8
    .inst 0xf94002e0
    .inst 0x6b13011f
    .inst 0x54000142
    .inst 0xb4000040
    .inst 0x94000c3a
    .inst 0x2a1303e0
    .inst 0x94000a8e
    .inst 0xaa1703e8
    .inst 0xf90002e0
    .inst 0xb40004a0
    .inst 0xb9000913
    .inst 0x2a1303e8
    .inst 0x2a0803e2
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0xf94002e2
    .inst 0xaa1603e0
    .inst 0x2a1403e1
    .inst 0x2a1303e3
    .inst 0x2a1503e4
    .inst 0xb9000eff
    .inst 0x97fffceb
    .inst 0x37f801a0
    .inst 0xb9000ef3
    .inst 0x17ffffab
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1c00
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1c00
    .inst 0x17ffffa4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb0c6
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb0c6
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9c1e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9c1e
    .inst 0x2a0803e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffa0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1003
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1003
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9c1e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9c1e
    .inst 0x2a0003f5
    .inst 0xaa0803e0
    .inst 0x2a1403e2
    .inst 0x2a1303e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1503e0
    .inst 0x17ffff96
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5c25
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5c25
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7620
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7620
    .inst 0x2a1303e2
    .inst 0xaa0803f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x286f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x286f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9c1e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9c1e
    .inst 0xf900069f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e40
    .inst 0x17ffff87
.size syna_tcm_read_flash_boot_config, .-syna_tcm_read_flash_boot_config

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
