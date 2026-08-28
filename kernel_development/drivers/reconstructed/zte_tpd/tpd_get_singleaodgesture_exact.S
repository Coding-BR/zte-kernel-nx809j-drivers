.section .text,"ax",@progbits
.align 2
.global tpd_get_singleaodgesture
.type tpd_get_singleaodgesture, %function
tpd_get_singleaodgesture:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xa9014ff4
    .inst 0x910003fd
    .inst 0xf946dc08
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_get_singleaodgesture_name
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_get_singleaodgesture_name
    .inst 0xaa0003f3
    .inst 0xaa1403e1
    .inst 0xb945b502
    .inst 0xb9045002
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_get_singleaodgesture_fmt_tcm
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_get_singleaodgesture_fmt_tcm
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9445262
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpd_get_singleaodgesture_fmt_cdev
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpd_get_singleaodgesture_fmt_cdev
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03e0
    .inst 0xa9414ff4
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size tpd_get_singleaodgesture, .-tpd_get_singleaodgesture

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_tpd_get_singleaodgesture_name:
    .asciz "tpd_get_singleaodgesture"
.L_tpd_get_singleaodgesture_fmt_tcm:
    .asciz "\0016[info ] %s: enter!, tcm->ztec.is_single_aod=%d"
.L_tpd_get_singleaodgesture_fmt_cdev:
    .asciz "\0016[info ] %s: enter!, cdev->b_single_aod_enable=%d"
.section .note.GNU-stack,"",@progbits
