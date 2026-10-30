.section .text,"ax",@progbits
.align 2
.global aw22xxx_read_chipid
.type aw22xxx_read_chipid, %function
aw22xxx_read_chipid:
    .inst 0xd503233f
    .inst 0xd100c3ff
    .inst 0xa9017bfd
    .inst 0xf90013f3
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0x52801fe1
    .inst 0x2a1f03e2
    .inst 0xf9438908
    .inst 0xaa0003f3
    .inst 0xf90007e8
    .inst 0x390013ff
    .inst 0x97fffd5a
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x52800aa2
    .inst 0x97fffd56
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x910013e2
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x97fffd9a
    .inst 0x2a0003e3
    .inst 0x36f80120
    .inst 0xf9400660
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1843
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1843
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1873
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1873
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x12800080
    .inst 0x14000046
    .inst 0x394013e2
    .inst 0x7101d85f
    .inst 0x540002a1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xbe9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xbe9
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1873
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1873
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910013e2
    .inst 0xaa1303e0
    .inst 0x2a1f03e1
    .inst 0x97fffd84
    .inst 0x394013e2
    .inst 0x7100605f
    .inst 0x54000420
    .inst 0x71009c5f
    .inst 0x540005e1
    .inst 0xd28eec28
    .inst 0x52800049
    .inst 0xf2a64648
    .inst 0xf2c64628
    .inst 0xf2e006e8
    .inst 0x1400001e
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x17a7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x17a7
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1873
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1873
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800020
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x910013e2
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x97fffd6e
    .inst 0x2a0003e3
    .inst 0x37fffaa0
    .inst 0x394013e2
    .inst 0x7101d85f
    .inst 0x54fffba0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x17a7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x17a7
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1873
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1873
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800020
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x14000016
    .inst 0xd28eec28
    .inst 0x52800029
    .inst 0xf2a64648
    .inst 0xf2c62628
    .inst 0xf2e00708
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_data_base+0x378
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_data_base+0x378
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1000
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1000
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1873
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1873
    .inst 0x390bb669
    .inst 0xf9000048
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03e0
    .inst 0x14000007
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x2af
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x2af
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1873
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1873
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002a0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540000c1
    .inst 0xa9417bfd
    .inst 0xf94013f3
    .inst 0x9100c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw22xxx_read_chipid, .-aw22xxx_read_chipid
