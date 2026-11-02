.section .text,"ax",@progbits
.align 2
.inst 0x95c41a97
.global aw22xxx_multi_breath_pattern_store
.type aw22xxx_multi_breath_pattern_store, %function
aw22xxx_multi_breath_pattern_store:
    .inst 0xd503233f
    .inst 0xd10103ff
    .inst 0xa9017bfd
    .inst 0xf90013f5
    .inst 0xa9034ff4
    .inst 0x910043fd
    .inst 0xd5384109
    .inst 0xaa0203e8
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x542
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x542
    .inst 0xf9438929
    .inst 0x910013e2
    .inst 0xaa0303f3
    .inst 0xf90007e9
    .inst 0xf9404c15
    .inst 0xaa0803e0
    .inst 0xb90007ff
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, sscanf
    .inst 0x7100041f
    .inst 0x54000741
    .inst 0xb94007e8
    .inst 0xd10042b4
    .inst 0xb902faa8
    .inst 0x340003a8
    .inst 0x7100051f
    .inst 0x54000681
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x61b8
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x61b0
    .inst 0x394002a8
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b8
    .inst 0xb900013f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b0
    .inst 0x370005e8
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x61b4
    .inst 0xb9400108
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b4
    .inst 0x34000588
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_play
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_play
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xb42
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xb42
    .inst 0x90000004
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x896
    .inst 0x91000084
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x896
    .inst 0xaa1403e1
    .inst 0x12800002
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kthread_create_on_node
    .inst 0xb140041f
    .inst 0x540005a9
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, cfg_update_kthread
    .inst 0x390002bf
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b8
    .inst 0xf9000100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, cfg_update_kthread
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0xf7b
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0xf7b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x1400001a
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x61b8
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x61b0
    .inst 0x39400109
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b8
    .inst 0xb900015f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b0
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_bss_base+0x61b4
    .inst 0xb900015f
    .reloc .-4, R_AARCH64_LDST32_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b4
    .inst 0x7100053f
    .inst 0x54000041
    .inst 0x3900011f
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b8
    .inst 0xaa1403e0
    .inst 0x52801fe1
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1403e0
    .inst 0x528000a1
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1403e0
    .inst 0x52800081
    .inst 0x52800022
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xaa1403e0
    .inst 0x52800041
    .inst 0x2a1f03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000241
    .inst 0xaa1303e0
    .inst 0xa9434ff4
    .inst 0xf94013f5
    .inst 0xa9417bfd
    .inst 0x910103ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xaa0003f4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, wake_up_process
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, cfg_update_kthread
    .inst 0x52800029
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_rodata_str_base+0x1631
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_rodata_str_base+0x1631
    .inst 0xf9000114
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, cfg_update_kthread
    .inst 0x390002a9
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, aw22xxx_exact_bss_base+0x61b8
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffeb
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size aw22xxx_multi_breath_pattern_store, .-aw22xxx_multi_breath_pattern_store
.section .note.GNU-stack,"",@progbits
