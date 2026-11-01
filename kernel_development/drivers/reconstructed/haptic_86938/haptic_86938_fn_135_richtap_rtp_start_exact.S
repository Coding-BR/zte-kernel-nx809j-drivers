.section .text,"ax",@progbits
.align 2
.global richtap_rtp_start
.type richtap_rtp_start, %function
richtap_rtp_start:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0xaa0003f3
    .inst 0x910bc000
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0x52800041
    .inst 0xf9404d08
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0xf9403108
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x5280fa00
    .inst 0x5280fa01
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x128018f5
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0xf940b108
    .inst 0xb85fc110
    .inst 0x72870a91
    .inst 0x72af0971
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x12000c14
    .inst 0x7100229f
    .inst 0x54000340
    .inst 0x5280fa00
    .inst 0x52813881
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x310006b5
    .inst 0x54fffdc3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_richtap_str_13ff
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_richtap_str_13ff
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_richtap_str_0000
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_richtap_str_0000
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_richtap_str_0f9b
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_richtap_str_0f9b
    .inst 0x5280a122
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0xf9401d08
    .inst 0xb85fc110
    .inst 0x72810611
    .inst 0x72b08f51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x1400000d
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_richtap_str_27a1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_richtap_str_27a1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_richtap_str_0000
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_richtap_str_0000
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, haptic_86938_richtap_str_0f9b
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, haptic_86938_richtap_str_0f9b
    .inst 0x52809fa2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x5280fa00
    .inst 0x52813881
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x7100229f
    .inst 0x910bc260
    .inst 0x1a9f17f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x2a1403e0
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size richtap_rtp_start, .-richtap_rtp_start
