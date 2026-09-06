.section .text,"ax",@progbits
.align 2
.global aw22xxx_i2c_write
.type aw22xxx_i2c_write, %function
aw22xxx_i2c_write:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9017bfd
    .inst 0xf90013f5
    .inst 0xa9034ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xaa0003f3
    .inst 0x2a1f03e3
    .inst 0xf9438908
    .inst 0xf90007e8
    .inst 0xf9400000
    .inst 0x390013e1
    .inst 0x910013e1
    .inst 0x390017e2
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer_buffer_flags
    .inst 0x37f80180
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540006a1
    .inst 0xa9434ff4
    .inst 0xf94013f5
    .inst 0xa9417bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xb942e268
    .inst 0x2a0003f4
    .inst 0x2a0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_get_raw_value
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x283
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x283
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xba9
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xba9
    .inst 0x2a1f03e2
    .inst 0x2a1403e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800020
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xf9400260
    .inst 0x910013e1
    .inst 0x52800042
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer_buffer_flags
    .inst 0x36fffc20
    .inst 0xb942e268
    .inst 0x2a0003f4
    .inst 0x2a0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_get_raw_value
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xba9
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xba9
    .inst 0x2a0003e4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x283
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x283
    .inst 0xaa1503e1
    .inst 0x52800022
    .inst 0x2a1403e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb942e260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x52800021
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_direction_output_raw
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1ab
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1ab
    .inst 0xaa1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800020
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x17ffffc8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw22xxx_i2c_write, .-aw22xxx_i2c_write
