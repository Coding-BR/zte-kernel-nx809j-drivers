.section .text,"ax",@progbits
.align 2
.global syna_pm_resume
.type syna_pm_resume, %function
    .word 0x2a703c0b
syna_pm_resume:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0xf9404c13
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_pm_resume_fmt
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_pm_resume_fmt
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_pm_resume_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_pm_resume_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x91156260
    .inst 0x3915e27f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, complete
    .inst 0x2a1f03e0
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size syna_pm_resume, .-syna_pm_resume

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_syna_pm_resume_fmt:
    .asciz "\0016[info ] %s: system resumes from pm_suspend"
.L_syna_pm_resume_name:
    .asciz "syna_pm_resume"
.section .note.GNU-stack,"",@progbits
