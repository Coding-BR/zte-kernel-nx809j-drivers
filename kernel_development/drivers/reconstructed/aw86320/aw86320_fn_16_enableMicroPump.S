.section .text,"ax",@progbits
.align 2
.global enableMicroPump
.type enableMicroPump, %function
enableMicroPump:
    .inst 0xd503233f
    .inst 0xd100c3ff
    .inst 0xa9017bfd
    .inst 0xa9024ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0x2a0103f4
    .inst 0xaa0003f3
    .inst 0xf9438908
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x1fd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x1fd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x640
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x640
    .inst 0x52805382
    .inst 0x2a1403e4
    .inst 0xf90007e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x35000574
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x101
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x101
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xf20
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xf20
    .inst 0x52802462
    .inst 0xb900127f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x52800361
    .inst 0x5281c1c2
    .inst 0x97fffaba
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0xaa1303e0
    .inst 0x528004a1
    .inst 0x2a1f03e2
    .inst 0x97fffab6
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0x52938100
    .inst 0x72a01880
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __const_udelay
    .inst 0xb9401a60
    .inst 0x37f80180
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_direction_output_raw
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xa1f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xa1f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x640
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x640
    .inst 0x52805782
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x79e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x79e
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x640
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x640
    .inst 0x528057c2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x1400005d
    .inst 0xb9401a68
    .inst 0x37f801a8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xfe4
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xfe4
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x640
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x640
    .inst 0x52805562
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9401a60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x52800021
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_direction_output_raw
    .inst 0xaa1303e0
    .inst 0x97fffe79
    .reloc .-4, R_AARCH64_CALL26, aw86320_misc_para_init
    .inst 0x910013e2
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x79000bff
    .inst 0x97fffaf6
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_read
    .inst 0x36f80140
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
    .inst 0x14000010
    .inst 0x79400be8
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x121a7508
    .inst 0x321c0102
    .inst 0x97fffa78
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0x36f80140
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
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x101
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x101
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xf20
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xf20
    .inst 0x52802462
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x52800361
    .inst 0x5281c1c2
    .inst 0x97fffa62
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0xaa1303e0
    .inst 0x528004a1
    .inst 0x2a1f03e2
    .inst 0x97fffa5e
    .reloc .-4, R_AARCH64_CALL26, haptic_i2c_write
    .inst 0x52938100
    .inst 0x72a01880
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __const_udelay
    .inst 0xaa1303e0
    .inst 0x97fffe75
    .reloc .-4, R_AARCH64_CALL26, aw86320_interrupt_setup
    .inst 0xb26b7be8
    .inst 0x9109a269
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, delayed_work_timer_fn
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, delayed_work_timer_fn
    .inst 0xf9013268
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ram_work_routine
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, ram_work_routine
    .inst 0x910a0260
    .inst 0x52a00402
    .inst 0xaa1f03e3
    .inst 0xaa1f03e4
    .inst 0xf9013669
    .inst 0xf9013a69
    .inst 0xf9013e68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_timer_key
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, system_wq
    .inst 0x91098262
    .inst 0x52800400
    .inst 0xf9400101
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, system_wq
    .inst 0x5280fa03
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, queue_delayed_work_on
    .inst 0x29410261
    .inst 0x79402a62
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw86320_play_atsin0
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540000c1
    .inst 0xa9424ff4
    .inst 0xa9417bfd
    .inst 0x9100c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size enableMicroPump, .-enableMicroPump
