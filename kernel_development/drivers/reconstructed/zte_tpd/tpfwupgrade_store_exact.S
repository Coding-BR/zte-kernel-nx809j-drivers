.section .text,"ax",@progbits
.align 2
.global tpfwupgrade_store
.type tpfwupgrade_store, %function
.inst 0xc3d43b4d
tpfwupgrade_store:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9017bfd
    .inst 0xa90257f6
    .inst 0xa9034ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xaa0203f3
    .inst 0xaa0103e0
    .inst 0xf9438908
    .inst 0x910013e3
    .inst 0xaa0203e1
    .inst 0x52800142
    .inst 0xf90007e8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, tpd_cdev
    .inst 0xf9400114
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, tpd_cdev
    .inst 0xb90007ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kstrtouint_from_user
    .inst 0x340001c0
    .inst 0x928002b3
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000ae1
    .inst 0xaa1303e0
    .inst 0xa9434ff4
    .inst 0xa94257f6
    .inst 0xa9417bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xb94007e2
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpfwupgrade_log
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpfwupgrade_log
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpfwupgrade_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpfwupgrade_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x91318280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xb94007e8
    .inst 0xf9462e80
    .inst 0x71002d1f
    .inst 0x54000443
    .inst 0xb40000e0
    .inst 0xf9400408
    .inst 0xb4000088
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vfree
    .inst 0xf9462e80
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xb9044a9f
    .inst 0xd503201f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x28
    .inst 0x5281b801
    .inst 0x52800302
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x28
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xf9062e80
    .inst 0xb4000840
    .inst 0xd503201f
    .inst 0xb94007e8
    .inst 0x91006100
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vmalloc_noprof
    .inst 0xf9462e88
    .inst 0xf9000500
    .inst 0xf9462e88
    .inst 0xf9400509
    .inst 0xb4000489
    .inst 0xb94007e9
    .inst 0x2a1f03e1
    .inst 0xf9000109
    .inst 0x91006122
    .inst 0xf9462e88
    .inst 0xf9400500
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memset
    .inst 0x14000019
    .inst 0xb4000300
    .inst 0xf9470e88
    .inst 0xb4000188
    .inst 0xaa1403e0
    .inst 0xaa1f03e1
    .inst 0x2a1f03e2
    .inst 0xb85fc110
    .inst 0x728a1491
    .inst 0x72a9aed1
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xf9462e80
    .inst 0xf9400408
    .inst 0xb40000c8
    .inst 0xaa0803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vfree
    .inst 0xf9462e88
    .inst 0xf900051f
    .inst 0xf9462e80
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0xf9062e9f
    .inst 0xb9044a9f
    .inst 0x91318280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x17ffffad
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpfwupgrade_data_error
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpfwupgrade_data_error
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9462e80
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x92800173
    .inst 0x17fffff7
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, kmalloc_caches+0x28
    .inst 0xd5384115
    .inst 0xf9402ab6
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, kmalloc_caches+0x28
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .codetag.alloc_tags+0x78
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .codetag.alloc_tags+0x78
    .inst 0x5281b801
    .inst 0x52800302
    .inst 0xf9002aa8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_cache_noprof
    .inst 0xf9002ab6
    .inst 0xf9062e80
    .inst 0xb5fff800
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_tpfwupgrade_struct_error
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_tpfwupgrade_struct_error
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x92800173
    .inst 0x17ffffe4
    .inst 0xb94007e8
    .inst 0xd5384115
    .inst 0xf9402ab6
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .codetag.alloc_tags+0xa0
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .codetag.alloc_tags+0xa0
    .inst 0x91006100
    .inst 0xf9002aa9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, vmalloc_noprof
    .inst 0xf9002ab6
    .inst 0x17ffffb5
.size tpfwupgrade_store, .-tpfwupgrade_store

.section .rodata.str1.1,"aMS",@progbits,1
.L_tpfwupgrade_log:
.asciz "\0015tpd: %s val %d.\n"
.L_tpfwupgrade_name:
.asciz "tpfwupgrade_store"
.L_tpfwupgrade_data_error:
.asciz "\0013tpd: alloc tp_firmware->data failed"
.L_tpfwupgrade_struct_error:
.asciz "\0013tpd:alloc struct firmware failed"

.section .codetag.alloc_tags,"aw",@progbits
.align 3
.zero 0xb0
