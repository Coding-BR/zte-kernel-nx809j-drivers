.section .text,"ax",@progbits
.align 2
.global aw22xxx_cfg_update_wait_from_dyn_name
.type aw22xxx_cfg_update_wait_from_dyn_name, %function
aw22xxx_cfg_update_wait_from_dyn_name:
    .inst 0xd503233f
    .inst 0xd100c3ff
    .inst 0xa9017bfd
    .inst 0xf90013f3
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0xaa0003f3
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x8dd
    .inst 0xf9438908
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x10f6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x10f6
    .inst 0xf90007e8
    .inst 0xf90003ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x394bbe68
    .inst 0x7100091f
    .inst 0x540004c1
    .inst 0xb9430268
    .inst 0x7100091f
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, g_init_flg
    .inst 0x540000a1
    .inst 0x39400109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_init_flg
    .inst 0x390d227f
    .inst 0x360000c9
    .inst 0x14000009
    .inst 0x39400109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_init_flg
    .inst 0x5280002a
    .inst 0x390d226a
    .inst 0x370000a9
    .inst 0x52800029
    .inst 0xaa1303e0
    .inst 0x39000109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, g_init_flg
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_init_cfg_update_array
    .inst 0xf9400662
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_dyn_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_dyn_name
    .inst 0x910003e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, request_firmware
    .inst 0x35000260
    .inst 0xf94003e0
    .inst 0xaa1303e1
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_cfg_loaded
    .inst 0x52800280
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, msleep
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x540001e1
    .inst 0xa9417bfd
    .inst 0xf94013f3
    .inst 0x9100c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x6c2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x6c2
    .inst 0x14000003
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1359
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1359
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x10f6
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x10f6
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffee
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw22xxx_cfg_update_wait_from_dyn_name, .-aw22xxx_cfg_update_wait_from_dyn_name
.section .note.GNU-stack,"",@progbits
