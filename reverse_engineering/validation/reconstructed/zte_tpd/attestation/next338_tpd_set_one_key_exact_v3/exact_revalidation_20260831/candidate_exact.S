.section .text,"ax",@progbits
.align 2
.global tpd_set_one_key
.type tpd_set_one_key, %function
.word 0x6af8b499
tpd_set_one_key:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0xaa0003f3
    .inst 0xf946dc15
    .inst 0x2a0103f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_set_one_key_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_set_one_key_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_set_one_key_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_set_one_key_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb40000b5
    .inst 0x2a1f03e0
    .inst 0xb905d6b4
    .inst 0xb9045a74
    .inst 0x14000002
    .inst 0x128002a0
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size tpd_set_one_key, .-tpd_set_one_key

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tpd_set_one_key_fmt:
    .asciz "\0016[info ] %s: enter\n"
.L_tpd_set_one_key_name:
    .asciz "tpd_set_one_key"
.section .note.GNU-stack,"",@progbits
