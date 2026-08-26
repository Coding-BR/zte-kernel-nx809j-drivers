.section .text,"ax",@progbits
.align 2
.global syna_tcm_testing_noise
.type syna_tcm_testing_noise, %function
    .inst 0x81c04a92
syna_tcm_testing_noise:
    .inst 0xd503233f
    .inst 0xd10243ff
    .inst 0xa9057bfd
    .inst 0xf90033f7
    .inst 0xa90757f6
    .inst 0xa9084ff4
    .inst 0x910143fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0x12801408
    .inst 0xb4000040
    .inst 0xb50001c1
    .inst 0xd5384109
    .inst 0xf9438929
    .inst 0xf85f83aa
    .inst 0xeb0a013f
    .inst 0x54000fc1
    .inst 0x2a0803e0
    .inst 0xa9484ff4
    .inst 0xf94033f7
    .inst 0xa94757f6
    .inst 0xa9457bfd
    .inst 0x910243ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x910003e8
    .inst 0x2a0203f7
    .inst 0xaa0103f6
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_testing_noise_rodata_str_ad58
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_testing_noise_rodata_str_ad58
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_pal_mutex_alloc.__key
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_pal_mutex_alloc.__key
    .inst 0xaa0003f5
    .inst 0x91004100
    .inst 0xa903ffff
    .inst 0xa902ffff
    .inst 0xa901ffff
    .inst 0xa900ffff
    .inst 0xf90003ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x2943ceb4
    .inst 0x910003e2
    .inst 0xaa1503e0
    .inst 0x52800141
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_run_production_test
    .inst 0x36f80180
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_testing_noise_rodata_str_a0f2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_testing_noise_rodata_str_a0f2
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_testing_noise_rodata_str_477e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_testing_noise_rodata_str_477e
    .inst 0x52800142
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x390042df
    .inst 0x12801454
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_testing_noise_rodata_str_2200
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_testing_noise_rodata_str_2200
    .inst 0x1400003a
    .inst 0xf9406ec8
    .inst 0xaa1603e9
    .inst 0xb40000e8
    .inst 0x910003e1
    .inst 0x2a0003f5
    .inst 0xaa0803e0
    .inst 0x9400004f
    .inst 0xaa1603e9
    .inst 0x2a1503e0
    .inst 0x360000f7
    .inst 0x52800028
    .inst 0x2a0003f4
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_testing_noise_rodata_str_775d
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_testing_noise_rodata_str_775d
    .inst 0x39004128
    .inst 0x1400002a
    .inst 0xf9401d28
    .inst 0xb5000088
    .inst 0x2a0003f7
    .inst 0x2a1f03f5
    .inst 0x1400000d
    .inst 0x2a0003f7
    .inst 0xf94003e0
    .inst 0xb9400fe1
    .inst 0xf9400105
    .inst 0xb9400906
    .inst 0x90000004
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_tcm_testing_0A00_check_upper_bound
    .inst 0x91000084
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_tcm_testing_0A00_check_upper_bound
    .inst 0x2a1403e2
    .inst 0x2a1303e3
    .inst 0x940000d7
    .inst 0xaa1603e9
    .inst 0x2a0003f5
    .inst 0xf9402128
    .inst 0xb5000068
    .inst 0x2a1f03e0
    .inst 0x1400000b
    .inst 0xf94003e0
    .inst 0xb9400fe1
    .inst 0x90000004
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_tcm_testing_0A00_check_lower_bound
    .inst 0x91000084
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_tcm_testing_0A00_check_lower_bound
    .inst 0xf9400105
    .inst 0xb9400906
    .inst 0x2a1403e2
    .inst 0x2a1303e3
    .inst 0x940000c8
    .inst 0xaa1603e9
    .inst 0x0a0002a8
    .inst 0x1280142a
    .inst 0x9000000b
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_testing_noise_rodata_str_2200
    .inst 0x9100016b
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_testing_noise_rodata_str_2200
    .inst 0x72000108
    .inst 0x39004128
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_testing_noise_rodata_str_775d
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_testing_noise_rodata_str_775d
    .inst 0x1a8a12f4
    .inst 0x9a8b1102
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_testing_noise_rodata_str_1b0a
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_testing_noise_rodata_str_1b0a
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_testing_noise_rodata_str_477e
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_testing_noise_rodata_str_477e
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394103e2
    .inst 0x35000122
    .inst 0xf94003f3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_request_managed_device
    .inst 0xb4000180
    .inst 0xb4000073
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, devm_kfree
    .inst 0x2a1403e8
    .inst 0x17ffff8b
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_testing_noise_rodata_str_3313
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_testing_noise_rodata_str_3313
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_testing_noise_rodata_str_6a45
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_testing_noise_rodata_str_6a45
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_testing_noise_rodata_str_ad32
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_testing_noise_rodata_str_ad32
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_testing_noise_rodata_str_9fae
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_testing_noise_rodata_str_9fae
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_tcm_testing_noise, .-syna_tcm_testing_noise
.section .bss,"aw",@nobits
.align 0
.type syna_pal_mutex_alloc.__key, %object
.size syna_pal_mutex_alloc.__key, 1
syna_pal_mutex_alloc.__key:
.zero 1
.section .rodata.str1.1,"aMS",@progbits,1
.org 0x1b0a
.L_syna_tcm_testing_noise_rodata_str_1b0a:
.byte 0x01, 0x36, 0x5b, 0x69, 0x6e, 0x66, 0x6f, 0x20, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x52, 0x65, 0x73, 0x75, 0x6c, 0x74, 0x20, 0x3d, 0x20, 0x25, 0x73, 0x0a, 0x00
.org 0x2200
.L_syna_tcm_testing_noise_rodata_str_2200:
.byte 0x66, 0x61, 0x69, 0x6c, 0x00
.org 0x3313
.L_syna_tcm_testing_noise_rodata_str_3313:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x42, 0x75, 0x66, 0x66, 0x65, 0x72, 0x20, 0x73, 0x74, 0x69, 0x6c, 0x6c, 0x20, 0x69, 0x6e, 0x20, 0x75, 0x73, 0x65, 0x64, 0x2c, 0x20, 0x25, 0x64, 0x20, 0x72, 0x65, 0x66, 0x65, 0x72, 0x65, 0x6e, 0x63, 0x65, 0x73, 0x0a, 0x00
.org 0x477e
.L_syna_tcm_testing_noise_rodata_str_477e:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x74, 0x63, 0x6d, 0x5f, 0x74, 0x65, 0x73, 0x74, 0x69, 0x6e, 0x67, 0x5f, 0x6e, 0x6f, 0x69, 0x73, 0x65, 0x00
.org 0x6a45
.L_syna_tcm_testing_noise_rodata_str_6a45:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x74, 0x63, 0x6d, 0x5f, 0x62, 0x75, 0x66, 0x5f, 0x72, 0x65, 0x6c, 0x65, 0x61, 0x73, 0x65, 0x00
.org 0x775d
.L_syna_tcm_testing_noise_rodata_str_775d:
.byte 0x70, 0x61, 0x73, 0x73, 0x00
.org 0x9fae
.L_syna_tcm_testing_noise_rodata_str_9fae:
.byte 0x73, 0x79, 0x6e, 0x61, 0x5f, 0x70, 0x61, 0x6c, 0x5f, 0x6d, 0x65, 0x6d, 0x5f, 0x66, 0x72, 0x65, 0x65, 0x00
.org 0xa0f2
.L_syna_tcm_testing_noise_rodata_str_a0f2:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x46, 0x61, 0x69, 0x6c, 0x20, 0x74, 0x6f, 0x20, 0x72, 0x75, 0x6e, 0x20, 0x74, 0x65, 0x73, 0x74, 0x20, 0x50, 0x49, 0x44, 0x25, 0x64, 0x0a, 0x00
.org 0xad32
.L_syna_tcm_testing_noise_rodata_str_ad32:
.byte 0x01, 0x33, 0x5b, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5d, 0x20, 0x25, 0x73, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x6d, 0x61, 0x6e, 0x61, 0x67, 0x65, 0x64, 0x20, 0x64, 0x65, 0x76, 0x69, 0x63, 0x65, 0x0a, 0x00
.org 0xad58
.L_syna_tcm_testing_noise_rodata_str_ad58:
.byte 0x28, 0x73, 0x74, 0x72, 0x75, 0x63, 0x74, 0x20, 0x6d, 0x75, 0x74, 0x65, 0x78, 0x20, 0x2a, 0x29, 0x70, 0x74, 0x72, 0x00
