.section .text,"ax",@progbits
.align 2
.global ufp_mac_exit
.type ufp_mac_exit, %function
    .word 0xe5c47d60
ufp_mac_exit:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_tp_ops
    .inst 0x91000273
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, ufp_tp_ops
    .inst 0x91004260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, cancel_delayed_work_sync
    .inst 0xf9403e60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __flush_workqueue
    .inst 0xf9403e60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, destroy_workqueue
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tp_wakeup
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tp_wakeup
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, wakeup_source_remove
    .inst 0xf900027f
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size ufp_mac_exit, .-ufp_mac_exit
.section .note.GNU-stack,"",@progbits
