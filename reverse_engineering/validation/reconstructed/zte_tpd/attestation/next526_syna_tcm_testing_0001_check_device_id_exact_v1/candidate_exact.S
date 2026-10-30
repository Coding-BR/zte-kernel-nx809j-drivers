.section .text,"ax",@progbits
.align 2
.global syna_tcm_testing_0001_check_device_id
.type syna_tcm_testing_0001_check_device_id, %function
syna_tcm_testing_0001_check_device_id:
    .inst 0xd503233f
    .inst 0xa9bc7bfd
    .inst 0xa9015ff8
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910003fd
    .inst 0xaa0003f4
    .inst 0x2a1f03e0
    .inst 0xb40002d4
    .inst 0xaa0103f3
    .inst 0xb4000281
    .inst 0x52800208
    .inst 0x6b020116
    .inst 0x540002e4
    .inst 0x39400278
    .inst 0x2a1f03f7
    .inst 0x2a0203f5
    .inst 0x14000004
    .inst 0x110006f7
    .inst 0x6b1602ff
    .inst 0x5400020c
    .inst 0x8b37c280
    .inst 0x39400008
    .inst 0x6b18011f
    .inst 0x54ffff41
    .inst 0xaa1303e1
    .inst 0xaa1503e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, strncmp
    .inst 0x35fffec0
    .inst 0x52800020
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9415ff8
    .inst 0xa8c47bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lerror_format
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lerror_format
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lfunction_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lfunction_name
    .inst 0xaa1403e2
    .inst 0xaa1303e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03e0
    .inst 0x17fffff2
.size syna_tcm_testing_0001_check_device_id, .-syna_tcm_testing_0001_check_device_id

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.Lerror_format:
    .asciz "\0013[error] %s: Device ID mismatched, FW: %s (limit: %s)\n"
.Lfunction_name:
    .asciz "syna_tcm_testing_0001_check_device_id"
