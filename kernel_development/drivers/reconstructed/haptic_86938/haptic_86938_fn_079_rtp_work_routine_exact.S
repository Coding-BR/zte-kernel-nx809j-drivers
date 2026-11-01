.section .text,"ax",@progbits
.align 2
.global rtp_work_routine
.type rtp_work_routine, %function
    .word 0xa607748c
rtp_work_routine:
    .inst 0xd503233f
    .inst 0xd101c3ff
    .inst 0xa9017bfd
    .inst 0xa9026ffc
    .inst 0xa90367fa
    .inst 0xa9045ff8
    .inst 0xa90557f6
    .inst 0xa9064ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xd100c013
    .inst 0xaa0003f4
    .inst 0xf9438908
    .inst 0xaa1303e0
    .inst 0xf90007e8
    .inst 0xf90003ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xd10c4299
    .inst 0xd10e0e97
    .inst 0x52800029
    .inst 0xb9400328
    .inst 0x390002e9
    .inst 0x7100191f
    .inst 0x54002de2
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw_rtp_name
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw_rtp_name
    .inst 0xf8580282
    .inst 0x8b081ac1
    .inst 0x910003e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, request_firmware
    .inst 0x36f801e0
    .inst 0xb9400328
    .inst 0x7100151f
    .inst 0x54002ca8
    .inst 0x8b081ac4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xebe
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xebe
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x11e8
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x11e8
    .inst 0x52808da2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x1400014a
    .inst 0xd10e6e9a
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw_rtp
    .inst 0x3900035f
    .inst 0xf9400300
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw_rtp
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vfree
    .inst 0xd503201f
    .inst 0xf94003e8
    .inst 0xf9400108
    .inst 0x91001115
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vmalloc_noprof
    .inst 0xf94003e8
    .inst 0xf9000300
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw_rtp
    .inst 0xb50001a0
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, release_firmware
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x16f2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x16f2
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x11e8
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x11e8
    .inst 0x52808ee2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x14000130
    .inst 0xf10012bf
    .inst 0x540027e3
    .inst 0xb9400329
    .inst 0xb9400105
    .inst 0x7100153f
    .inst 0xb9000005
    .inst 0x54002728
    .inst 0x8b091ac4
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2547
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2547
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x11e8
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x11e8
    .inst 0xaa1603e1
    .inst 0x52808fc2
    .inst 0xd10e8295
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf94003e8
    .inst 0xf9400309
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw_rtp
    .inst 0xa9400502
    .inst 0x91001120
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xf94003e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, release_firmware
    .inst 0xd102c280
    .inst 0xaa0003f9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x52800028
    .inst 0xf9411689
    .inst 0xaa1503e0
    .inst 0x39000348
    .inst 0x52800041
    .inst 0xf9408d28
    .inst 0xb85fc110
    .inst 0x728dd2b1
    .inst 0x72ba6f71
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf9411688
    .inst 0xaa1503e0
    .inst 0x2a1f03e1
    .inst 0xf9408908
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf9411688
    .inst 0xaa1503e0
    .inst 0xf9407908
    .inst 0xb85fc110
    .inst 0x72810611
    .inst 0x72b08f51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf9411688
    .inst 0xaa1503e0
    .inst 0xf9401d08
    .inst 0xb85fc110
    .inst 0x72810611
    .inst 0x72b08f51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf9411688
    .inst 0xd10db289
    .inst 0xaa1503e0
    .inst 0xb9400121
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
    .inst 0xaa1603e1
    .inst 0x52805322
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x3943e281
    .inst 0xf9411688
    .inst 0x39430689
    .inst 0x5100042a
    .inst 0xf9405108
    .inst 0x6b2a013f
    .inst 0x54000068
    .inst 0xd10dc289
    .inst 0xb9400121
    .inst 0xaa1503e0
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf9411688
    .inst 0xaa1503e0
    .inst 0x52800041
    .inst 0xf9404d08
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf9411688
    .inst 0xaa1503e0
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
    .inst 0x52813881
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x128018f6
    .inst 0xf9411688
    .inst 0xaa1503e0
    .inst 0xf940b108
    .inst 0xb85fc110
    .inst 0x72870a91
    .inst 0x72af0971
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x12000c08
    .inst 0x7100211f
    .inst 0x54000340
    .inst 0x5280fa00
    .inst 0x52813881
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x310006d6
    .inst 0x54fffdc3
    .inst 0xf9411688
    .inst 0xaa1503e0
    .inst 0xf9401d08
    .inst 0xb85fc110
    .inst 0x72810611
    .inst 0x72b08f51
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x13cf
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x13cf
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x11e8
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x11e8
    .inst 0x52809502
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000080
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xf73
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xf73
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x11e8
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x11e8
    .inst 0x52809382
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x5280fa00
    .inst 0x52813881
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw_pm_qos_req_vb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw_pm_qos_req_vb
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, cpu_latency_qos_add_request
    .inst 0xd10cb29b
    .inst 0xaa1303e0
    .inst 0xb900037f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xd10e269a
    .inst 0xf9411688
    .inst 0xaa1503e0
    .inst 0xf940b908
    .inst 0xb85fc110
    .inst 0x72870a91
    .inst 0x72af0971
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x72001c1f
    .inst 0x54000981
    .inst 0x39400348
    .inst 0x7100091f
    .inst 0x54000ae1
    .inst 0xf9400308
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw_rtp
    .inst 0xb40006a8
    .inst 0xb940ba89
    .inst 0xb940036a
    .inst 0xaa1503e0
    .inst 0xb940010b
    .inst 0xf941168d
    .inst 0x53027d2c
    .inst 0x6b09015f
    .inst 0x8b0a0108
    .inst 0x4b0a016b
    .inst 0x91001101
    .inst 0x1a8c3129
    .inst 0xf94069ac
    .inst 0x6b09017f
    .inst 0x1a893176
    .inst 0x2a1603e2
    .inst 0xb85fc190
    .inst 0x72965371
    .inst 0x72b8d4f1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304580
    .inst 0xd63f0180
    .inst 0xb9400368
    .inst 0xf9411689
    .inst 0xaa1503e0
    .inst 0x0b160108
    .inst 0xb9000368
    .inst 0xf940b128
    .inst 0xb85fc110
    .inst 0x72870a91
    .inst 0x72af0971
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf9400309
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, aw_rtp
    .inst 0xb9400368
    .inst 0xb9400129
    .inst 0x6b09011f
    .inst 0x54000060
    .inst 0x12000c0a
    .inst 0x35fff8ca
    .inst 0x6b09011f
    .inst 0x54000241
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2c61
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2c61
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x11f9
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x11f9
    .inst 0x528089a2
    .inst 0x14000011
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1cf7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1cf7
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x11f9
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x11f9
    .inst 0x52808462
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x1400000a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1ff1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1ff1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x11f9
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x11f9
    .inst 0x52808962
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb900037f
    .inst 0x39400348
    .inst 0x7100091f
    .inst 0x54000181
    .inst 0xf9411688
    .inst 0xaa1503e0
    .inst 0x52800021
    .inst 0xf9408908
    .inst 0xb85fc110
    .inst 0x729bedd1
    .inst 0x72a3a151
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw_pm_qos_req_vb
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw_pm_qos_req_vb
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, cpu_latency_qos_remove_request
    .inst 0xaa1903e0
    .inst 0x390002ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000181
    .inst 0xa9464ff4
    .inst 0xa94557f6
    .inst 0xa9445ff8
    .inst 0xa94367fa
    .inst 0xa9426ffc
    .inst 0xa9417bfd
    .inst 0x9101c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xd42aa240
    .inst 0xd4200020
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0xf94003e8
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .codetag.alloc_tags+0x140
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .codetag.alloc_tags+0x140
    .inst 0xd538411b
    .inst 0xf9402b7c
    .inst 0xf9002b69
    .inst 0xf9400108
    .inst 0x91001115
    .inst 0xaa1503e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vmalloc_noprof
    .inst 0xf9002b7c
    .inst 0x17fffea4
.size rtp_work_routine, .-rtp_work_routine

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "haptic_86938_probe_rodata.inc"

.include "haptic_86938_exact_alloc_tags_support.inc"
