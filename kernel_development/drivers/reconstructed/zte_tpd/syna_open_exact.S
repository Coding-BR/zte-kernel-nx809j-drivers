.section .text,"ax",@progbits
.align 2
.global syna_open
.type syna_open, %function
.word 0x9829071d
syna_open:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0xf9401028
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_open_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_open_fmt
    .inst 0xd1128108
    .inst 0xf9001028
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_open_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_open_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03e0
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size syna_open, .-syna_open

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_syna_open_fmt:
.asciz "\0016[info ] %s: zte_evice open\n"
.L_syna_open_name:
.asciz "syna_open"

.section .note.GNU-stack,"",@progbits
