.section .text,"ax",@progbits
.align 2
.global aw9620x_awrw_data_analysis
.type aw9620x_awrw_data_analysis, %function
aw9620x_awrw_data_analysis:
    .inst 0xd503233f
    .inst 0xd101c3ff
    .inst 0xa9017bfd
    .inst 0xf90013fb
    .inst 0xa90367fa
    .inst 0xa9045ff8
    .inst 0xa90557f6
    .inst 0xa9064ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0x12001c49
    .inst 0xaa0003f3
    .inst 0xf9438908
    .inst 0x0b220939
    .inst 0xaa0103e0
    .inst 0x2a0203f5
    .inst 0xaa0103f4
    .inst 0xf90007e8
    .inst 0x11005336
    .inst 0xb90003ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strlen
    .inst 0xf9401a61
    .inst 0xaa0003f7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xebd
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xebd
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3653
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3653
    .inst 0x52815d24
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x6b1702df
    .inst 0x54000701
    .inst 0x72001ebf
    .inst 0x540004e0
    .inst 0x2a1f03fb
    .inst 0x2a1f03fa
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x366e
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x366e
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xc7c
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xc7c
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3653
    .inst 0x91000318
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3653
    .inst 0x14000006
    .inst 0x11001768
    .inst 0x1100075a
    .inst 0x12001d1b
    .inst 0x6b19037f
    .inst 0x540002e2
    .inst 0x8b3b4288
    .inst 0x910013e0
    .inst 0x910003e2
    .inst 0xaa1503e1
    .inst 0x79402d08
    .inst 0x79000be8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, sscanf
    .inst 0x7100041f
    .inst 0x54fffe61
    .inst 0xf9413e68
    .inst 0xb94003e9
    .inst 0x92401f4a
    .inst 0xaa1603e0
    .inst 0xaa1703e2
    .inst 0xaa1803e3
    .inst 0x382a6909
    .inst 0x52815f64
    .inst 0xf9413e68
    .inst 0xf9401a61
    .inst 0x386a6905
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x17ffffe6
    .inst 0x2a1f03e0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540002e1
    .inst 0xa9464ff4
    .inst 0xf94013fb
    .inst 0xa94557f6
    .inst 0xa9445ff8
    .inst 0xa94367fa
    .inst 0xa9417bfd
    .inst 0x9101c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xb9
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xb9
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x3653
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x3653
    .inst 0x52815dc4
    .inst 0x2a1603e5
    .inst 0x2a1703e6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x12800000
    .inst 0x17ffffe6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_awrw_data_analysis, .-aw9620x_awrw_data_analysis
