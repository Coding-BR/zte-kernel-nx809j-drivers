.section .text,"ax",@progbits
.align 2
.global syna_dev_probe
.type syna_dev_probe, %function
    .word 0xc7f8c87c
syna_dev_probe:
    .inst 0xd503233f
    .inst 0xd101c3ff
    .inst 0xa9047bfd
    .inst 0xa90557f6
    .inst 0xa9064ff4
    .inst 0x910103fd
    .inst 0xd5384108
    .inst 0xaa0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5178
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5178
    .inst 0xf9438908
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3823
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3823
    .inst 0xf81f83a8
    .inst 0xf90007ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9405295
    .inst 0xb5000115
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5b9e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5b9e
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3823
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3823
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x128002a0
    .inst 0x14000013
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb50000e0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4ae7
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4ae7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000005
    .inst 0x5280da01
    .inst 0x5281b802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xb5000240
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xacfd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xacfd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3823
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3823
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12800160
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x540024a1
    .inst 0xa9464ff4
    .inst 0xa94557f6
    .inst 0xa9447bfd
    .inst 0x9101c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xaa0003f3
    .inst 0xb905881f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2aeb
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2aeb
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_dev_probe_wait_base+0x1
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_dev_probe_wait_base+0x1
    .inst 0x91164000
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __init_swait_queue_head
    .inst 0x910023e0
    .inst 0x910022a1
    .inst 0xaa1303e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_allocate_device
    .inst 0x2a0003e8
    .inst 0x37f80420
    .inst 0xf94007e0
    .inst 0xb40003e0
    .inst 0xa9005260
    .inst 0x910043e1
    .inst 0x2a1f03e2
    .inst 0xf9013a75
    .inst 0x529fffe3
    .inst 0xf940aea8
    .inst 0xb94162a9
    .inst 0xb94172aa
    .inst 0xf9000be8
    .inst 0xb9001be9
    .inst 0xb9416aa9
    .inst 0xb94166a8
    .inst 0xb90027ea
    .inst 0xb940faaa
    .inst 0x2903a7e8
    .inst 0xb9416ea9
    .inst 0xb94176a8
    .inst 0xb9002be8
    .inst 0xb9417aa8
    .inst 0xb90037ea
    .inst 0x2905a7e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_config_timings
    .inst 0x36f80200
    .inst 0x2a0003f5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x11b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x11b
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3823
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3823
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000089
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4ab0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4ab0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3823
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3823
    .inst 0x2a0803f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e0
    .inst 0x17ffffc0
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad58
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad58
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_pal_mutex_alloc.__key
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_pal_mutex_alloc.__key
    .inst 0x910ae260
    .inst 0xaa1503e1
    .inst 0xaa1603e2
    .inst 0x390ba27f
    .inst 0xf901567f
    .inst 0xf9015a7f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x9109e260
    .inst 0xaa1503e1
    .inst 0xaa1603e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x91160668
    .inst 0x52800029
    .inst 0x390bd27f
    .inst 0x79000109
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_dev_connect
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_dev_connect
    .inst 0xf9035668
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_dev_disconnect
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_dev_disconnect
    .inst 0xf9035a68
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_dev_set_up_app_fw
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_dev_set_up_app_fw
    .inst 0xf9035e68
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_dev_resume
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_dev_resume
    .inst 0xf9036268
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_dev_suspend
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_dev_suspend
    .inst 0xb9057e7f
    .inst 0xf9036668
    .inst 0xd503201f
    .inst 0x52840000
    .inst 0x52819801
    .inst 0x72a00060
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_large_noprof
    .inst 0xf9023260
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x31fa
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x31fa
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_dev_probe.__key
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_dev_probe.__key
    .inst 0x9111c260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x320c
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x320c
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_dev_probe.__key.53
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_dev_probe.__key.53
    .inst 0x91112260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __init_waitqueue_head
    .inst 0x52801fe8
    .inst 0xb9046a7f
    .inst 0x91128260
    .inst 0xb904a268
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9153
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9153
    .inst 0xf9025668
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_dev_probe_module_ptr
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_dev_probe_module_ptr
    .inst 0xf9025a68
    .inst 0xf902667f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, misc_register
    .inst 0x35000240
    .inst 0x91004280
    .inst 0x52800021
    .inst 0xf902d67f
    .inst 0xf9005693
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, device_set_wakeup_capable
    .inst 0x91004280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, device_wakeup_enable
    .inst 0xaa1303e0
    .inst 0x94000101
    .reloc .-4, R_AARCH64_CALL26, syna_dev_connect
    .inst 0x36f801e0
    .inst 0x2a0003f5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6e99
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6e99
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3823
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3823
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000021
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7572
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7572
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3823
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3823
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x17ffffa4
    .inst 0xaa1303e0
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_cdev_create
    .inst 0x36f80100
    .inst 0x2a0003f5
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x71a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x71a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3823
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3823
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x1400000d
    .inst 0xaa1303e0
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_sysfs_create_dir
    .inst 0x36f80380
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x749
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x749
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3823
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3823
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_cdev_remove
    .inst 0x12800275
    .inst 0xaa1303e0
    .inst 0x940001d5
    .reloc .-4, R_AARCH64_CALL26, syna_dev_disconnect
    .inst 0xf9423260
    .inst 0x910aa274
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x394ba262
    .inst 0x35000ca2
    .inst 0xf9400294
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000d00
    .inst 0xb4000074
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0xf9015a7f
    .inst 0x390ba27f
    .inst 0xf94007e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_remove_device
    .inst 0x2a1503e0
    .inst 0x17ffff3c
    .inst 0xaa1303e0
    .inst 0x94000442
    .reloc .-4, R_AARCH64_CALL26, syna_ts_register_for_panel_events
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x814f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x814f
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb3ea
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb3ea
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_goodix_ts_resume
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_goodix_ts_resume
    .inst 0xf94002a8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2aeb
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2aeb
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_dev_probe_wait_base+0x1
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_dev_probe_wait_base+0x1
    .inst 0x91158260
    .inst 0xf9070509
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_goodix_ts_suspend
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, tpd_goodix_ts_suspend
    .inst 0xf906ed13
    .inst 0xf9070909
    .inst 0xb9055a7f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __init_swait_queue_head
    .inst 0x52800141
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x504a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x504a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x69cf
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x69cf
    .inst 0x72a000c1
    .inst 0x52800022
    .inst 0x3915e27f
    .inst 0x52800036
    .inst 0xb905227f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, alloc_workqueue
    .inst 0xb26b7be8
    .inst 0xf902a660
    .inst 0xf9029668
    .inst 0x9114c268
    .inst 0xf9029a68
    .inst 0xf9029e68
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_dev_helper_work
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_dev_helper_work
    .inst 0xf902a268
    .inst 0xb21f03e8
    .inst 0xf9030268
    .inst 0x52800048
    .inst 0xb9060e68
    .inst 0xd2800028
    .inst 0xf2c00048
    .inst 0xf902da7f
    .inst 0xb905ba7f
    .inst 0xb905c67f
    .inst 0xb905d67f
    .inst 0xb905de7f
    .inst 0xf902fe68
    .inst 0xf902f67f
    .inst 0xf902fa7f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, zte_get_boot_mode
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3823
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3823
    .inst 0x2a0003e2
    .inst 0xb9061a60
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5bd1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5bd1
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x145
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x145
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3815
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3815
    .inst 0x90000004
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8092
    .inst 0x91000084
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8092
    .inst 0xaa1403e1
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf94002a8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x91162260
    .inst 0x39160e76
    .inst 0x39007516
    .inst 0x39111916
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, completion_done
    .inst 0x2a0003e8
    .inst 0x2a1f03e0
    .inst 0x3707dd08
    .inst 0x91162260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, complete
    .inst 0x2a1f03e0
    .inst 0x17fffee4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3313
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3313
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6a45
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6a45
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff97
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff97
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0x52840000
    .inst 0xd5384115
    .inst 0xf9402ab6
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .codetag.alloc_tags+0x168
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .codetag.alloc_tags+0x168
    .inst 0x72a00060
    .inst 0x52819801
    .inst 0xf9002aa8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_large_noprof
    .inst 0xf9002ab6
    .inst 0x17ffff35
.size syna_dev_probe, .-syna_dev_probe

.section .bss,"aw",@nobits
.align 0
.zero 0x7a9
syna_dev_probe.__key:
.zero 1
syna_dev_probe.__key.53:
.zero 1
syna_pal_mutex_alloc.__key:
.zero 1
.zero 5
.globl syna_dev_probe_wait_base
syna_dev_probe_wait_base:
.zero 2

.section .rodata,"a",@progbits
.align 3
.zero 0xfc0
syna_dev_probe_module_ptr:
.quad 0
.reloc .-8, R_AARCH64_ABS64, __this_module
.zero 0x60

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "syna_dev_probe_exact.inc"

.section .codetag.alloc_tags,"aw",@progbits
.align 3
.zero 0x168
.type syna_dev_probe._alloc_tag, %object
syna_dev_probe._alloc_tag:
    .zero 0x8
