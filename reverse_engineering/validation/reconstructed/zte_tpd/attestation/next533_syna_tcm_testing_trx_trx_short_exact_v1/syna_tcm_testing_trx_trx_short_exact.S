.section .text,"ax",@progbits
.align 2
.inst 0x81c04a92
.global syna_tcm_testing_trx_trx_short
.type syna_tcm_testing_trx_trx_short, %function
syna_tcm_testing_trx_trx_short:
    .inst 0xd503233f
    .inst 0xd10203ff
    .inst 0xa9057bfd
    .inst 0xf90033f5
    .inst 0xa9074ff4
    .inst 0x910143fd
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
    .inst 0x54000d21
    .inst 0x2a0803e0
    .inst 0xa9474ff4
    .inst 0xf94033f5
    .inst 0xa9457bfd
    .inst 0x910203ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x910003e8
    .inst 0x2a0203f5
    .inst 0xaa0103f4
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lmutex_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lmutex_name
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .bss+0x960
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .bss+0x960
    .inst 0xaa0003f3
    .inst 0x91004100
    .inst 0xa903ffff
    .inst 0xa902ffff
    .inst 0xa901ffff
    .inst 0xa900ffff
    .inst 0xf90003ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __mutex_init
    .inst 0x910003e2
    .inst 0xaa1303e0
    .inst 0x52800021
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_run_production_test
    .inst 0x36f80180
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lfail_test
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lfail_test
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lfunction
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lfunction
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x3900429f
    .inst 0x12801454
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lfail
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lfail
    .inst 0x14000027
    .inst 0xf9406e88
    .inst 0xaa1403e9
    .inst 0xb40000e8
    .inst 0x910003e1
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x9400003c
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_buf_copy
    .inst 0xaa1403e9
    .inst 0x2a1303e0
    .inst 0x360000f5
    .inst 0x52800028
    .inst 0x2a0003f4
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lpass
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lpass
    .inst 0x39004128
    .inst 0x14000017
    .inst 0xf9401d2a
    .inst 0xb500008a
    .inst 0x3900413f
    .inst 0x12801434
    .inst 0x17ffffe9
    .inst 0xf94003e8
    .inst 0xb9400fe1
    .inst 0x2a0003f4
    .inst 0xf9400142
    .inst 0xb9400943
    .inst 0xaa0903f3
    .inst 0xaa0803e0
    .inst 0x940000c6
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_testing_check_array_data
    .inst 0x12801428
    .inst 0x7200000a
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lfail
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lfail
    .inst 0x1a881294
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lpass
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lpass
    .inst 0x3900426a
    .inst 0x9a891102
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lresult
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lresult
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lfunction
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lfunction
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
    .inst 0x17ffffa0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lbuffer_used
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lbuffer_used
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lbuffer_release
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lbuffer_release
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Linvalid_device
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Linvalid_device
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lmem_free
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lmem_free
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size syna_tcm_testing_trx_trx_short, .-syna_tcm_testing_trx_trx_short
.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.Lmutex_name:
    .asciz "(struct mutex *)ptr"
.Lfail_test:
    .asciz "\0013[error] %s: Fail to run test PID%d\n"
.Lfunction:
    .asciz "syna_tcm_testing_trx_trx_short"
.Lfail:
    .asciz "fail"
.Lpass:
    .asciz "pass"
.Lresult:
    .asciz "\0016[info ] %s: Result = %s\n"
.Lbuffer_used:
    .asciz "\0013[error] %s: Buffer still in used, %d references\n"
.Lbuffer_release:
    .asciz "syna_tcm_buf_release"
.Linvalid_device:
    .asciz "\0013[error] %s: Invalid managed device\n"
.Lmem_free:
    .asciz "syna_pal_mem_free"

.section .bss,"aw",@nobits
.align 0
    .zero 0x961
