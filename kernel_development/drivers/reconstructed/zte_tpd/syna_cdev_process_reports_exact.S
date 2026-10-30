.section .text,"ax",@progbits
.align 2
.inst 0x9f93c40a
.global syna_cdev_process_reports
.type syna_cdev_process_reports, %function
syna_cdev_process_reports:
    .inst 0xd503233f
    .inst 0xd101c3ff
    .inst 0xa9017bfd
    .inst 0xa9026ffc
    .inst 0xa90367fa
    .inst 0xa9045ff8
    .inst 0xa90557f6
    .inst 0xa9064ff4
    .inst 0x910043fd
    .inst 0xb81fc3a0
    .inst 0xb4001a03
    .inst 0x2a0203f3
    .inst 0xaa0103fa
    .inst 0xb4001a81
    .inst 0x9000001c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0xb4
    .inst 0xf9400076
    .inst 0x11000e74
    .inst 0xb9400388
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb4
    .inst 0xaa0303f7
    .inst 0x0aa87d19
    .inst 0x0b140338
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4001a40
    .inst 0x7100071f
    .inst 0x54001a6b
    .inst 0xaa1803e1
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xb4001a80
    .inst 0xb940039b
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb4
    .inst 0xaa0003f5
    .inst 0x7100077f
    .inst 0x5400020b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4001ac0
    .inst 0xaa1b03e1
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf90003e0
    .inst 0xb5000160
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5001ac0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x140000d2
    .inst 0xaa1f03fb
    .inst 0xf90003ff
    .inst 0xb85fc3a8
    .inst 0x7100071f
    .inst 0x390002a8
    .inst 0x54002480
    .inst 0x71000b1f
    .inst 0x390006b3
    .inst 0x54002420
    .inst 0x53087e68
    .inst 0x39000aa8
    .inst 0x34000193
    .inst 0xb1000ea0
    .inst 0x54001c80
    .inst 0x0b130323
    .inst 0x6b13007f
    .inst 0x54001b43
    .inst 0x2a1303e2
    .inst 0xd1000f01
    .inst 0xeb02003f
    .inst 0x540022c3
    .inst 0xaa1a03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0xb9400388
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb4
    .inst 0x7100091f
    .inst 0x5400042b
    .inst 0xb40021fb
    .inst 0x794706c8
    .inst 0xf94003fa
    .inst 0xf100077f
    .inst 0x39000348
    .inst 0x54002140
    .inst 0x53087d08
    .inst 0x39000748
    .inst 0x529fffc8
    .inst 0xb9400382
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb4
    .inst 0x0b080048
    .inst 0x72003d1f
    .inst 0x540000c0
    .inst 0xf1000b7f
    .inst 0x54002020
    .inst 0x394e16c8
    .inst 0x39000b48
    .inst 0xb9400382
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb4
    .inst 0x93407e88
    .inst 0xab0802a0
    .inst 0x54001c80
    .inst 0xb4001c7a
    .inst 0x6b19005f
    .inst 0x54001b48
    .inst 0xcb080308
    .inst 0x6b18029f
    .inst 0x2a0203e2
    .inst 0x9a8883e1
    .inst 0xeb02003f
    .inst 0x54001e63
    .inst 0xaa1a03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0xf9413afa
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x80
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0x80
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xb944f2e8
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_cdev_push_data_to_fifo.pre_remaining_frames
    .inst 0xb9400289
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_cdev_push_data_to_fifo.pre_remaining_frames
    .inst 0x7112c11f
    .inst 0x54000383
    .inst 0x6b09011f
    .inst 0x54001721
    .inst 0xf9427ef9
    .inst 0xf9400728
    .inst 0xf9400109
    .inst 0xeb19013f
    .inst 0x54001621
    .inst 0xf9400329
    .inst 0xf940052a
    .inst 0xeb19015f
    .inst 0x540015a1
    .inst 0xf9000528
    .inst 0xf9000109
    .inst 0xd2802008
    .inst 0x52800449
    .inst 0xf9400b20
    .inst 0xf2fbd5a8
    .inst 0xaa090109
    .inst 0xa9002728
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xaa1903e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xb944f2e8
    .inst 0xb9000288
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_cdev_push_data_to_fifo.pre_remaining_frames
    .inst 0x51000508
    .inst 0xb904f2e8
    .inst 0x14000003
    .inst 0x7112c13f
    .inst 0x5400148a
    .inst 0xd503201f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x30
    .inst 0x52819801
    .inst 0x52800602
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x30
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xaa0003f9
    .inst 0xb4001ab9
    .inst 0xd503201f
    .inst 0xaa1803e0
    .inst 0x52819801
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xf9000b20
    .inst 0xb4001cc0
    .inst 0xaa1503e1
    .inst 0xaa1803e2
    .inst 0xb9001b38
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0x91008320
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, ktime_get_real_ts64
    .inst 0x9113e2e2
    .inst 0xf94282e1
    .inst 0xeb02033f
    .inst 0x540016a0
    .inst 0xeb19003f
    .inst 0x54001660
    .inst 0xf9400028
    .inst 0xeb02011f
    .inst 0x54001601
    .inst 0xf90282f9
    .inst 0xa9000722
    .inst 0xf9000039
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0xb8
    .inst 0xb944f2e9
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb8
    .inst 0x11000529
    .inst 0x51000508
    .inst 0xb904f2e9
    .inst 0x6b09011f
    .inst 0x54000182
    .inst 0xf9402348
    .inst 0xb4000148
    .inst 0x91002340
    .inst 0x2a1f03e1
    .inst 0xb85fc110
    .inst 0x728c3631
    .inst 0x72a685d1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x80
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0x80
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x911422e0
    .inst 0x52800021
    .inst 0x52800022
    .inst 0xaa1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __wake_up
    .inst 0x2a1f03f4
    .inst 0x2a1f03f7
    .inst 0xf94003fa
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000f80
    .inst 0xb400007a
    .inst 0xaa1a03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000fc0
    .inst 0xaa1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x35000634
    .inst 0x2a1f03f7
    .inst 0x14000037
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_7ac6
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_7ac6
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_520e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_520e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002b7
    .inst 0x14000030
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_4674
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_4674
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_4d6e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_4d6e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002b7
    .inst 0x14000021
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_ad32
    .inst 0x14000003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_6f17
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_6f17
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_40cd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_40cd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_4d6e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_4d6e
    .inst 0x2a1803e2
    .inst 0x2a1303e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000010
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4ffe580
    .inst 0xaa1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xb9400382
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, g_cdev_data+0xb4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_bb25
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_bb25
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_4d6e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_4d6e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800177
    .inst 0xb85fc3a8
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_870b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_870b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_520e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_520e
    .inst 0x2a1303e3
    .inst 0x12001d02
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1703e0
    .inst 0xa9464ff4
    .inst 0xa94557f6
    .inst 0xa9445ff8
    .inst 0xa94367fa
    .inst 0xa9426ffc
    .inst 0xa9417bfd
    .inst 0x9101c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_81f1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_81f1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_1a25
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_1a25
    .inst 0x2a1303e2
    .inst 0x2a1303e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_270d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_270d
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_4d6e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_4d6e
    .inst 0x2a1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002b7
    .inst 0x52800034
    .inst 0x17ffffa4
    .inst 0xaa1903e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __list_del_entry_valid_or_report
    .inst 0x17ffff54
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_2c15
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_2c15
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_63f4
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_63f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff43
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_6afc
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_6afc
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_63f4
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_63f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb944f2e8
    .inst 0xb9000288
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, syna_cdev_push_data_to_fifo.pre_remaining_frames
    .inst 0x17ffff56
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_81f1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_81f1
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_1a25
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_1a25
    .inst 0x2a1903e3
    .inst 0x2a0203e4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_63c2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_63c2
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_4d6e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_4d6e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002b7
    .inst 0x52800034
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5fff0c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5fff080
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x34fff034
    .inst 0x17ffffb0
    .inst 0xd4200020
    .inst 0x52800220
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0xaa1903e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __list_add_valid_or_report
    .inst 0x17ffff52
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x30
    .inst 0xd5384114
    .inst 0xf9402a96
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x30
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .codetag.alloc_tags+0x190
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .codetag.alloc_tags+0x190
    .inst 0x52819801
    .inst 0x52800602
    .inst 0xf9002a88
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xaa0003f9
    .inst 0xf9002a96
    .inst 0xb5ffe5b9
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_63f4
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_63f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_469e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_469e
    .inst 0xaa1703e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_9ff7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_9ff7
    .inst 0xaa1703e1
    .inst 0x52800602
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000012
    .inst 0xd5384114
    .inst 0xf9402a96
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .codetag.alloc_tags+0x1b8
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .codetag.alloc_tags+0x1b8
    .inst 0xaa1803e0
    .inst 0x52819801
    .inst 0xf9002a88
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xf9002a96
    .inst 0xf9000b20
    .inst 0xb5ffe380
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_83b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_83b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_63f4
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_63f4
    .inst 0x2a1803e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_cdev_data+0x80
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, g_cdev_data+0x80
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_3897
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_3897
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_cdev_process_reports_rodata_4d6e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_cdev_process_reports_rodata_4d6e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800177
    .inst 0x52800034
    .inst 0x17ffff3a
