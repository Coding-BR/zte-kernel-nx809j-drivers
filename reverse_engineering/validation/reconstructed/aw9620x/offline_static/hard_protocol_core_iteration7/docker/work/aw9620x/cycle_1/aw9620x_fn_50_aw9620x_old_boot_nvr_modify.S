.section .text,"ax",@progbits
.align 2
.global aw9620x_old_boot_nvr_modify
.type aw9620x_old_boot_nvr_modify, %function
aw9620x_old_boot_nvr_modify:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9017bfd
    .inst 0xf90013f5
    .inst 0xa9034ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0xf9438908
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x473
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x473
    .inst 0xaa0003f3
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xebd
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xebd
    .inst 0xf90007e8
    .inst 0xaa1503e3
    .inst 0x52820584
    .inst 0xf9401801
    .inst 0xaa1403e0
    .inst 0xb90007ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xa9428668
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x267f
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x267f
    .inst 0xaa1403e0
    .inst 0xaa1503e3
    .inst 0x528205e4
    .inst 0x79400505
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xaa1303e0
    .inst 0x52888881
    .inst 0x52a00022
    .inst 0x97ffe49f
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x340002e0
    .inst 0xf9401668
    .inst 0x52800245
    .inst 0x79400509
    .inst 0x7100493f
    .inst 0x54000080
    .inst 0x79000505
    .inst 0xf9401668
    .inst 0x79400505
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x267f
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x267f
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x473
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x473
    .inst 0x528206a4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xaa1303e0
    .inst 0x52888881
    .inst 0x52a00022
    .inst 0x97ffe489
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x35000b60
    .inst 0xaa1303e0
    .inst 0x529fe401
    .inst 0x12b86002
    .inst 0x97ffe484
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x910013e2
    .inst 0xaa1303e0
    .inst 0x5288e901
    .inst 0x97ffed3c
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0xb94007f4
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xacb
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xacb
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x473
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x473
    .inst 0x528207e4
    .inst 0x2a1403e5
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xaa1303e0
    .inst 0x34000774
    .inst 0x5288e901
    .inst 0x2a1f03e2
    .inst 0x97ffe470
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x528f2442
    .inst 0xaa1303e0
    .inst 0x5288f101
    .inst 0x72ab4c62
    .inst 0x97ffe46b
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xaa1303e0
    .inst 0x52890401
    .inst 0x528000c2
    .inst 0x97ffe467
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xaa1303e0
    .inst 0x5288e001
    .inst 0x52802202
    .inst 0x97ffe463
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xaa1303e0
    .inst 0x5288e681
    .inst 0x5288ca02
    .inst 0x97ffe45f
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xaa1303e0
    .inst 0x5288e081
    .inst 0x52882002
    .inst 0x97ffe45b
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xaa1303e0
    .inst 0x5288e201
    .inst 0x528004a2
    .inst 0x97ffe457
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xaa1303e0
    .inst 0x5288e581
    .inst 0x52801e02
    .inst 0x97ffe453
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xaa1303e0
    .inst 0x5288e281
    .inst 0x52800022
    .inst 0x97ffe44f
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x52827100
    .inst 0x52827241
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0xaa1303e0
    .inst 0x5288e081
    .inst 0x52882002
    .inst 0x97ffe447
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xaa1303e0
    .inst 0x5288e101
    .inst 0x2a1f03e2
    .inst 0x97ffe443
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xaa1303e0
    .inst 0x5288e201
    .inst 0x52800582
    .inst 0x97ffe43f
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xaa1303e0
    .inst 0x5288e281
    .inst 0x52800022
    .inst 0x97ffe43b
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x2a1f03e0
    .inst 0x14000016
    .inst 0x52888881
    .inst 0x2a1f03e2
    .inst 0x97ffe436
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0xaa1303e0
    .inst 0x529fe301
    .inst 0x52800782
    .inst 0x97ffe432
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_write
    .inst 0x52800320
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0x52800020
    .inst 0x1400000b
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x2c9b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x2c9b
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x395f
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x395f
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x473
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x473
    .inst 0x52820704
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x12800000
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540000e1
    .inst 0xa9434ff4
    .inst 0xf94013f5
    .inst 0xa9417bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw9620x_old_boot_nvr_modify, .-aw9620x_old_boot_nvr_modify
