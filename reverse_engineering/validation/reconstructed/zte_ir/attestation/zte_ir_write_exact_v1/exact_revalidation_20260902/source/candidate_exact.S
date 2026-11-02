.section .text,"ax",@progbits
.align 2
.global zte_ir_write
.type zte_ir_write, %function
    .word 0xc3d43b4d
zte_ir_write:
    .inst 0xd503233f
    .inst 0xd10503ff
    .inst 0xa9107bfd
    .inst 0xa9115ffc
    .inst 0xa91257f6
    .inst 0xa9134ff4
    .inst 0x910403fd
    .inst 0xd5384108
    .inst 0xaa0103f4
    .inst 0xaa0003f5
    .inst 0xf9438908
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0xf3
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0xf3
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0xd9
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0xd9
    .inst 0xaa0203f3
    .inst 0xf81f83a8
    .inst 0xa907ffff
    .inst 0xa906ffff
    .inst 0xa905ffff
    .inst 0xa904ffff
    .inst 0xa903ffff
    .inst 0xa902ffff
    .inst 0xa901ffff
    .inst 0xa900ffff
    .inst 0xf90003ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf94012b5
    .inst 0x52871516
    .inst 0x72a00036
    .inst 0x8b1602a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xaa1403e0
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memdup_user
    .inst 0xb140041f
    .inst 0x54000269
    .inst 0x2a0003f4
    .inst 0x8b1602a0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x93407e88
    .inst 0x7100029f
    .inst 0x9a880260
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf85f83a9
    .inst 0xeb09011f
    .inst 0x54001361
    .inst 0xa9534ff4
    .inst 0xa95257f6
    .inst 0xa9515ffc
    .inst 0xa9507bfd
    .inst 0x910503ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xf100127f
    .inst 0x91404eb7
    .inst 0x54000062
    .inst 0x2a1f03e2
    .inst 0x14000059
    .inst 0xd291a6ef
    .inst 0xd342fe69
    .inst 0x5287108a
    .inst 0xf2b6bdaf
    .inst 0x5294240e
    .inst 0xaa1f03e2
    .inst 0xf2def40f
    .inst 0x2a1f03e8
    .inst 0x2a1f03ed
    .inst 0x72a0002a
    .inst 0x91001aab
    .inst 0x910012ac
    .inst 0x72a000ee
    .inst 0xf2e218cf
    .inst 0x52938810
    .inst 0x129387f1
    .inst 0x52800041
    .inst 0x14000005
    .inst 0x11000508
    .inst 0x93407d02
    .inst 0xeb02013f
    .inst 0x54000849
    .inst 0xd37ef443
    .inst 0xeb030263
    .inst 0xb7f80ea2
    .inst 0x54000e83
    .inst 0xf100107f
    .inst 0x54000e43
    .inst 0xb9488ae3
    .inst 0xb8627802
    .inst 0xd344fc63
    .inst 0x9ba33842
    .inst 0x9bcf7c42
    .inst 0xd350fc43
    .inst 0x0b0301a2
    .inst 0x53067c42
    .inst 0x7109c45f
    .inst 0x54000542
    .inst 0x91000942
    .inst 0x7200011f
    .inst 0x9a820142
    .inst 0x34fffd23
    .inst 0x6b0d0205
    .inst 0x51000466
    .inst 0x78626aa2
    .inst 0x1a8533e5
    .inst 0xeb0500df
    .inst 0x9a8530c5
    .inst 0x2a0d03e6
    .inst 0xf10008bf
    .inst 0x54000062
    .inst 0x2a1f03e4
    .inst 0x1400000d
    .inst 0x910004a4
    .inst 0xaa2503f4
    .inst 0x8b060565
    .inst 0xf2400087
    .inst 0x9a870027
    .inst 0xcb070084
    .inst 0x8b070287
    .inst 0x8b060086
    .inst 0xb10008e7
    .inst 0x781fe0a2
    .inst 0x780044a2
    .inst 0x54ffffa1
    .inst 0x6b1001bf
    .inst 0x8b060585
    .inst 0x0b110087
    .inst 0x1a9031ad
    .inst 0x4b030083
    .inst 0x0b0d00e7
    .inst 0x2a0603ed
    .inst 0x34000887
    .inst 0x31000463
    .inst 0x110005ad
    .inst 0x110004e7
    .inst 0x780024a2
    .inst 0x54ffff63
    .inst 0x17ffffc4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x56
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x56
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0xd9
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0xd9
    .inst 0x52938802
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x928002a0
    .inst 0x17ffff99
    .inst 0x531f79a2
    .inst 0xa907ffff
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x34
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x34
    .inst 0xa906ffff
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0xd9
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0xd9
    .inst 0xa905ffff
    .inst 0xa904ffff
    .inst 0xa903ffff
    .inst 0xa902ffff
    .inst 0xa901ffff
    .inst 0xa900ffff
    .inst 0xb9488ae8
    .inst 0xb90013e2
    .inst 0xb9005be8
    .inst 0x910012a8
    .inst 0xf90003e8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xd101e3a8
    .inst 0xf9444ae0
    .inst 0x910003ea
    .inst 0x91016109
    .inst 0xa93effbf
    .inst 0xd101e3a1
    .inst 0xa93dffbf
    .inst 0xa93cffbf
    .inst 0xa93bffbf
    .inst 0xa93affbf
    .inst 0xa939ffbf
    .inst 0xf81883a8
    .inst 0xf81903a8
    .inst 0xf81e03a9
    .inst 0xf81e83a9
    .inst 0x9101c149
    .inst 0xf81903a9
    .inst 0xa90723e8
    .inst 0xf81883a9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, spi_sync
    .inst 0x2a0003f4
    .inst 0x340000c0
    .inst 0xf9444ae0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0xa1
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0xa1
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_err
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0x26
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0x26
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_exact_rodata_str_base+0xd9
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_ir_exact_rodata_str_base+0xd9
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffff5f
    .inst 0xd42aa240
    .inst 0xd4200020
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size zte_ir_write, .-zte_ir_write