.size syna_cdev_process_reports, .-syna_cdev_process_reports
.section .rodata.str1.1,"aMS",@progbits,1
.org 0x83b
.L_syna_cdev_process_reports_rodata_83b:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x20, 0x74, 0x6f, 0x20, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x65, 0x20, 0x6d, 0x65, 0x6d, 0x6f, 0x72, 0x79, 0x2c, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x20, 0x3d, 0x20, 0x25, 0x64, 0x0a, 0x00
.org 0x1a25
.L_syna_cdev_process_reports_rodata_1a25:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x70, 0x61, 0x6c, 0x5f, 0x6d, 0x65, 0x6d, 0x5f, 0x63, 0x70, 0x79, 0x00
.org 0x270d
.L_syna_cdev_process_reports_rodata_270d:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x63, 0x6f, 0x70, 0x79, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20, 0x74, 0x6f, 0x20, 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x2c, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x20, 0x25, 0x64, 0x0a, 0x00
.org 0x2c15
.L_syna_cdev_process_reports_rodata_2c15:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x49, 0x46, 0x4f, 0x20, 0x69, 0x73, 0x20, 0x66, 0x75, 0x6c, 0x6c, 0x20, 0x64, 0x72, 0x6f, 0x70, 0x20, 0x74, 0x68, 0x65, 0x20, 0x66, 0x69, 0x72, 0x73, 0x74, 0x20, 0x66, 0x72, 0x61, 0x6d, 0x65, 0x0a, 0x00
.org 0x3897
.L_syna_cdev_process_reports_rodata_3897:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x70, 0x75, 0x73, 0x68, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20, 0x74, 0x6f, 0x20, 0x66, 0x69, 0x66, 0x6f, 0x0a, 0x00
.org 0x40cd
.L_syna_cdev_process_reports_rodata_40cd:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x65, 0x20, 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x2c, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x20, 0x25, 0x64, 0x2c, 0x20, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x6c, 0x65, 0x6e, 0x67, 0x74, 0x68, 0x3a, 0x20, 0x25, 0x64, 0x0a, 0x00
.org 0x4674
.L_syna_cdev_process_reports_rodata_4674:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20, 0x70, 0x6f, 0x69, 0x6e, 0x74, 0x65, 0x72, 0x0a, 0x00
.org 0x469e
.L_syna_cdev_process_reports_rodata_469e:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x20, 0x74, 0x6f, 0x20, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x65, 0x20, 0x6d, 0x65, 0x6d, 0x6f, 0x72, 0x79, 0x0a, 0x00
.org 0x4ae7
.L_syna_cdev_process_reports_rodata_4ae7:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x70, 0x61, 0x6c, 0x5f, 0x6d, 0x65, 0x6d, 0x5f, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x00
.org 0x4d6e
.L_syna_cdev_process_reports_rodata_4d6e:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x64, 0x65, 0x76, 0x5f, 0x75, 0x70, 0x64, 0x61, 0x74, 0x65, 0x5f, 0x66, 0x69, 0x66, 0x6f, 0x00
.org 0x520e
.L_syna_cdev_process_reports_rodata_520e:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x64, 0x65, 0x76, 0x5f, 0x70, 0x72, 0x6f, 0x63, 0x65, 0x73, 0x73, 0x5f, 0x72, 0x65, 0x70, 0x6f, 0x72, 0x74, 0x73, 0x00
.org 0x63c2
.L_syna_cdev_process_reports_rodata_63c2:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x63, 0x6f, 0x70, 0x79, 0x20, 0x65, 0x78, 0x74, 0x72, 0x61, 0x20, 0x62, 0x79, 0x74, 0x65, 0x73, 0x20, 0x74, 0x6f, 0x20, 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x0a, 0x00
.org 0x63f4
.L_syna_cdev_process_reports_rodata_63f4:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x63, 0x64, 0x65, 0x76, 0x5f, 0x70, 0x75, 0x73, 0x68, 0x5f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x74, 0x6f, 0x5f, 0x66, 0x69, 0x66, 0x6f, 0x00
.org 0x6afc
.L_syna_cdev_process_reports_rodata_6afc:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x49, 0x46, 0x4f, 0x20, 0x69, 0x73, 0x20, 0x73, 0x74, 0x69, 0x6c, 0x6c, 0x20, 0x66, 0x75, 0x6c, 0x6c, 0x0a, 0x00
.org 0x6f17
.L_syna_cdev_process_reports_rodata_6f17:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x65, 0x74, 0x65, 0x72, 0x0a, 0x00
.org 0x7ac6
.L_syna_cdev_process_reports_rodata_7ac6:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20, 0x74, 0x6f, 0x20, 0x70, 0x72, 0x6f, 0x63, 0x65, 0x73, 0x73, 0x0a, 0x00
.org 0x81f1
.L_syna_cdev_process_reports_rodata_81f1:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x2e, 0x20, 0x73, 0x72, 0x63, 0x3a, 0x25, 0x64, 0x2c, 0x20, 0x64, 0x65, 0x73, 0x74, 0x3a, 0x25, 0x64, 0x2c, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x20, 0x74, 0x6f, 0x20, 0x63, 0x6f, 0x70, 0x79, 0x3a, 0x25, 0x64, 0x0a, 0x00
.org 0x870b
.L_syna_cdev_process_reports_rodata_870b:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x75, 0x70, 0x64, 0x61, 0x74, 0x65, 0x20, 0x64, 0x61, 0x74, 0x61, 0x20, 0x74, 0x6f, 0x20, 0x66, 0x69, 0x66, 0x6f, 0x2c, 0x20, 0x63, 0x6f, 0x64, 0x65, 0x3a, 0x25, 0x30, 0x32, 0x58, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x25, 0x64, 0x0a, 0x00
.org 0x9fae
.L_syna_cdev_process_reports_rodata_9fae:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x70, 0x61, 0x6c, 0x5f, 0x6d, 0x65, 0x6d, 0x5f, 0x66, 0x72, 0x65, 0x65, 0x00
.org 0x9ff7
.L_syna_cdev_process_reports_rodata_9ff7:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x41, 0x6c, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x20, 0x3d, 0x20, 0x25, 0x7a, 0x75, 0x0a, 0x00
.org 0xad32
.L_syna_cdev_process_reports_rodata_ad32:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x6d, 0x61, 0x6e, 0x61, 0x67, 0x65, 0x64, 0x20, 0x64, 0x65, 0x76, 0x69, 0x63, 0x65, 0x0a, 0x00
.org 0xbb25
.L_syna_cdev_process_reports_rodata_bb25:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x65, 0x20, 0x65, 0x78, 0x74, 0x72, 0x61, 0x20, 0x62, 0x75, 0x66, 0x66, 0x65, 0x72, 0x2c, 0x20, 0x73, 0x69, 0x7a, 0x65, 0x3a, 0x20, 0x25, 0x64, 0x0a, 0x00
.section .codetag.alloc_tags,"aw",@progbits
.align 3
.zero 0x190
.type syna_cdev_process_reports._alloc_tag, %object
syna_cdev_process_reports._alloc_tag:
.zero 0x8
.zero 0x20
.type syna_cdev_process_reports._alloc_tag.77, %object
syna_cdev_process_reports._alloc_tag.77:
.zero 0x8

.section .data,"aw",@progbits
.align 2
.type syna_cdev_push_data_to_fifo.pre_remaining_frames, %object
syna_cdev_push_data_to_fifo.pre_remaining_frames:
.word 0
