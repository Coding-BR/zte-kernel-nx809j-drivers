.section .text,"ax",@progbits
.align 2
.global zte_touch_deinit
.type zte_touch_deinit, %function
zte_touch_deinit:
    .inst 0xd503233f
    .inst 0xa9bb7bfd
    .inst 0xf9000bf9
    .inst 0xa9025ff8
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910003fd
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf94002d7
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xb40000b7
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_touch_deinit.ztp_release
    .inst 0x394002a8
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, zte_touch_deinit.ztp_release
    .inst 0x7100051f
    .inst 0x540000a1
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xc87
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xc87
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000046
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, ufp_mac_exit
    .inst 0x90000013
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb32
    .inst 0x91000273
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb32
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8a5a
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8a5a
    .inst 0xf94002d8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xaa1303e0
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x91294300
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, cancel_delayed_work_sync
    .inst 0xf945f700
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vfree
    .inst 0xf905f71f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, tpd_proc_deinit
    .inst 0xf94002d8
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x43d9
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x43d9
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, tpd_report_work_deinit
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, tpd_resume_work_deinit
    .inst 0xf94002d9
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xba1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xba1
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x91234320
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, cancel_delayed_work_sync
    .inst 0xf94002d9
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xaa1303e0
    .inst 0xaa1403e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x91294320
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, cancel_delayed_work_sync
    .inst 0xf945f720
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vfree
    .inst 0x9124e300
    .inst 0xf905f73f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, cancel_delayed_work_sync
    .inst 0xf9425ae8
    .inst 0xb5000068
    .inst 0xaa1f03e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, destroy_workqueue
    .inst 0xf94002d3
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xf9462a60
    .inst 0xb40000e0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, fwimage_attr
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, fwimage_attr
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, sysfs_remove_bin_file
    .inst 0xf9462a60
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kobject_put
    .inst 0xf94002d3
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
    .inst 0x52800028
    .inst 0x390002a8
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, zte_touch_deinit.ztp_release
    .inst 0xa9444ff4
    .inst 0xf9400bf9
    .inst 0xa94357f6
    .inst 0xa9425ff8
    .inst 0xa8c57bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size zte_touch_deinit, .-zte_touch_deinit

.section .bss,"aw",@nobits
.align 3
.zero 0x14
.local zte_touch_deinit.ztp_release
.type zte_touch_deinit.ztp_release, %object
zte_touch_deinit.ztp_release:
.size zte_touch_deinit.ztp_release, 1
.zero 1

.section .rodata,"a",@progbits
.align 3
.zero 0xe18
.local fwimage_attr
.type fwimage_attr, %object
fwimage_attr:
.size fwimage_attr, 0x28
    .quad .L_zte_touch_deinit_fwimage
    .zero 0x20

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_zte_touch_deinit_rodata:
    .include "zte_touch_deinit_rodata.inc"
.L_zte_touch_deinit_fwimage:
    .asciz "fwimage"
