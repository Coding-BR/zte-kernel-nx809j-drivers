.section .text,"ax",@progbits
.align 2
.global haptic_i2c_writes
.type haptic_i2c_writes, %function
haptic_i2c_writes:
    .inst 0xd503233f
    .inst 0xa9bb7bfd
    .inst 0xa90167fa
    .inst 0xa9025ff8
    .inst 0xa90357f6
    .inst 0xa9044ff4
    .inst 0x910003fd
    .inst 0x2a0303f5
    .inst 0xaa0203f7
    .inst 0x2a0103f3
    .inst 0xaa0003f6
    .inst 0xd503201f
    .inst 0x110006b8
    .inst 0x52819801
    .inst 0xaa1803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003f4
    .inst 0xb40005d4
    .inst 0xb40003d8
    .inst 0xf1000708
    .inst 0x2a1503e2
    .inst 0x39000293
    .inst 0x9a8833e1
    .inst 0xeb02003f
    .inst 0x54000323
    .inst 0x91000680
    .inst 0xaa1703e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0xf940f6c0
    .inst 0x110006a2
    .inst 0xaa1403e1
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, i2c_transfer_buffer_flags
    .inst 0x2a0003f5
    .inst 0x37f80080
    .inst 0xaa1403e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x1400001b
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0x8f7
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0x8f7
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb9a
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb9a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_rodata_str_base+0xb18
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_rodata_str_base+0xb18
    .inst 0x12001e64
    .inst 0x52800682
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff4
    .inst 0xd4200020
    .inst 0x52800220
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __fortify_panic
    .inst 0x110006b8
    .inst 0xd5384119
    .inst 0xf9402b3a
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw86320_codetag_base
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw86320_codetag_base
    .inst 0xaa1803e0
    .inst 0x52819801
    .inst 0xf9002b28
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003f4
    .inst 0xf9002b3a
    .inst 0xb5fffa94
    .inst 0x12800175
    .inst 0x2a1503e0
    .inst 0xa9444ff4
    .inst 0xa94357f6
    .inst 0xa9425ff8
    .inst 0xa94167fa
    .inst 0xa8c57bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size haptic_i2c_writes, .-haptic_i2c_writes
