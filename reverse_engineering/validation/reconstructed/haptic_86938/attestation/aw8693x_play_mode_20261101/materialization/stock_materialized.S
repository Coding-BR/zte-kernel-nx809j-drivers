.section .text,"ax",@progbits
.align 2
.global aw8693x_play_mode
.type aw8693x_play_mode, %function
    .word 0x1d0adf6e
aw8693x_play_mode:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0x12001c28
    .inst 0xaa0003f3
    .inst 0x7100091f
    .inst 0x5400036c
    .inst 0x340006a8
    .inst 0x7100051f
    .inst 0x54000be0
    .inst 0x7100091f
    .inst 0x54000a41
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_0000
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_0000
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_25f9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_25f9
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_088e
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_088e
    .inst 0xaa1403e1
    .inst 0x52804c62
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800048
    .inst 0xaa1303e0
    .inst 0x52800101
    .inst 0x12800062
    .inst 0x52800023
    .inst 0x39005e68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0xaa1303e0
    .inst 0x52800101
    .inst 0x12800082
    .inst 0x52800083
    .inst 0x1400005c
    .inst 0x71000d1f
    .inst 0x54000580
    .inst 0x7100111f
    .inst 0x54000d40
    .inst 0x7100151f
    .inst 0x540006e1
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_0000
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_0000
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_10a1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_10a1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_088e
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_088e
    .inst 0xaa1403e1
    .inst 0x52804b22
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x528000a8
    .inst 0xaa1303e0
    .inst 0x52800101
    .inst 0x12800062
    .inst 0x2a1f03e3
    .inst 0x39005e68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0xaa1303e0
    .inst 0x52800101
    .inst 0x12800082
    .inst 0x2a1f03e3
    .inst 0x14000067
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_017c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_017c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_0000
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_0000
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_088e
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_088e
    .inst 0x528047c2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x528008a1
    .inst 0x12800402
    .inst 0x52800403
    .inst 0x39005e7f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0xaa1303e0
    .inst 0x528008a1
    .inst 0x12800402
    .inst 0x1400003f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_0c6c
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_0c6c
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_0000
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_0000
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_088e
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_088e
    .inst 0x52804da2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800068
    .inst 0xaa1303e0
    .inst 0x52800101
    .inst 0x12800062
    .inst 0x2a1f03e3
    .inst 0x39005e68
    .inst 0x1400002c
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_0000
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_0000
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_29dc
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_29dc
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_088e
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_088e
    .inst 0x12001c24
    .inst 0xaa0803e1
    .inst 0x52804fe2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x1400004d
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_0000
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_0000
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_1081
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_1081
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_088e
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_088e
    .inst 0xaa1403e1
    .inst 0x528049e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800028
    .inst 0xaa1303e0
    .inst 0x52800101
    .inst 0x12800062
    .inst 0x2a1f03e3
    .inst 0x39005e68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0xaa1303e0
    .inst 0x52800101
    .inst 0x12800082
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_26b2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_26b2
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_026b
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_026b
    .inst 0xaa1403e1
    .inst 0x52803f02
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x528000c1
    .inst 0x12800402
    .inst 0x52800403
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0xaa1303e0
    .inst 0x52800981
    .inst 0x12800802
    .inst 0x2a1f03e3
    .inst 0x14000026
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_0000
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_0000
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_17dd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_17dd
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_088e
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_088e
    .inst 0xaa1403e1
    .inst 0x52804ea2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x52800088
    .inst 0xaa1303e0
    .inst 0x52800101
    .inst 0x12800062
    .inst 0x52800043
    .inst 0x39005e68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0xaa1303e0
    .inst 0x52800101
    .inst 0x12800082
    .inst 0x52800083
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_0505
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_0505
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lhaptic_86938_play_mode_string_026b
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lhaptic_86938_play_mode_string_026b
    .inst 0xaa1403e1
    .inst 0x52803fc2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x528000c1
    .inst 0x12800402
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0xaa1303e0
    .inst 0x52800981
    .inst 0x12800802
    .inst 0x52800803
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_w_bits
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw8693x_play_mode, .-aw8693x_play_mode

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "play_mode_rodata.inc"
