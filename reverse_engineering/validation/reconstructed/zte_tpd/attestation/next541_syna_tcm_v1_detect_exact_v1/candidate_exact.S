.section .text,"ax",@progbits
.align 2
.inst 0x24cba334
.global syna_tcm_v1_detect
.type syna_tcm_v1_detect, %function
syna_tcm_v1_detect:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9017bfd
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf90007e8
    .inst 0x390013ff
    .inst 0xb4000c00
    .inst 0xaa0003f3
    .inst 0x360002a1
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_tcm_v1_read_message
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_tcm_v1_read_message
    .inst 0x2a1f03e0
    .inst 0xf901ca68
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_tcm_v1_write_message
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_tcm_v1_write_message
    .inst 0xf901ce68
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_tcm_v1_set_up_max_rw_size
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_tcm_v1_set_up_max_rw_size
    .inst 0xf901d668
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_tcm_v1_check_max_rw_size
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_tcm_v1_check_max_rw_size
    .inst 0xf901da68
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_tcm_v1_terminate
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_tcm_v1_terminate
    .inst 0xf901d268
    .inst 0x52800028
    .inst 0xb9037e7f
    .inst 0x39002268
    .inst 0x1400003f
    .inst 0x910d2260
    .inst 0x2a0203f6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x394a0262
    .inst 0x35000982
    .inst 0x91094260
    .inst 0x91090274
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x394a0268
    .inst 0xb9424a75
    .inst 0xf9412260
    .inst 0x11000508
    .inst 0x7100d6bf
    .inst 0x390a0268
    .inst 0x54000208
    .inst 0xb40000c0
    .inst 0xaa0003f5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb40016a0
    .inst 0xaa1503e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4001700
    .inst 0x528006c1
    .inst 0x5281b802
    .inst 0x528006d5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
    .inst 0xf9000280
    .inst 0xb4001700
    .inst 0xb9024a75
    .inst 0x2a1503e2
    .inst 0x2a1f03e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0xf9402660
    .inst 0xb9024e7f
    .inst 0xb4000660
    .inst 0xf9401008
    .inst 0xb40006a8
    .inst 0xf9412275
    .inst 0x528006c2
    .inst 0xaa1503e1
    .inst 0xb85fc110
    .inst 0x728403f1
    .inst 0x72a51491
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x37f80620
    .inst 0x394a0262
    .inst 0x7100045f
    .inst 0x540007e1
    .inst 0x2a1f03e8
    .inst 0x91094260
    .inst 0x390a0268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x910d2260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x394002a8
    .inst 0x7102951f
    .inst 0x540007c0
    .inst 0x12801e80
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54001a21
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9417bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2055
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2055
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3496
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3496
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x17ffffef
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6f05
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6f05
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffb0
    .inst 0x12801e14
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6a5a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6a5a
    .inst 0x14000004
    .inst 0x12801e94
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4ce6
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4ce6
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x4cd8
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x4cd8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x14000002
    .inst 0x2a0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7c97
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7c97
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3496
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3496
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394a0262
    .inst 0x7100045f
    .inst 0x54001341
    .inst 0x2a1f03e8
    .inst 0x91094260
    .inst 0x390a0268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x910d2260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x2a1403e0
    .inst 0x17ffffcd
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbaed
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbaed
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394a0268
    .inst 0x51000508
    .inst 0x17ffffbc
    .inst 0x394e0268
    .inst 0x7100051f
    .inst 0x540002e1
    .inst 0xb9420268
    .inst 0x340002a8
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_buf_lock
    .inst 0xb9420268
    .inst 0xb9424a69
    .inst 0x1100150b
    .inst 0x6b0b013f
    .inst 0x540001c9
    .inst 0xf941226a
    .inst 0x394e126c
    .inst 0x786b494b
    .inst 0x7100059f
    .inst 0x7907066b
    .inst 0x540000c1
    .inst 0x11001d08
    .inst 0x6b08013f
    .inst 0x54000063
    .inst 0x38684948
    .inst 0x390e1668
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_buf_unlock
    .inst 0x79470668
    .inst 0x528b4b49
    .inst 0x6b09011f
    .inst 0x54000041
    .inst 0x390e027f
    .inst 0x394e1668
    .inst 0x7101691f
    .inst 0x54000041
    .inst 0x390e127f
    .inst 0x394006a8
    .inst 0x7100411f
    .inst 0x540001e0
    .inst 0xb941ee65
    .inst 0x720002df
    .inst 0x52800048
    .inst 0x52800089
    .inst 0x910013e4
    .inst 0xaa1303e0
    .inst 0x1a881121
    .inst 0xaa1f03e2
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_v1_write_message
    .inst 0x36f80080
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6b95
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6b95
    .inst 0x14000016
    .inst 0x39402668
    .inst 0x350001e8
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_buf_lock
    .inst 0x910012a1
    .inst 0xaa1303e0
    .inst 0x52800682
    .inst 0x52800603
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_v1_parse_idinfo
    .inst 0x2a0003f5
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_buf_unlock
    .inst 0x36f80095
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x70bf
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x70bf
    .inst 0x14000006
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_v1_check_max_rw_size
    .inst 0x36f80580
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb579
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb579
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3496
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3496
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e20
    .inst 0x17ffff78
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
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb5ffe940
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
    .inst 0xf900029f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5c25
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5c25
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x7620
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x7620
    .inst 0x528006c2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2df0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2df0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3496
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3496
    .inst 0xf901267f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394a0262
    .inst 0x7100045f
    .inst 0x54000521
    .inst 0x2a1f03e8
    .inst 0x91094260
    .inst 0x390a0268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x910d2260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x12801e40
    .inst 0x17ffff54
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x286
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x286
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3496
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3496
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394e0268
    .inst 0x394e1269
    .inst 0x37000048
    .inst 0x3607df29
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x8663
    .inst 0x9100014a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x8663
    .inst 0x9000000b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x458d
    .inst 0x9100016b
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x458d
    .inst 0x7100011f
    .inst 0x2a280128
    .inst 0x9a8a1162
    .inst 0x7200011f
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x27c1
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x27c1
    .inst 0x9a8a1163
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3496
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3496
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffeea
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbaed
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbaed
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394a0268
    .inst 0x51000508
    .inst 0x17ffff61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6ed5
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6ed5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xbaed
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xbaed
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394a0268
    .inst 0x51000508
    .inst 0x17ffffd2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_tcm_v1_detect, .-syna_tcm_v1_detect

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "ghost_check_area_rodata.inc"
