.section .text,"ax",@progbits
.align 2
.global tpd_clean_all_event
.type tpd_clean_all_event, %function
    .word 0xe5c47d60
tpd_clean_all_event:
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, point_report_info+0x50
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, point_report_info+0x50
    .inst 0x91045d09
    .inst 0xf900891f
    .inst 0xb900013f
    .inst 0x91067d09
    .inst 0xf900cd1f
    .inst 0xb900013f
    .inst 0x91089d09
    .inst 0xb900013f
    .inst 0x910abd09
    .inst 0xb900013f
    .inst 0x910cdd09
    .inst 0xf901991f
    .inst 0xb900013f
    .inst 0x910efd09
    .inst 0xb9000d1f
    .inst 0xb900951f
    .inst 0xb9011d1f
    .inst 0xb901a51f
    .inst 0xb9022d1f
    .inst 0xb902b51f
    .inst 0xb9033d1f
    .inst 0xb903c51f
    .inst 0xb9044d1f
    .inst 0xb904d51f
    .inst 0xf900011f
    .inst 0xb800711f
    .inst 0xf900451f
    .inst 0xb808f11f
    .inst 0xf901111f
    .inst 0xf901551f
    .inst 0xf901dd1f
    .inst 0xb900013f
    .inst 0x91111d09
    .inst 0xf902211f
    .inst 0xf902651f
    .inst 0x91133d08
    .inst 0xb900013f
    .inst 0xb900011f
    .inst 0xd65f03c0
.size tpd_clean_all_event, .-tpd_clean_all_event
