.section .text,"ax",@progbits
.align 2
.global syna_dev_set_tp_report_rate
.type syna_dev_set_tp_report_rate, %function
    .word 0x1eb3b73d
syna_dev_set_tp_report_rate:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0x2a0103f5
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x696b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x696b
    .inst 0x2a0203f3
    .inst 0xaa0003f4
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x9664
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x9664
    .inst 0xaa0103e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0xb4000254
    .inst 0x710006bf
    .inst 0x5400024d
    .inst 0x71000abf
    .inst 0x54000380
    .inst 0x71000ebf
    .inst 0x54000580
    .inst 0x710012bf
    .inst 0x54000761
    .inst 0xf9400280
    .inst 0x52801cc1
    .inst 0x52800022
    .inst 0x2a1303e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_set_dynamic_config
    .inst 0x37f80600
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x6dca
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x6dca
    .inst 0x14000029
    .inst 0x128002a0
    .inst 0x1400002b
    .inst 0x340002b5
    .inst 0x710006bf
    .inst 0x540005a1
    .inst 0xf9400280
    .inst 0x52801cc1
    .inst 0x528000a2
    .inst 0x2a1303e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_set_dynamic_config
    .inst 0x37f80440
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x859f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x859f
    .inst 0x1400001b
    .inst 0xf9400280
    .inst 0x52801cc1
    .inst 0x52800082
    .inst 0x2a1303e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_set_dynamic_config
    .inst 0x37f80320
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x5b3f
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x5b3f
    .inst 0x14000012
    .inst 0xf9400280
    .inst 0x52801cc1
    .inst 0x2a1f03e2
    .inst 0x2a1303e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_set_dynamic_config
    .inst 0x37f80200
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x3f81
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x3f81
    .inst 0x14000009
    .inst 0xf9400280
    .inst 0x52801cc1
    .inst 0x52800062
    .inst 0x2a1303e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, syna_tcm_set_dynamic_config
    .inst 0x37f800e0
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x25b2
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x25b2
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x696b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x696b
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x2a1f03e0
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x90000001
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0x696b
    .inst 0x91000021
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0x696b
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .rodata.str1.1+0xacae
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .rodata.str1.1+0xacae
    .inst 0xaa0103e2
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _printk
    .inst 0x17fffff4
.size syna_dev_set_tp_report_rate, .-syna_dev_set_tp_report_rate

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
    .include "syna_dev_set_tp_report_rate_exact.inc"
