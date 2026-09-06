.section .text,"ax",@progbits
.align 2
.globl get_tp_noise_store
.type get_tp_noise_store, %function
.inst 0xc3d43b4d
get_tp_noise_store:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xaa0203f3
    .inst 0xf9400114
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x91318280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9462e80
    .inst 0xb4000140
    .inst 0xf9400408
    .inst 0xb40000c8
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vfree
    .inst 0xf9462e88
    .inst 0xf900051f
    .inst 0xf9462e80
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xf9062e9f
    .inst 0x91318280
    .inst 0xb9044a9f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xaa1303e0
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size get_tp_noise_store, .-get_tp_noise_store

.section .note.GNU-stack,"",@progbits
