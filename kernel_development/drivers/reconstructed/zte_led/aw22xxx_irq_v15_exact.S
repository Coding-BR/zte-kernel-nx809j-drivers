.section .text,"ax",@progbits
.align 2
.global aw22xxx_irq_v15
.type aw22xxx_irq_v15, %function
.word 0xd2f00be1
aw22xxx_irq_v15:
    .inst 0xd503233f
    .inst 0xd10143ff
    .inst 0xa9037bfd
    .inst 0xa9044ff4
    .inst 0x9100c3fd
    .inst 0xd5384108
    .inst 0xaa0103f3
    .inst 0x910033e2
    .inst 0xf9438908
    .inst 0xaa0103e0
    .inst 0x52800141
    .inst 0xf81f83a8
    .inst 0x390033ff
    .inst 0x97fffcf0
    .inst 0x394033e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x387
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x387
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xd74
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xd74
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394033e8
    .inst 0x370001a8
    .inst 0x37200908
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000ea1
    .inst 0x52800020
    .inst 0xa9444ff4
    .inst 0xa9437bfd
    .inst 0x910143ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xd74
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xd74
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x5a6
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x5a6
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x52801fe1
    .inst 0x2a1f03e2
    .inst 0x97fffc86
    .inst 0x910043e2
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x390043ff
    .inst 0x97fffccd
    .inst 0x394043e8
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x121e7902
    .inst 0x390043e2
    .inst 0x97fffc7b
    .inst 0x910053e2
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x390053ff
    .inst 0x97fffcc2
    .inst 0x394053e8
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x121f7902
    .inst 0x390053e2
    .inst 0x97fffc70
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x148c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x148c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x181c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x181c
    .inst 0x52803542
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910063e2
    .inst 0xaa1303e0
    .inst 0x52800041
    .inst 0x390063ff
    .inst 0x97fffcb0
    .inst 0x394063e8
    .inst 0xaa1303e0
    .inst 0x52800041
    .inst 0x121f7902
    .inst 0x390063e2
    .inst 0x97fffc5e
    .inst 0x5280fa00
    .inst 0x52817701
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x7b1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x7b1
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394033e8
    .inst 0x3627f748
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x8ea
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x8ea
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xd74
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xd74
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x52801fe1
    .inst 0x2a1f03e2
    .inst 0x97fffc4b
    .inst 0xd10053a2
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x381ec3bf
    .inst 0x97fffc92
    .inst 0x385ec3a8
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x121e7902
    .inst 0x381ec3a2
    .inst 0x97fffc40
    .inst 0xd10043a2
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x381f03bf
    .inst 0x97fffc87
    .inst 0x385f03a8
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x321f0102
    .inst 0x381f03a2
    .inst 0x97fffc35
    .inst 0xd10033a2
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x381f43bf
    .inst 0x97fffc7c
    .inst 0x385f43a8
    .inst 0xaa1303e0
    .inst 0x52800081
    .inst 0x32000102
    .inst 0x381f43a2
    .inst 0x97fffc2a
    .inst 0xb9430268
    .inst 0x34fff1c8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, system_wq
    .inst 0x9108c262
    .inst 0x52800400
    .inst 0xf9400101
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, system_wq
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, queue_work_on
    .inst 0x17ffff88
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw22xxx_irq_v15, .-aw22xxx_irq_v15
