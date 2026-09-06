.section .text,"ax",@progbits
.align 2
.global ufp_notifier_cb
.type ufp_notifier_cb, %function
    .word 0xcdde824b
ufp_notifier_cb:
    .inst 0xd503233f
    .inst 0xa9bf7bfd
    .inst 0x910003fd
    .inst 0x7100001f
    .inst 0x1a9f07e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, change_tp_state
    .inst 0x2a1f03e0
    .inst 0xa8c17bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size ufp_notifier_cb, .-ufp_notifier_cb
