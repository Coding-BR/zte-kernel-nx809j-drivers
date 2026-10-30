.section .text,"ax",@progbits
.align 2
.global aw9620x_mode_operation_set
.type aw9620x_mode_operation_set, %function
    .word 0x95c41a97
aw9620x_mode_operation_set:
    .inst 0xd503233f
    .inst 0xd10143ff
    .inst 0xa9027bfd
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910083fd
    .inst 0xd5384109
    .inst 0xaa0203e8
    .inst 0xd10033a2
    .inst 0xf9438929
    .inst 0x2a1f03e1
    .inst 0xaa0303f3
    .inst 0xf81f83a9
    .inst 0xf9404c16
    .inst 0xaa0803e0
    .inst 0xb81f43bf
    .inst 0xb90013ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kstrtouint
    .inst 0x340001a0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540016a1
    .inst 0xaa1303e0
    .inst 0xa9444ff4
    .inst 0xa94357f6
    .inst 0xa9427bfd
    .inst 0x910143ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xb85f43a8
    .inst 0xd100e2d4
    .inst 0x71000d1f
    .inst 0x54000800
    .inst 0x7100091f
    .inst 0x540004a0
    .inst 0x7100051f
    .inst 0x540007e1
    .inst 0xb85d82c8
    .inst 0x7100051f
    .inst 0x54000780
    .inst 0x71000d1f
    .inst 0x540000a1
    .inst 0xaa1403e0
    .inst 0x529fe201
    .inst 0x52800022
    .inst 0x97ffe1ea
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xb85d02c8
    .inst 0x7100091f
    .inst 0x54001362
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_bss_base
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_bss_base
    .inst 0x3868692a
    .inst 0x7100055f
    .inst 0x54000081
    .inst 0xaa1403e0
    .inst 0x3828693f
    .inst 0x97fff5d1
    .reloc .-4, R_AARCH64_CALL26, aw9620x_load_def_reg_bin
    .inst 0x910033e2
    .inst 0xaa1403e0
    .inst 0x52888201
    .inst 0x97ffea97
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0x36f80d20
    .inst 0xf85f82c1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1034
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1034
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x32b2
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x32b2
    .inst 0x5281b4a4
    .inst 0x14000017
    .inst 0xb85d82c8
    .inst 0x7100091f
    .inst 0x54000340
    .inst 0x71000d1f
    .inst 0x540000a1
    .inst 0xaa1403e0
    .inst 0x529fe201
    .inst 0x52800022
    .inst 0x97ffe1c8
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x910043e2
    .inst 0xaa1403e0
    .inst 0x52834301
    .inst 0x97ffea80
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0xf85f82c1
    .inst 0x36f80640
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x252a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x252a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x32b2
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x32b2
    .inst 0x5281b6c4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x92800013
    .inst 0x17ffffb2
    .inst 0xb85d82c8
    .inst 0x71000d1f
    .inst 0x54000401
    .inst 0xf85f82c1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2f0a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2f0a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x32b2
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x32b2
    .inst 0x5281b9c4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xb85f43a5
    .inst 0xf85f82c1
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x32b2
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x32b2
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x210d
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x210d
    .inst 0xaa1403e0
    .inst 0xaa1503e3
    .inst 0x5281ba44
    .inst 0xb81d82c5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf85f82c1
    .inst 0xb85d82c5
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xc9a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xc9a
    .inst 0xaa1403e0
    .inst 0xaa1503e3
    .inst 0x5281ba64
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x17ffff90
    .inst 0xaa1403e0
    .inst 0x52888101
    .inst 0x52800062
    .inst 0x97ffe192
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x17ffffe6
    .inst 0xb94013f5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xaa1
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xaa1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x32b2
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x32b2
    .inst 0x5281b724
    .inst 0x2a1503e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x72003ebf
    .inst 0x54000660
    .inst 0xb85d02c8
    .inst 0x7100051f
    .inst 0x54000360
    .inst 0x35000528
    .inst 0xf940e6c8
    .inst 0x52800021
    .inst 0x52800822
    .inst 0x2a1f03e3
    .inst 0xf9400500
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xf85f82c1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x272f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x272f
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x264
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x264
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x32b2
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x32b2
    .inst 0x5281b7e4
    .inst 0x14000019
    .inst 0xaa1403e0
    .inst 0x52888101
    .inst 0x52800022
    .inst 0x97ffe16e
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xaa1403e0
    .inst 0x52834001
    .inst 0x129fe002
    .inst 0x529fe003
    .inst 0x97fff1b4
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write_bits
    .inst 0x17ffffbd
    .inst 0xf940e6c8
    .inst 0x52800021
    .inst 0x52800842
    .inst 0x2a1f03e3
    .inst 0xf9400500
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xf85f82c1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x272f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x272f
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x288
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x288
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x32b2
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x32b2
    .inst 0x5281b864
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xf940e6c8
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0x2a1f03e3
    .inst 0xf9400500
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xaa1403e0
    .inst 0x52888101
    .inst 0x52800042
    .inst 0x97ffe14f
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x17ffffa3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0xd42aa240
.size aw9620x_mode_operation_set, .-aw9620x_mode_operation_set
