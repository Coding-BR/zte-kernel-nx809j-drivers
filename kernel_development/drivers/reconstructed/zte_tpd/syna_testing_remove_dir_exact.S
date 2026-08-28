.section .text,"ax",@progbits
.align 2
.global syna_testing_remove_dir
.type syna_testing_remove_dir, %function
.word 0x3175607e
syna_testing_remove_dir:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0xaa0003f3
    .inst 0xf941d400
    .inst 0xb40000c0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .data+0xb38
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .data+0xb38
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, sysfs_remove_group
    .inst 0xf941d660
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kobject_put
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size syna_testing_remove_dir, .-syna_testing_remove_dir
