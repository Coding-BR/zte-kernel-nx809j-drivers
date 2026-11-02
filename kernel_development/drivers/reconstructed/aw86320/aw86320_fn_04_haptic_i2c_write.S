.section .text,"ax",@progbits
.align 2
.global haptic_i2c_write
.type haptic_i2c_write, %function
haptic_i2c_write:
    .inst 0xd503233f
    .inst 0xd100c3ff
    .inst 0xa9017bfd
    .inst 0xa9024ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0x5ac00849
    .inst 0x910013e2
    .inst 0xf9438908
    .inst 0x53107d29
    .inst 0x52800043
    .inst 0x2a0103f3
    .inst 0xaa0003f4
    .inst 0xf90007e8
    .inst 0x79000be9
    .inst 0x940000d3
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_writes
    .inst 0x37f80160
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540009a1
    .inst 0xa9424ff4
    .inst 0xa9417bfd
    .inst 0x9100c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x7ea
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x7ea
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x1bf
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x1bf
    .inst 0x2a0003e5
    .inst 0xaa0803e0
    .inst 0x52800cc2
    .inst 0x2a1f03e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x2a1303e1
    .inst 0x52800043
    .inst 0x940000b8
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_writes
    .inst 0x36fffcc0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x7ea
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x7ea
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x1bf
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x1bf
    .inst 0x2a0003e5
    .inst 0xaa0803e0
    .inst 0x52800cc2
    .inst 0x52800024
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x2a1303e1
    .inst 0x52800043
    .inst 0x940000a7
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_writes
    .inst 0x36fffaa0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x7ea
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x7ea
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x1bf
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x1bf
    .inst 0x2a0003e5
    .inst 0xaa0803e0
    .inst 0x52800cc2
    .inst 0x52800044
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x2a1303e1
    .inst 0x52800043
    .inst 0x94000096
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_writes
    .inst 0x36fff880
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x7ea
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x7ea
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x1bf
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x1bf
    .inst 0x2a0003e5
    .inst 0xaa0803e0
    .inst 0x52800cc2
    .inst 0x52800064
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x910013e2
    .inst 0xaa1403e0
    .inst 0x2a1303e1
    .inst 0x52800043
    .inst 0x94000085
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_writes
    .inst 0x2a0003f3
    .inst 0x37f80080
    .inst 0x2a1303e0
    .inst 0x17ffffb0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x7ea
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x7ea
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x1bf
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x1bf
    .inst 0x52800cc2
    .inst 0x52800084
    .inst 0x2a1303e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff3
.size haptic_i2c_write, .-haptic_i2c_write
