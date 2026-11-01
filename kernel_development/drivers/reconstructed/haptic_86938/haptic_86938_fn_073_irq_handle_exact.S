.section .text,"ax",@progbits
.align 2
.global irq_handle
.type irq_handle, %function
    .word 0xd2f00be1
irq_handle:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0xaa0103f3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb54
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb54
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaf0
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaf0
    .inst 0x5280cca2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb946be74
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0xf9400d08
    .inst 0xb85fc110
    .inst 0x729e3e11
    .inst 0x72aa2591
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x7100069f
    .inst 0x54000361
    .inst 0x34000d40
    .inst 0xf9431268
    .inst 0x39400108
    .inst 0x7103fd1f
    .inst 0x54001a41
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1691
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1691
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaf0
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaf0
    .inst 0x5280cea2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0x2a1f03e1
    .inst 0xf9408908
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xb906be7f
    .inst 0x140000bd
    .inst 0x350015c0
    .inst 0x39401668
    .inst 0x7100051f
    .inst 0x54000de1
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0xf940b908
    .inst 0xb85fc110
    .inst 0x72870a91
    .inst 0x72af0971
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x72001c1f
    .inst 0x540013e1
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw_rtp
    .inst 0x39405e68
    .inst 0x7100091f
    .inst 0x54001361
    .inst 0x910dc260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xb9407668
    .inst 0x34000c88
    .inst 0xf94002a9
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw_rtp
    .inst 0xb4000d49
    .inst 0xb9445a6a
    .inst 0xb940012b
    .inst 0xaa1303e0
    .inst 0xf942e66c
    .inst 0x53027d4a
    .inst 0x4b08016b
    .inst 0x8b080128
    .inst 0xf940698c
    .inst 0x91001101
    .inst 0x6b0a017f
    .inst 0x1a8a3174
    .inst 0x2a1403e2
    .inst 0xb85fc190
    .inst 0x72965371
    .inst 0x72b8d4f1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304580
    .inst 0xd63f0180
    .inst 0xb9407668
    .inst 0xf942e669
    .inst 0xaa1303e0
    .inst 0x0b140108
    .inst 0xb9007668
    .inst 0xf940b128
    .inst 0xb85fc110
    .inst 0x72870a91
    .inst 0x72af0971
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf94002a9
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw_rtp
    .inst 0xb9407668
    .inst 0xb9400129
    .inst 0x6b09011f
    .inst 0x540009c0
    .inst 0x12000c0a
    .inst 0x3400098a
    .inst 0x910dc260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0xf940b908
    .inst 0xb85fc110
    .inst 0x72870a91
    .inst 0x72af0971
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x72001c1f
    .inst 0x54fff860
    .inst 0x1400005f
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaf0
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaf0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2948
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2948
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x5280cd42
    .inst 0xaa0303e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9445a68
    .inst 0x53017d01
    .inst 0xaa1303e0
    .inst 0x94000066
    .reloc .-4, R_AARCH64_CALL26, richtap_update_fifo_data
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0xf940c108
    .inst 0xb85fc110
    .inst 0x72870a91
    .inst 0x72af0971
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x72001c1f
    .inst 0x54ffefe1
    .inst 0xb946be68
    .inst 0x34ffefa8
    .inst 0xf9431268
    .inst 0x39400108
    .inst 0x7101551f
    .inst 0x54ffef21
    .inst 0xb9445a68
    .inst 0x53027d01
    .inst 0x17ffffea
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2730
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2730
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaf0
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaf0
    .inst 0x5280d6a2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000034
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x16bf
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x16bf
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaf0
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaf0
    .inst 0x5280d082
    .inst 0x14000008
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1cf7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1cf7
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaf0
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaf0
    .inst 0x5280d1a2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000021
    .inst 0x6b09011f
    .inst 0x54000121
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2c61
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2c61
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaf0
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaf0
    .inst 0x5280d502
    .inst 0x14000008
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1ff1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1ff1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xaf0
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xaf0
    .inst 0x5280d4a2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf942e668
    .inst 0x3900767f
    .inst 0xaa1303e0
    .inst 0x2a1f03e1
    .inst 0xf9408908
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xb900767f
    .inst 0x3900167f
    .inst 0x910dc260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x39405e68
    .inst 0x7100091f
    .inst 0x54000180
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0x2a1f03e1
    .inst 0xf9408908
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x52800020
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size irq_handle, .-irq_handle

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "haptic_86938_probe_rodata.inc"
