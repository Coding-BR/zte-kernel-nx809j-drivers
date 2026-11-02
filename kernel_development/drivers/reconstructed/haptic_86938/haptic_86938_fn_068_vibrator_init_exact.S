.section .text,"ax",@progbits
.align 2
.global vibrator_init
.type vibrator_init, %function
vibrator_init:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2a50
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2a50
    .inst 0xaa0003f3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xb54
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xb54
    .inst 0xaa1403e1
    .inst 0x5281f502
    .inst 0xaa1503e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x155d
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x155d
    .inst 0xaa1403e1
    .inst 0x5281f8a2
    .inst 0xaa1503e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x1154
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x1154
    .inst 0xaa1303e1
    .inst 0xf80a8c28
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, brightness_get
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, brightness_get
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, brightness_set
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, brightness_set
    .inst 0xf9001828
    .inst 0xf9414028
    .inst 0xaa1f03e2
    .inst 0xf9001029
    .inst 0x91008100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_led_classdev_register_ext
    .inst 0x37f80640
    .inst 0xf9407e60
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, vibrator_attribute_group
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, vibrator_attribute_group
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, sysfs_create_group
    .inst 0x37f806c0
    .inst 0x910cc260
    .inst 0x52800021
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, hrtimer_init
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, vibrator_timer_func
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, vibrator_timer_func
    .inst 0x9110c269
    .inst 0xf901ae68
    .inst 0xb26b7be8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x70a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x70a
    .inst 0xf9021668
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, vibrator_init.__key.89
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, vibrator_init.__key.89
    .inst 0xf9021a69
    .inst 0x910bc260
    .inst 0xf9021e69
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, vibrator_work_routine
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, vibrator_work_routine
    .inst 0xf901d268
    .inst 0x910ea268
    .inst 0xf9022269
    .inst 0xf901d668
    .inst 0xf901da68
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, rtp_work_routine
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, rtp_work_routine
    .inst 0xf901de68
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xcc2
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xcc2
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, vibrator_init.__key.91
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, vibrator_init.__key.91
    .inst 0x910dc260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0xd2c00028
    .inst 0x911b4269
    .inst 0xf9036668
    .inst 0xf9036a69
    .inst 0xf9036e69
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6e2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6e2
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2a50
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2a50
    .inst 0x5281faa2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffc7
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x28e
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x28e
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x2a50
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x2a50
    .inst 0x5281fb62
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffc3
.size vibrator_init, .-vibrator_init

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "haptic_86938_probe_rodata.inc"

.include "haptic_86938_vibrator_init_support.inc"
