.section .text,"ax",@progbits
.align 2
.extern syna_get_charger_status_batt_psy
.extern syna_work_charger_detect_work_status
.global syna_work_charger_detect_work
.type syna_work_charger_detect_work, %function
    .word 0xa607748c
syna_work_charger_detect_work:
    .inst 0xd503233f
    .inst 0xd10143ff
    .inst 0xa9017bfd
    .inst 0xa9025ff8
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf1188013
    .inst 0xf90007e8
    .inst 0x540001a1
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000ca1
    .inst 0xa9444ff4
    .inst 0xa94357f6
    .inst 0xa9425ff8
    .inst 0xa9417bfd
    .inst 0x910143ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xd10ec008
    .inst 0xf9400109
    .inst 0xf9400268
    .inst 0xb940b92a
    .inst 0x340000ca
    .inst 0x3942f129
    .inst 0x36000089
    .inst 0xaa0003f7
    .inst 0x2a1f03f4
    .inst 0x14000003
    .inst 0xb9420d14
    .inst 0xaa0003f7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3d2e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3d2e
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3677
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3677
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_get_charger_status.batt_psy
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_work_charger_detect_work.status
    .inst 0xf90003ff
    .inst 0xf94002a0
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_get_charger_status.batt_psy
    .inst 0xb50001e0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb781
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb781
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, power_supply_get_by_name
    .inst 0xf90002a0
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, syna_get_charger_status.batt_psy
    .inst 0xb5000140
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x944d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x944d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x843c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x843c
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_usb_detect_flag
    .inst 0x3900011f
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, syna_usb_detect_flag
    .inst 0x14000024
    .inst 0xf9400008
    .inst 0x910003e2
    .inst 0x2a1f03e1
    .inst 0xf9401508
    .inst 0xb85fc110
    .inst 0x72819a71
    .inst 0x72bd1331
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xb94003f8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x944d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x944d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x843c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x843c
    .inst 0x7100131f
    .inst 0x1a9f17e8
    .inst 0x7100071f
    .inst 0x1a9f1515
    .inst 0x2a1503e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x7100131f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_usb_detect_flag
    .inst 0x39000115
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, syna_usb_detect_flag
    .inst 0x54000060
    .inst 0x7100071f
    .inst 0x54000101
    .inst 0xb855c2e8
    .inst 0x394002c9
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, syna_work_charger_detect_work.status
    .inst 0x7100051f
    .inst 0x54000201
    .inst 0x370001e9
    .inst 0x52800035
    .inst 0x14000007
    .inst 0xb855c2e8
    .inst 0x394002c9
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, syna_work_charger_detect_work.status
    .inst 0x7100051f
    .inst 0x540001c1
    .inst 0x360001a9
    .inst 0x2a1f03f5
    .inst 0xaa1303e0
    .inst 0x2a1503e1
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_dev_set_charger_mode
    .inst 0x390002d5
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, syna_work_charger_detect_work.status
    .inst 0x17ffffa2
    .inst 0x7100051f
    .inst 0x1a9f1528
    .inst 0x3707f3e8
    .inst 0x52800035
    .inst 0x17fffffa
    .inst 0x7100051f
    .inst 0x1a8903e8
    .inst 0x3607f348
    .inst 0x2a1f03f5
    .inst 0x17fffff5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_work_charger_detect_work, .-syna_work_charger_detect_work

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "syna_work_charger_detect_work_exact.inc"
