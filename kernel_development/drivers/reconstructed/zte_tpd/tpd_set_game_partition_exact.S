.section .text,"ax",@progbits
.align 2
.global tpd_set_game_partition
.type tpd_set_game_partition, %function
.word 0x64f25fb2
tpd_set_game_partition:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_set_game_partition_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_set_game_partition_name
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_set_game_partition_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_set_game_partition_fmt
    .inst 0xaa0103e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03e0
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size tpd_set_game_partition, .-tpd_set_game_partition

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tpd_set_game_partition_fmt:
.asciz "\0016[info ] %s: %s: enter\n"
.L_tpd_set_game_partition_name:
.asciz "tpd_set_game_partition"

.section .note.GNU-stack,"",@progbits
