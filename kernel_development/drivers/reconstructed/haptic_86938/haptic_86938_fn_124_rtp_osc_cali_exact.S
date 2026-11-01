.section .text,"ax",@progbits
.align 2
.global rtp_osc_cali
.type rtp_osc_cali, %function
rtp_osc_cali:
    .inst 0xd503233f
    .inst 0xd10143ff
    .inst 0xa9017bfd
    .inst 0xf90013f7
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xaa0003f3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw_rtp_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw_rtp_name
    .inst 0xf9438908
    .inst 0xf90007e8
    .inst 0x52800028
    .inst 0xf9419002
    .inst 0xb900741f
    .inst 0xb9009408
    .inst 0x910003e0
    .inst 0xf90003ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, request_firmware
    .inst 0x36f80160
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xebe
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xebe
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1b62
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1b62
    .inst 0x90000004
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw_rtp_name
    .inst 0x91000084
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw_rtp_name
    .inst 0x52805f22
    .inst 0x140000f1
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
    .inst 0x910dc260
    .inst 0x3900167f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw_rtp
    .inst 0xf94002a0
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw_rtp
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vfree
    .inst 0xd503201f
    .inst 0xf94003e8
    .inst 0xf9400108
    .inst 0x91001114
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vmalloc_noprof
    .inst 0xf94003e8
    .inst 0xf90002a0
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw_rtp
    .inst 0xb50001c0
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, release_firmware
    .inst 0x910dc260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x16f2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x16f2
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1b62
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1b62
    .inst 0x528060a2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x140000cc
    .inst 0xf100129f
    .inst 0x54001ac3
    .inst 0xb9400105
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1b62
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1b62
    .inst 0x90000004
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw_rtp_name
    .inst 0x91000084
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw_rtp_name
    .inst 0xb9000005
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2547
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2547
    .inst 0xf9400108
    .inst 0xaa1403e1
    .inst 0x52806142
    .inst 0xb9007a68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf94003e8
    .inst 0xf94002a9
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw_rtp
    .inst 0xa9400502
    .inst 0x91001120
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0xf94003e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, release_firmware
    .inst 0x910dc260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xf942e668
    .inst 0xb9403661
    .inst 0xaa1303e0
    .inst 0xf9404508
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xe12
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xe12
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x18ff
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x18ff
    .inst 0xaa1403e1
    .inst 0x52805322
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
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
    .inst 0x2a1f03e1
    .inst 0xf9409508
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xb9405260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_to_irq
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, disable_irq
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
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw_pm_qos_req_vb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw_pm_qos_req_vb
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, cpu_latency_qos_add_request
    .inst 0xd29ef9f6
    .inst 0x529a3c37
    .inst 0xf2bc6a76
    .inst 0x72a009b7
    .inst 0xf2d374b6
    .inst 0xf2e41896
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
    .inst 0x540004e1
    .inst 0x910dc260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf94002a8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw_rtp
    .inst 0xb9445a6a
    .inst 0xb9407669
    .inst 0xb940010b
    .inst 0x53027d4a
    .inst 0x6b09016c
    .inst 0x6b0a019f
    .inst 0x1a8a3194
    .inst 0x6b09017f
    .inst 0x54000320
    .inst 0xb940966a
    .inst 0x7100055f
    .inst 0x540000c1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, ktime_get
    .inst 0xf94002a8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw_rtp
    .inst 0xb9407669
    .inst 0xf9013a60
    .inst 0xb900967f
    .inst 0xf942e66a
    .inst 0x8b294108
    .inst 0xaa1303e0
    .inst 0x2a1403e2
    .inst 0xf940694a
    .inst 0x91001101
    .inst 0xb85fc150
    .inst 0x72965371
    .inst 0x72b8d4f1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304540
    .inst 0xd63f0140
    .inst 0xb9407668
    .inst 0x0b140108
    .inst 0xb9007668
    .inst 0x910dc260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xf942e668
    .inst 0xaa1303e0
    .inst 0xf940b508
    .inst 0xb85fc110
    .inst 0x72870a91
    .inst 0x72af0971
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x12001c14
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, ktime_get
    .inst 0xf9013660
    .inst 0x35000254
    .inst 0xf9413a68
    .inst 0xcb080008
    .inst 0x9b567d08
    .inst 0x9347fd09
    .inst 0x8b48fd28
    .inst 0xeb17011f
    .inst 0xf9005268
    .inst 0x54fff723
    .inst 0xb9407664
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x171b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x171b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1b62
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1b62
    .inst 0x52806802
    .inst 0x14000009
    .inst 0xb9407664
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1360
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1360
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1b62
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1b62
    .inst 0x52806702
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw_pm_qos_req_vb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw_pm_qos_req_vb
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, cpu_latency_qos_remove_request
    .inst 0xb9405260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpio_to_desc
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, gpiod_to_irq
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, enable_irq
    .inst 0xf9413668
    .inst 0xf9413a69
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1755
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1755
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0xcb090108
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1b62
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1b62
    .inst 0x9b567d08
    .inst 0x52806942
    .inst 0x9347fd09
    .inst 0x8b48fd24
    .inst 0xf9005264
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000121
    .inst 0xa9444ff4
    .inst 0xf94013f7
    .inst 0xa94357f6
    .inst 0xa9417bfd
    .inst 0x910143ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xd4200020
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0xf94003e8
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .codetag.alloc_tags+0xa0
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .codetag.alloc_tags+0xa0
    .inst 0xd5384116
    .inst 0xf9402ad7
    .inst 0xf9002ac9
    .inst 0xf9400108
    .inst 0x91001114
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vmalloc_noprof
    .inst 0xf9002ad7
    .inst 0x17ffff0c
.size rtp_osc_cali, .-rtp_osc_cali

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "haptic_86938_probe_rodata.inc"
.include "haptic_86938_exact_alloc_tags_support.inc"
