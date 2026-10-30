.section .text,"ax",@progbits
.align 2
.global aw22xxx_cfg_loaded
.type aw22xxx_cfg_loaded, %function
.word 0x879dc3f4
aw22xxx_cfg_loaded:
    .inst 0xd503233f
    .inst 0xa9bb7bfd
    .inst 0xa90167fa
    .inst 0xa9025ff8
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910003fd
    .inst 0xaa0103f3
    .inst 0xaa0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1515
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1515
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb9430262
    .inst 0xb5000134
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x3b4
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x3b4
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1515
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1515
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1f03e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, release_firmware
    .inst 0x14000021
    .inst 0xf9400283
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x3d8
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x3d8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1515
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1515
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xf9400288
    .inst 0xb5000408
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, release_firmware
    .inst 0xb942f268
    .inst 0x7100311f
    .inst 0x54000a48
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_base+0x140
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_base+0x140
    .inst 0xaa1303e0
    .inst 0x38686928
    .inst 0x528001e9
    .inst 0x52801fe1
    .inst 0x2a1f03e2
    .inst 0x71003d1f
    .inst 0x1a893114
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1303e0
    .inst 0x52800161
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x850
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x850
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1515
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1515
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xa9444ff4
    .inst 0xa94357f6
    .inst 0xa9425ff8
    .inst 0xa94167fa
    .inst 0xa8c57bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xaa1f03fa
    .inst 0x2a1f03f6
    .inst 0x910c3275
    .inst 0x52800057
    .inst 0x52801578
    .inst 0x52800219
    .inst 0x14000009
    .inst 0x39400502
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x93407efa
    .inst 0xf9400288
    .inst 0x11000af7
    .inst 0xeb1a011f
    .inst 0x54fffa69
    .inst 0xf9400688
    .inst 0x8b1a0108
    .inst 0x39400101
    .inst 0x7103fc3f
    .inst 0x54000041
    .inst 0x39400516
    .inst 0x394c1269
    .inst 0x7100053f
    .inst 0x54000200
    .inst 0x710006df
    .inst 0x540001c1
    .inst 0x51004029
    .inst 0x71006d3f
    .inst 0x54fffd62
    .inst 0x12001d28
    .inst 0x1b187d08
    .inst 0x53097d08
    .inst 0x0b08050a
    .inst 0xb8685aa8
    .inst 0x4b0a0129
    .inst 0x531d1129
    .inst 0x4b090329
    .inst 0x1ac92502
    .inst 0x17ffffe2
    .inst 0x39400502
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0x35fffc16
    .inst 0xf9400688
    .inst 0x8b1a0108
    .inst 0x39400109
    .inst 0x7100093f
    .inst 0x54fffb61
    .inst 0x39400508
    .inst 0x3607fb28
    .inst 0x5280fa00
    .inst 0x52813881
    .inst 0x52800042
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, usleep_range_state
    .inst 0x17ffffd4
    .inst 0xd42aa240
.size aw22xxx_cfg_loaded, .-aw22xxx_cfg_loaded
.section .note.GNU-stack,"",@progbits
