.section .text,"ax",@progbits
.align 2
.global aw86320_interrupt_setup
.type aw86320_interrupt_setup, %function
aw86320_interrupt_setup:
    .inst 0xd503233f
    .inst 0xd100c3ff
    .inst 0xa9017bfd
    .inst 0xf90013f3
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0x910013e2
    .inst 0x528000a1
    .inst 0xf9438908
    .inst 0xaa0003f3
    .inst 0xf90007e8
    .inst 0x79000bff
    .inst 0x97fffc46
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_read
    .inst 0x37f80b20
    .inst 0x79400be8
    .inst 0xaa1303e0
    .inst 0x528000a1
    .inst 0x12167902
    .inst 0x97fffbd2
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0x37f81240
    .inst 0x910013e2
    .inst 0xaa1303e0
    .inst 0x528000a1
    .inst 0x79000bff
    .inst 0x97fffc3a
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_read
    .inst 0x37f80ac0
    .inst 0x79400be8
    .inst 0xaa1303e0
    .inst 0x528000a1
    .inst 0x12177902
    .inst 0x97fffbc6
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0x37f81200
    .inst 0x910013e2
    .inst 0xaa1303e0
    .inst 0x528000a1
    .inst 0x79000bff
    .inst 0x97fffc2e
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_read
    .inst 0x37f80a60
    .inst 0x79400be8
    .inst 0xaa1303e0
    .inst 0x528000a1
    .inst 0x12187902
    .inst 0x97fffbba
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0x37f811c0
    .inst 0x910013e2
    .inst 0xaa1303e0
    .inst 0x528000a1
    .inst 0x79000bff
    .inst 0x97fffc22
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_read
    .inst 0x37f80a00
    .inst 0x79400be8
    .inst 0xaa1303e0
    .inst 0x528000a1
    .inst 0x12197902
    .inst 0x97fffbae
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0x37f81180
    .inst 0x910013e2
    .inst 0xaa1303e0
    .inst 0x528000a1
    .inst 0x79000bff
    .inst 0x97fffc16
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_read
    .inst 0x37f809a0
    .inst 0x79400be8
    .inst 0xaa1303e0
    .inst 0x528000a1
    .inst 0x121a7902
    .inst 0x97fffba2
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0x37f81140
    .inst 0x910013e2
    .inst 0xaa1303e0
    .inst 0x528000a1
    .inst 0x79000bff
    .inst 0x97fffc0a
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_read
    .inst 0x37f80940
    .inst 0x79400be8
    .inst 0xaa1303e0
    .inst 0x528000a1
    .inst 0x121b7902
    .inst 0x97fffb96
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0x37f81100
    .inst 0x910013e2
    .inst 0xaa1303e0
    .inst 0x528000a1
    .inst 0x79000bff
    .inst 0x97fffbfe
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_read
    .inst 0x37f808e0
    .inst 0x79400be8
    .inst 0xaa1303e0
    .inst 0x528000a1
    .inst 0x121c7902
    .inst 0x97fffb8a
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0x37f810c0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54001161
    .inst 0xa9417bfd
    .inst 0xf94013f3
    .inst 0x9100c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xc38
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xc38
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4cd
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4cd
    .inst 0x528015e2
    .inst 0x1400003f
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xc38
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xc38
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4cd
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4cd
    .inst 0x528015e2
    .inst 0x14000040
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xc38
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xc38
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4cd
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4cd
    .inst 0x528015e2
    .inst 0x14000041
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xc38
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xc38
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4cd
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4cd
    .inst 0x528015e2
    .inst 0x14000042
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xc38
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xc38
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4cd
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4cd
    .inst 0x528015e2
    .inst 0x14000043
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xc38
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xc38
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4cd
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4cd
    .inst 0x528015e2
    .inst 0x14000044
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xc38
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xc38
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4cd
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4cd
    .inst 0x528015e2
    .inst 0x14000045
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xea8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xea8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4cd
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4cd
    .inst 0x52801702
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff66
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xea8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xea8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4cd
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4cd
    .inst 0x52801702
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff68
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xea8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xea8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4cd
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4cd
    .inst 0x52801702
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff6a
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xea8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xea8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4cd
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4cd
    .inst 0x52801702
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff6c
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xea8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xea8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4cd
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4cd
    .inst 0x52801702
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff6e
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xea8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xea8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4cd
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4cd
    .inst 0x52801702
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff70
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xea8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xea8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x4cd
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x4cd
    .inst 0x52801702
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff72
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw86320_interrupt_setup, .-aw86320_interrupt_setup
