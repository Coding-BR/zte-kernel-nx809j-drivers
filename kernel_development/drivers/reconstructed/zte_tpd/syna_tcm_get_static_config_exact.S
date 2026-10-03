.section .text,"ax",@progbits
.align 2
.global syna_tcm_get_static_config
.type syna_tcm_get_static_config, %function
    .word 0x135bb445
syna_tcm_get_static_config:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xa90157f6
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0xb40007c0
    .inst 0x2a0203f4
    .inst 0x39402402
    .inst 0xaa0003f3
    .inst 0x7100045f
    .inst 0x54000801
    .inst 0x2a0303f6
    .inst 0xaa0103f5
    .inst 0x350000a3
    .inst 0xf9402668
    .inst 0x39405108
    .inst 0x36000a68
    .inst 0x2a1f03f6
    .inst 0x79416a63
    .inst 0x6b14007f
    .inst 0x540007a8
    .inst 0xf941ce68
    .inst 0xaa1303e0
    .inst 0x52800421
    .inst 0xaa1f03e2
    .inst 0x2a1f03e3
    .inst 0xaa1f03e4
    .inst 0x2a1603e5
    .inst 0xb85fc110
    .inst 0x728751d1
    .inst 0x72a48411
    .inst 0x6b11021f
    .inst 0x54000040
    .inst 0xd4304500
    .inst 0xd63f0100
    .inst 0x37f806c0
    .inst 0xb4000b55
    .inst 0xb9415668
    .inst 0x6b14011f
    .inst 0x54000ae8
    .inst 0x39462262
    .inst 0x35000822
    .inst 0x91056260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0x39462268
    .inst 0xf940a661
    .inst 0x11000508
    .inst 0x39062268
    .inst 0xb40008c1
    .inst 0xb9415664
    .inst 0xb9415262
    .inst 0x6b14009f
    .inst 0x54000788
    .inst 0x6b02009f
    .inst 0x54000748
    .inst 0xaa1503e0
    .inst 0xaa0403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, memcpy
    .inst 0x39462262
    .inst 0x7100045f
    .inst 0x540008e1
    .inst 0x2a1f03e8
    .inst 0x91056260
    .inst 0x39062268
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0x2a1f03e0
    .inst 0x1400003c
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_invalid
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_invalid
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x14000035
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_mode
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_mode
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x1400002e
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_buffer_input
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_buffer_input
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_name
    .inst 0x2a1403e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x12801e00
    .inst 0x14000026
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_send_fail
    .inst 0x91000108
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_send_fail
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_name
    .inst 0x2a0003f3
    .inst 0xaa0803e0
    .inst 0x52800422
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1303e0
    .inst 0x1400001c
    .inst 0xb9420e76
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_info
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_info
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffa9
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_buf_balance
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_buf_balance
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_buf_lock
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_buf_lock
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17ffffbb
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_invalid_size
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_invalid_size
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_pal_mem_cpy
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_pal_mem_cpy
    .inst 0x2a1403e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_copy_fail
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_copy_fail
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_name
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_name
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x91052260
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_buf_unlock
    .inst 0x128002a0
    .inst 0xa9424ff4
    .inst 0xa94157f6
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_buf_balance
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_buf_balance
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .L_syna_tcm_get_static_config_buf_unlock
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .L_syna_tcm_get_static_config_buf_unlock
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x39462268
    .inst 0x51000508
    .inst 0x17ffffb4
.size syna_tcm_get_static_config, .-syna_tcm_get_static_config

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.L_syna_tcm_get_static_config_invalid:
    .asciz "\0013[error] %s: Invalid tcm device handle\n"
.L_syna_tcm_get_static_config_name:
    .asciz "syna_tcm_get_static_config"
.L_syna_tcm_get_static_config_mode:
    .asciz "\0013[error] %s: Device is not in application fw mode, mode: %x\n"
.L_syna_tcm_get_static_config_buffer_input:
    .asciz "\0013[error] %s: Invalid buffer input, given size: %d (actual: %d)\n"
.L_syna_tcm_get_static_config_send_fail:
    .asciz "\0013[error] %s: Fail to send command 0x%02x\n"
.L_syna_tcm_get_static_config_info:
    .asciz "\0015[info ] %s: No support of IRQ control, use polling mode instead\n"
.L_syna_tcm_get_static_config_buf_balance:
    .asciz "\0013[error] %s: Buffer access out-of balance, %d\n"
.L_syna_tcm_get_static_config_buf_lock:
    .asciz "syna_tcm_buf_lock"
.L_syna_tcm_get_static_config_invalid_size:
    .asciz "\0013[error] %s: Invalid size. src:%d, dest:%d, size to copy:%d\n"
.L_syna_tcm_get_static_config_pal_mem_cpy:
    .asciz "syna_pal_mem_cpy"
.L_syna_tcm_get_static_config_copy_fail:
    .asciz "\0013[error] %s: Fail to copy static config data to caller\n"
.L_syna_tcm_get_static_config_buf_unlock:
    .asciz "syna_tcm_buf_unlock"
.section .note.GNU-stack,"",@progbits
