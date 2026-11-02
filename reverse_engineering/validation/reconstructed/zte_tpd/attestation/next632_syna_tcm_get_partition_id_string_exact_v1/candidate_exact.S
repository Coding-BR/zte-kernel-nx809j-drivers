.section .text,"ax",@progbits
.align 2
.global syna_tcm_get_partition_id_string
.type syna_tcm_get_partition_id_string, %function
    .word 0x11058819
syna_tcm_get_partition_id_string:
    .inst 0x51000408
    .inst 0x7100591f
    .inst 0x540000a8
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata+0x4910
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata+0x4910
    .inst 0xf8685920
    .inst 0xd65f03c0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x10ee
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x10ee
    .inst 0xd65f03c0
.size syna_tcm_get_partition_id_string, .-syna_tcm_get_partition_id_string

.section .rodata,"a",@progbits
.align 3
.zero 0x4910
.xword .L_partition_name_0, .L_partition_name_1, .L_partition_name_2
.xword .L_partition_name_3, .L_partition_name_4, .L_partition_name_5
.xword .L_partition_name_6, .L_partition_name_7, .L_partition_name_8
.xword .L_partition_name_9, .L_partition_name_10, .L_partition_name_11
.xword .L_partition_name_12, .L_partition_name_13, .L_partition_name_14
.xword .L_partition_name_15, .L_partition_name_16, .L_partition_name_17
.xword .L_partition_name_18, .L_partition_name_19, .L_partition_name_20
.xword .L_partition_name_21, .L_partition_name_22

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.zero 0x10ee
.L_partition_fallback:
    .asciz " "
.L_partition_name_0:
    .asciz "APP_CODE"
.L_partition_name_1:
    .asciz "APP_CODE_COPRO"
.L_partition_name_2:
    .asciz "APP_CONFIG"
.L_partition_name_3:
    .asciz "DISPLAY"
.L_partition_name_4:
    .asciz "BOOT_CODE"
.L_partition_name_5:
    .asciz "BOOT_CONFIG"
.L_partition_name_6:
    .asciz "APP_PROD_TEST"
.L_partition_name_7:
    .asciz "F35_APP_CODE"
.L_partition_name_8:
    .asciz "FORCE"
.L_partition_name_9:
    .asciz "GAMMA"
.L_partition_name_10:
    .asciz "TEMPERATURE_GAMM"
.L_partition_name_11:
    .asciz "LCM"
.L_partition_name_12:
    .asciz "LOOKUP"
.L_partition_name_13:
    .asciz "OEM"
.L_partition_name_14:
    .asciz "OPEN_SHORT"
.L_partition_name_15:
    .asciz "OTP"
.L_partition_name_16:
    .asciz "PPDT"
.L_partition_name_17:
    .asciz "ROMBOOT_APP_CODE"
.L_partition_name_18:
    .asciz "TOOL_BOOT_CONFIG"
.L_partition_name_19:
    .asciz "JSON_CONFIG_AREA"
.L_partition_name_20:
    .asciz "CUSTOM_CS_AREA"
.L_partition_name_21:
    .asciz "CUSTOM_LOCKDOWN_AREA"
.L_partition_name_22:
    .asciz "CUSTOM_MTP_AREA"
