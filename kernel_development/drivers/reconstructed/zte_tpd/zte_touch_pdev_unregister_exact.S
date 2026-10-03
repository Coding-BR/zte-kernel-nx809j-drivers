.section .text,"ax",@progbits
.align 2
.global zte_touch_pdev_unregister
.type zte_touch_pdev_unregister, %function
    .word 0xe5c47d60
zte_touch_pdev_unregister:
    .inst 0xd503233f
    .inst 0xa9be7bfd
    .inst 0xf9000bf3
    .inst 0x910003fd
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9400113
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xf946ea68
    .inst 0xb50001a8
    .inst 0x52806708
    .inst 0x52800200
    .inst 0xf9400108
    .inst 0xb85fc110
    .inst 0x72971911
    .inst 0x72ad9031
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf946ea60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, platform_device_unregister
    .inst 0xf9400bf3
    .inst 0xa8c27bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size zte_touch_pdev_unregister, .-zte_touch_pdev_unregister
.section .note.GNU-stack,"",@progbits
