.section .text,"ax",@progbits
.align 2
.word 0x9293eeef
.global syna_tcm_wait_for_report
.type syna_tcm_wait_for_report, %function
syna_tcm_wait_for_report:
    .inst 0xd503233f
    .inst 0xd10183ff
    .inst 0xa9017bfd
    .inst 0xf90013f9
    .inst 0xa9035ff8
    .inst 0xa90457f6
    .inst 0xa9054ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf90007e8
    .inst 0x390013ff
    .inst 0xb4000480
    .inst 0xaa0203f3
    .inst 0xb40004a2
    .inst 0x39402402
    .inst 0xaa0003f5
    .inst 0x7100045f
    .inst 0x540004e1
    .inst 0xf94026b7
    .inst 0x2a0403f4
    .inst 0x2a0303f6
    .inst 0x394052e8
    .inst 0x7100051f
    .inst 0x54000601
    .inst 0xb40004f7
    .inst 0xf9401ee8
    .inst 0xb40005a8
    .inst 0x910142a0
    .inst 0x2a0103f8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9401ee8
    .inst 0xaa1703e0
    .inst 0x2a1f03e1
    .inst 0xb85fc110
    .inst 0x728c3631
    .inst 0x72a685d1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x2a0003f7
    .inst 0x910142a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x710006ff
    .inst 0x2a1803e1
    .inst 0x1a9fa7f9
    .inst 0x1400001a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2055
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2055
    .inst 0x14000003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9297
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9297
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4e7e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4e7e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000006
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2831
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2831
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4e7e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4e7e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x1400003f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaf20
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaf20
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6a5a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6a5a
    .inst 0x2a0103f7
    .inst 0xaa0803e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1703e1
    .inst 0x52800039
    .inst 0x12001c37
    .inst 0x2a1603f8
    .inst 0x710006df
    .inst 0x540000aa
    .inst 0x14000006
    .inst 0x0b160318
    .inst 0x710006df
    .inst 0x5400006b
    .inst 0x2a1603e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x910013e1
    .inst 0xaa1503e0
    .inst 0xaa1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_event_data
    .inst 0x37f800c0
    .inst 0x394013e8
    .inst 0x6b17011f
    .inst 0x54000061
    .inst 0xb9400e68
    .inst 0x35000068
    .inst 0x6b14031f
    .inst 0x54fffe03
    .inst 0xf94026b6
    .inst 0x394052c8
    .inst 0x2a280328
    .inst 0x37000288
    .inst 0xb4000516
    .inst 0xf9401ec8
    .inst 0xb4000228
    .inst 0x2a0003f9
    .inst 0x910142a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9401ec8
    .inst 0xaa1603e0
    .inst 0x52800021
    .inst 0xb85fc110
    .inst 0x728c3631
    .inst 0x72a685d1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x910142a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x2a1903e0
    .inst 0x6b14031f
    .inst 0x540000e3
    .inst 0x394013e8
    .inst 0x6b17011f
    .inst 0x54000061
    .inst 0xb9400e68
    .inst 0x35000048
    .inst 0x12801e60
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000281
    .inst 0xa9454ff4
    .inst 0xf94013f9
    .inst 0xa94457f6
    .inst 0xa9435ff8
    .inst 0xa9417bfd
    .inst 0x910183ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6a5a
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6a5a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaf20
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaf20
    .inst 0x2a0003f5
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1503e0
    .inst 0x6b14031f
    .inst 0x54fffc82
    .inst 0x17ffffe9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_tcm_wait_for_report, .-syna_tcm_wait_for_report

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
