.section .text,"ax",@progbits
.align 2
.global syna_tcm_testing_check_frame_data_0
.type syna_tcm_testing_check_frame_data_0, %function
syna_tcm_testing_check_frame_data_0:
    .inst 0xd503233f
    .inst 0xd101c3ff
    .inst 0xa9017bfd
    .inst 0xa9026ffc
    .inst 0xa90367fa
    .inst 0xa9045ff8
    .inst 0xa90557f6
    .inst 0xa9064ff4
    .inst 0x910043fd
    .inst 0xb9000be3
    .inst 0xb4000844
    .inst 0xaa0003f9
    .inst 0xb4000800
    .inst 0xaa0503f5
    .inst 0xb40007c5
    .inst 0xb9400be8
    .inst 0xaa0103f3
    .inst 0x1b087c48
    .inst 0x531f7903
    .inst 0xeb01007f
    .inst 0x540007e8
    .inst 0x7100045f
    .inst 0x5400056b
    .inst 0xb9400be8
    .inst 0xaa0603f4
    .inst 0xaa0403f6
    .inst 0x2a1f03e9
    .inst 0x2a1f03fa
    .inst 0x5280003c
    .inst 0x531f790a
    .inst 0x2a0803f7
    .inst 0x29000bea
    .inst 0x14000007
    .inst 0x29400be8
    .inst 0xb85fc3a9
    .inst 0x1100075a
    .inst 0x6b02035f
    .inst 0x0b080129
    .inst 0x54000380
    .inst 0xb9400be8
    .inst 0xb81fc3a9
    .inst 0x7100051f
    .inst 0x54fffeeb
    .inst 0xaa1f03fb
    .inst 0x2a0903f8
    .inst 0x93407f08
    .inst 0xeb13029f
    .inst 0x2a1b03e2
    .inst 0x2a1a03e3
    .inst 0x9a8833e9
    .inst 0x8b080320
    .inst 0x8b0902a1
    .inst 0xb85fc2d0
    .inst 0x7290be51
    .inst 0x72b46651
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd43046c0
    .inst 0xd63f02c0
    .inst 0x9100077b
    .inst 0x0a1c001c
    .inst 0x11000b18
    .inst 0xeb1b02ff
    .inst 0x54fffdc1
    .inst 0x17ffffe1
    .inst 0x5280003c
    .inst 0x12000380
    .inst 0xa9464ff4
    .inst 0xa94557f6
    .inst 0xa9445ff8
    .inst 0xa94367fa
    .inst 0xa9426ffc
    .inst 0xa9417bfd
    .inst 0x9101c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Linvalid_parameters
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Linvalid_parameters
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lfunction
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lfunction
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03fc
    .inst 0x17fffff0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lsize_mismatch
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lsize_mismatch
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lfunction
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lfunction
    .inst 0x2a1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03fc
    .inst 0x17ffffe8
.size syna_tcm_testing_check_frame_data_0, .-syna_tcm_testing_check_frame_data_0

.section .rodata.str1.1,"a",@progbits
.align 1
.Linvalid_parameters:
    .asciz "\0013[error] %s: Invalid parameters to check frame data\n"
.Lfunction:
    .asciz "syna_tcm_testing_check_frame_data"
.Lsize_mismatch:
    .asciz "\0013[error] %s: Data size mismatched, input:%d (expected:%d)\n"
