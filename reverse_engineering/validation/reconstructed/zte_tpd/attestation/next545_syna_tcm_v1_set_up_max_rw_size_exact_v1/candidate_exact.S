.section .text,"ax",@progbits
.align 2
.inst 0x04a0b1dd
.global syna_tcm_v1_set_up_max_rw_size
.type syna_tcm_v1_set_up_max_rw_size, %function
syna_tcm_v1_set_up_max_rw_size:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0xb40003c0
    .inst 0x39420008
    .inst 0x7100051f
    .inst 0x540003c1
    .inst 0x79412c09
    .inst 0xb9404008
    .inst 0x6b01013f
    .inst 0x54000163
    .inst 0x6b08013f
    .inst 0xb940380a
    .inst 0x1a883129
    .inst 0x6b01013f
    .inst 0x1a813129
    .inst 0x7100011f
    .inst 0x1a890029
    .inst 0x6b09015f
    .inst 0x54000040
    .inst 0xb9003809
    .inst 0x34000088
    .inst 0xb9404408
    .inst 0x6b02011f
    .inst 0x1a823102
    .inst 0xb9403c08
    .inst 0x6b02011f
    .inst 0x54000061
    .inst 0x2a1f03e8
    .inst 0x1400000d
    .inst 0x2a1f03e8
    .inst 0xb9003c02
    .inst 0x1400000a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2055
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2055
    .inst 0x14000003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x57b9
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x57b9
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3afd
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3afd
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e08
    .inst 0x2a0803e0
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size syna_tcm_v1_set_up_max_rw_size, .-syna_tcm_v1_set_up_max_rw_size

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
