.section .text,"ax",@progbits
.align 2
.global aw8693x_trig_init
.type aw8693x_trig_init, %function
    .word 0x847a0830
aw8693x_trig_init:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9027bfd
    .inst 0xa9034ff4
    .inst 0x910083fd
    .inst 0xd5384108
    .inst 0xaa0003f3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_cb_enter
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_cb_enter
    .inst 0xf9438908
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_cb_haptic_hv
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_cb_haptic_hv
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_cb_trig_init
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_cb_trig_init
    .inst 0x5280c322
    .inst 0xf81f83a8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x3952fe68
    .inst 0x7100051f
    .inst 0x54001660
    .inst 0x39529668
    .inst 0x39529e6a
    .inst 0x12800feb
    .inst 0x39529a69
    .inst 0x3952a66c
    .inst 0xaa1303e0
    .inst 0x7100011f
    .inst 0x39179e68
    .inst 0x52800721
    .inst 0x1a9f07e8
    .inst 0x3917a66a
    .inst 0x3952a26a
    .inst 0x531a650d
    .inst 0x331a010b
    .inst 0x3952ae68
    .inst 0x7100013f
    .inst 0x3917a269
    .inst 0x3952aa69
    .inst 0x3917ae6a
    .inst 0x1a8b01aa
    .inst 0x3952b26b
    .inst 0x3917aa6c
    .inst 0x321b014c
    .inst 0x7100011f
    .inst 0x3917b269
    .inst 0x1a8c0149
    .inst 0x7100017f
    .inst 0x39179668
    .inst 0x321c0128
    .inst 0x12801e02
    .inst 0x1a880123
    .inst 0x39179a6b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0x3957a668
    .inst 0x910033e2
    .inst 0xaa1303e0
    .inst 0x52800661
    .inst 0x52800023
    .inst 0x7100011f
    .inst 0x3957ae68
    .inst 0x1a9f07e9
    .inst 0x2a091d08
    .inst 0x390033e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0x3957aa68
    .inst 0x910033e2
    .inst 0xaa1303e0
    .inst 0x528006c1
    .inst 0x52800023
    .inst 0x7100011f
    .inst 0x3957b268
    .inst 0x1a9f07e9
    .inst 0x2a091d08
    .inst 0x390033e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0x3952b668
    .inst 0x3952be6a
    .inst 0x5280010d
    .inst 0x3952ba69
    .inst 0x3952c26b
    .inst 0xaa1303e0
    .inst 0x7100011f
    .inst 0x3917da6a
    .inst 0x52800721
    .inst 0x1a9f07ea
    .inst 0x3917d268
    .inst 0x3952c668
    .inst 0x531e754c
    .inst 0x331e014d
    .inst 0x3952da6a
    .inst 0x3917d669
    .inst 0x7100013f
    .inst 0x3952de69
    .inst 0x3917e26b
    .inst 0x3952ca6b
    .inst 0x1a8d018c
    .inst 0x39180a6a
    .inst 0x3952e26a
    .inst 0x9117fe6d
    .inst 0x3917de68
    .inst 0x3952ce68
    .inst 0x128001e2
    .inst 0x3917e66b
    .inst 0x3952d66b
    .inst 0x39180e69
    .inst 0x3952e669
    .inst 0x7100011f
    .inst 0x3918166a
    .inst 0x3952d26a
    .inst 0x3918066b
    .inst 0x9112ee6b
    .inst 0x39181269
    .inst 0x321f0189
    .inst 0x7940016b
    .inst 0x3917ca68
    .inst 0x3952ea68
    .inst 0x1a890189
    .inst 0x7100015f
    .inst 0x3917ce6a
    .inst 0x1a890523
    .inst 0x39181a68
    .inst 0x790001ab
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0x3957da68
    .inst 0x910043e2
    .inst 0xaa1303e0
    .inst 0x52800681
    .inst 0x52800023
    .inst 0x7100011f
    .inst 0x3957e268
    .inst 0x1a9f07e9
    .inst 0x2a091d08
    .inst 0x390043e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0x3957de68
    .inst 0x910043e2
    .inst 0xaa1303e0
    .inst 0x528006e1
    .inst 0x52800023
    .inst 0x7100011f
    .inst 0x3957e668
    .inst 0x1a9f07e9
    .inst 0x2a091d08
    .inst 0x390043e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0x39580668
    .inst 0x39580a69
    .inst 0x12800fea
    .inst 0xaa1303e0
    .inst 0x52800741
    .inst 0x12801e02
    .inst 0x7100011f
    .inst 0x1a9f07e8
    .inst 0x7100013f
    .inst 0x531a650b
    .inst 0x331a010a
    .inst 0x3957fe68
    .inst 0x1a8a0169
    .inst 0x7100011f
    .inst 0x39580268
    .inst 0x321b012a
    .inst 0x1a8a0129
    .inst 0x7100011f
    .inst 0x321c012a
    .inst 0x1a8a0123
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0x39580e68
    .inst 0xd10033a2
    .inst 0xaa1303e0
    .inst 0x528006a1
    .inst 0x52800023
    .inst 0x7100011f
    .inst 0x39581668
    .inst 0x1a9f07e9
    .inst 0x2a091d08
    .inst 0x381f43a8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0x39581268
    .inst 0xd10033a2
    .inst 0xaa1303e0
    .inst 0x52800701
    .inst 0x52800023
    .inst 0x7100011f
    .inst 0x39581a68
    .inst 0x1a9f07e9
    .inst 0x2a091d08
    .inst 0x381f43a8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54000541
    .inst 0xa9434ff4
    .inst 0xa9427bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_cb_haptic_hv
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_cb_haptic_hv
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_cb_one_wire_enabled
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_cb_one_wire_enabled
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_cb_trig_init
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_cb_trig_init
    .inst 0xaa1403e1
    .inst 0x5280c362
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_cb_enter
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_cb_enter
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_cb_one_wire_init
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_cb_one_wire_init
    .inst 0xaa1403e1
    .inst 0x52806162
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800d88
    .inst 0x910023e2
    .inst 0xaa1303e0
    .inst 0x528007c1
    .inst 0x52800023
    .inst 0x390023e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0x52800ea8
    .inst 0x910023e2
    .inst 0xaa1303e0
    .inst 0x52800781
    .inst 0x52800023
    .inst 0x390023e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bytes
    .inst 0xaa1303e0
    .inst 0x52800741
    .inst 0x12800102
    .inst 0x52800103
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0x17ffff62
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw8693x_trig_init, .-aw8693x_trig_init
