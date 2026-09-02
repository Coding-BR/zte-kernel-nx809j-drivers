.section .text,"ax",@progbits
.align 2
.global aw22xxx_set_breath_data
.type aw22xxx_set_breath_data, %function
    .word 0x701625b6
aw22xxx_set_breath_data:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0x39402028
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_exact_data_base+0x3f
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_exact_data_base+0x3f
    .inst 0xaa0003f3
    .inst 0xaa1f03f4
    .inst 0x90000015
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw22xxx_blink_cfg
    .inst 0x910002b5
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw22xxx_blink_cfg
    .inst 0x39000128
    .inst 0x39402428
    .inst 0x39001928
    .inst 0x39402828
    .inst 0x39003128
    .inst 0x39402c28
    .inst 0x39004928
    .inst 0x39403028
    .inst 0x39006128
    .inst 0x39403428
    .inst 0x39007928
    .inst 0x39403828
    .inst 0x39009128
    .inst 0x39403c28
    .inst 0x3900a928
    .inst 0x39404028
    .inst 0x3900c128
    .inst 0x39404428
    .inst 0x3900d928
    .inst 0x39404828
    .inst 0x3900f128
    .inst 0x39404c28
    .inst 0x39010928
    .inst 0x39405028
    .inst 0x39012128
    .inst 0x39013928
    .inst 0x39015128
    .inst 0x39405428
    .inst 0x39016928
    .inst 0x39018128
    .inst 0x39019928
    .inst 0x39405828
    .inst 0x3901b128
    .inst 0x3901c928
    .inst 0x3901e128
    .inst 0x39405c28
    .inst 0x3901f928
    .inst 0x39021128
    .inst 0x39022928
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, duration
    .inst 0x39406028
    .inst 0x39000128
    .reloc .-4, R_AARCH64_LDST8_ABS_LO12_NC, duration
    .inst 0x8b1402a8
    .inst 0xaa1303e0
    .inst 0x39400502
    .inst 0x39400101
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, aw22xxx_i2c_write
    .inst 0xf1024a9f
    .inst 0x91000a94
    .inst 0x54ffff23
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
.size aw22xxx_set_breath_data, .-aw22xxx_set_breath_data

.section .note.GNU-stack,"",@progbits
