.section .text,"ax",@progbits
.align 2
.global syna_tcm_testing_config_id
.type syna_tcm_testing_config_id, %function
.word 0x81c04a92
syna_tcm_testing_config_id:
    .inst 0xd503233f
    .inst 0xd101c3ff
    .inst 0xa9047bfd
    .inst 0xa90557f6
    .inst 0xa9064ff4
    .inst 0x910103fd
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf81f83a8
    .inst 0x12801408
    .inst 0xb4000040
    .inst 0xb50001a1
    .inst 0xd5384109
    .inst 0xf9438929
    .inst 0xf85f83aa
    .inst 0xeb0a013f
    .inst 0x54000a81
    .inst 0x2a0803e0
    .inst 0xa9464ff4
    .inst 0xa94557f6
    .inst 0xa9447bfd
    .inst 0x9101c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x2a0203f5
    .inst 0xaa0103f3
    .inst 0x910023e1
    .inst 0x2a1f03e2
    .inst 0xa902ffff
    .inst 0x910023f4
    .inst 0xa901ffff
    .inst 0xa900ffff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_get_app_info
    .inst 0x36f80160
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lcfg_app_fail
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lcfg_app_fail
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lcfg_function
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lcfg_function
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x3900427f
    .inst 0x12801453
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lcfg_fail
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lcfg_fail
    .inst 0x14000032
    .inst 0xf9406e68
    .inst 0xaa1303e9
    .inst 0xb4000248
    .inst 0x2a0003f6
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_buf_alloc
    .inst 0xaa1303e9
    .inst 0x2a0003e8
    .inst 0x2a1603e0
    .inst 0x37f80168
    .inst 0xf9406d28
    .inst 0x91004282
    .inst 0xf9400100
    .inst 0xb9400901
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_pal_mem_cpy
    .inst 0xf9406e68
    .inst 0xaa1303e9
    .inst 0x2a1603e0
    .inst 0x5280020a
    .inst 0xb9000d0a
    .inst 0x360000f5
    .inst 0x52800028
    .inst 0x2a0003f3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lcfg_pass
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lcfg_pass
    .inst 0x39004128
    .inst 0x14000017
    .inst 0xf9401d28
    .inst 0xb4000188
    .inst 0xb9400902
    .inst 0x34000142
    .inst 0xf9400101
    .inst 0x2a0003f5
    .inst 0x91004280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_testing_0002_check_config_id
    .inst 0x2a0003e8
    .inst 0xaa1303e9
    .inst 0x2a1503e0
    .inst 0x12000108
    .inst 0x39004268
    .inst 0x39404128
    .inst 0x12801429
    .inst 0x7100011f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lcfg_fail
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lcfg_fail
    .inst 0x1a891013
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lcfg_pass
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lcfg_pass
    .inst 0x9a881122
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lcfg_result
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lcfg_result
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lcfg_function
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lcfg_function
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e8
    .inst 0x17ffffa9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_tcm_testing_config_id, .-syna_tcm_testing_config_id

.section .rodata.str1.1,"aMS",@progbits,1
.Lcfg_app_fail:
    .asciz "\0013[error] %s: Fail to get application info\n"
.Lcfg_function:
    .asciz "syna_tcm_testing_config_id"
.Lcfg_result:
    .asciz "\0016[info ] %s: Result = %s\n"
.Lcfg_fail:
    .asciz "fail"
.Lcfg_pass:
    .asciz "pass"
