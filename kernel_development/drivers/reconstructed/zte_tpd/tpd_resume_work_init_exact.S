.section .text,"ax",@progbits
.align 2
.global tpd_resume_work_init
.type tpd_resume_work_init, %function
    .word 0xe5c47d60
tpd_resume_work_init:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb32
    .inst 0xf9400113
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1296
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1296
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb26b7be8
    .inst 0x91272269
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, delayed_work_timer_fn
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, delayed_work_timer_fn
    .inst 0xf904e268
    .inst 0x91280260
    .inst 0xf904e669
    .inst 0x52a00402
    .inst 0xaa1f03e3
    .inst 0xf904ea69
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_resume_work
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_resume_work
    .inst 0xf904ee69
    .inst 0x9126a269
    .inst 0xaa1f03e4
    .inst 0xf904d268
    .inst 0xf904d669
    .inst 0xf904da69
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_suspend_work
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_suspend_work
    .inst 0xf904f268
    .inst 0x9127a268
    .inst 0xf904de69
    .inst 0xf904f668
    .inst 0xf904fa68
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, ufp_report_lcd_state_work
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, ufp_report_lcd_state_work
    .inst 0xf904fe68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, init_timer_key
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size tpd_resume_work_init, .-tpd_resume_work_init

.section .rodata.str1.1,"aMS",@progbits,1
.align 0
    .space 0xb32
    .asciz "\0015tpd: %s enter"
    .space 0x754
    .asciz "tpd_resume_work_init"
