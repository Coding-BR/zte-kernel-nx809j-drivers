.section .text,"ax",@progbits
.align 2
.global syna_tcm_set_game_partition_config
.type syna_tcm_set_game_partition_config, %function
    .word 0x1dbae285
syna_tcm_set_game_partition_config:
    .inst 0xd503233f
    .inst 0xd10243ff
    .inst 0xa9037bfd
    .inst 0xa9046ffc
    .inst 0xa90567fa
    .inst 0xa9065ff8
    .inst 0xa90757f6
    .inst 0xa9084ff4
    .inst 0x9100c3fd
    .inst 0x2a0403f5
    .inst 0xaa0303f6
    .inst 0x2a0203f9
    .inst 0x2a0103f7
    .inst 0xaa0003fa
    .inst 0xd503201f
    .inst 0x11000728
    .inst 0x52819801
    .inst 0x93407d18
    .inst 0xaa1803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003f4
    .inst 0xb40006fa
    .inst 0x39402742
    .inst 0x7100045f
    .inst 0x54000321
    .inst 0x350000b5
    .inst 0xf9402748
    .inst 0x39405108
    .inst 0x36000388
    .inst 0x2a1f03f5
    .inst 0x0b190728
    .inst 0xf9000bfa
    .inst 0xb81ec3b5
    .inst 0x531f791c
    .inst 0x11008393
    .inst 0xd503201f
    .inst 0x93407e60
    .inst 0x52819801
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003fa
    .inst 0xb400071a
    .inst 0x93407e61
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_game_partition_config_out_values
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_game_partition_config_out_values
    .inst 0xaa1a03e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x2a0003fb
    .inst 0xb5000678
    .inst 0x14000083
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_game_partition_config_mode
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_game_partition_config_mode
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_game_partition_config_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_game_partition_config_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x1400005e
    .inst 0xb9420f55
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_game_partition_config_no_irq
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_game_partition_config_no_irq
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_game_partition_config_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_game_partition_config_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffe0
    .inst 0x11000728
    .inst 0xd5384113
    .inst 0xf9402a74
    .inst 0x93407d18
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_tcm_set_game_partition_config._alloc_tag
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_tcm_set_game_partition_config._alloc_tag
    .inst 0x52819801
    .inst 0xf9002a68
    .inst 0xaa1803e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xf9002a74
    .inst 0xaa0003f4
    .inst 0xb5fff97a
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_game_partition_config_invalid
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_game_partition_config_invalid
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_game_partition_config_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_game_partition_config_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x14000043
    .inst 0x93407e60
    .inst 0xaa1403fb
    .inst 0xd5384114
    .inst 0xf9402a95
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, syna_tcm_set_game_partition_config._alloc_tag.61
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, syna_tcm_set_game_partition_config._alloc_tag.61
    .inst 0x52819801
    .inst 0xf9002a88
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __kmalloc_noprof
    .inst 0xaa0003fa
    .inst 0xf9002a95
    .inst 0xaa1b03f4
    .inst 0xb5fff95a
    .inst 0x2a1f03fb
    .inst 0xb4000a58
    .inst 0x11000728
    .inst 0xb9000ff7
    .inst 0x7100091f
    .inst 0xf81f03a8
    .inst 0xf81f83b4
    .inst 0x39000297
    .inst 0x5400036b
    .inst 0xa97f27a8
    .inst 0xaa1f03f4
    .inst 0x11006397
    .inst 0x9000001c
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_game_partition_config_hex
    .inst 0x9100039c
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_game_partition_config_hex
    .inst 0x91000535
    .inst 0xd1000519
    .inst 0x14000004
    .inst 0x91000694
    .inst 0xeb14033f
    .inst 0x54000200
    .inst 0x91000688
    .inst 0xeb08031f
    .inst 0x540007a9
    .inst 0x38746ac3
    .inst 0x38346aa3
    .inst 0xb4ffff1a
    .inst 0x6b17037f
    .inst 0x54fffeca
    .inst 0x4b1b0268
    .inst 0x8b3bc340
    .inst 0xaa1c03e2
    .inst 0x93407d01
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, snprintf
    .inst 0x0b1b001b
    .inst 0x17ffffef
    .inst 0xb500037a
    .inst 0xf9400be0
    .inst 0xa97f0bb4
    .inst 0xb85ec3a5
    .inst 0x528018e1
    .inst 0xaa1f03e4
    .inst 0xf941cc08
    .inst 0x2a1403e3
    .inst 0xb85fc110
    .inst 0x728751d1
    .inst 0x72a48411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0xb9400fe9
    .inst 0x37f80280
    .inst 0x2a1f03e0
    .inst 0xa9484ff4
    .inst 0xa94757f6
    .inst 0xa9465ff8
    .inst 0xa94567fa
    .inst 0xa9446ffc
    .inst 0xa9437bfd
    .inst 0x910243ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_game_partition_config_info
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_game_partition_config_info
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_game_partition_config_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_game_partition_config_name
    .inst 0xaa1a03e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xaa1a03e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x17ffffde
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_game_partition_config_fail
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_game_partition_config_fail
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_set_game_partition_config_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_set_game_partition_config_name
    .inst 0x12001d24
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x528018e2
    .inst 0x2a1403e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e0
    .inst 0x17ffffe3
    .inst 0xd4200020
.size syna_tcm_set_game_partition_config, .-syna_tcm_set_game_partition_config

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_syna_tcm_set_game_partition_config_out_values:
    .asciz "out values: "
.L_syna_tcm_set_game_partition_config_mode:
    .asciz "\0015[info ] %s: Device is not in application fw mode, mode: %x\n"
.L_syna_tcm_set_game_partition_config_name:
    .asciz "syna_tcm_set_game_partition_config"
.L_syna_tcm_set_game_partition_config_no_irq:
    .asciz "\0013[error] %s: No support of IRQ control, use polling mode instead\n"
.L_syna_tcm_set_game_partition_config_invalid:
    .asciz "\0013[error] %s: Invalid tcm device handle\n"
.L_syna_tcm_set_game_partition_config_hex:
    .asciz "%02x "
.L_syna_tcm_set_game_partition_config_info:
    .asciz "\0016[info ] %s: %s"
.L_syna_tcm_set_game_partition_config_fail:
    .asciz "\0013[error] %s: Fail to send command 0x%02x to set %d to field 0x%x\n"

.section .codetag.alloc_tags,"aw",@progbits
.align 3
.zero 0x280
.type syna_tcm_set_game_partition_config._alloc_tag, %object
syna_tcm_set_game_partition_config._alloc_tag:
    .zero 0x8
.zero 0x20
.type syna_tcm_set_game_partition_config._alloc_tag.61, %object
syna_tcm_set_game_partition_config._alloc_tag.61:
    .zero 0x8
.section .note.GNU-stack,"",@progbits
