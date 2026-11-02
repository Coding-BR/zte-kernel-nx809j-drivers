.section .text,"ax",@progbits
.align 2
.global aw9620x_irq_handle_func
.type aw9620x_irq_handle_func, %function
    .word 0xd8f3a1da
aw9620x_irq_handle_func:
    .inst 0xd503233f
    .inst 0xd101c3ff
    .inst 0xa9017bfd
    .inst 0xa9026ffc
    .inst 0xa90367fa
    .inst 0xa9045ff8
    .inst 0xa90557f6
    .inst 0xa9064ff4
    .inst 0x910043fd
    .inst 0xd5384108
    .inst 0x910013e2
    .inst 0x52888201
    .inst 0xf9438908
    .inst 0xaa0003f3
    .inst 0xf90007e8
    .inst 0xf90003ff
    .inst 0x940000b7
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0x37f81160
    .inst 0x394013e8
    .inst 0x36000108
    .inst 0xb9400a68
    .inst 0x7100091f
    .inst 0x54001602
    .inst 0x90000009
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_bss_base
    .inst 0x91000129
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_bss_base
    .inst 0x5280002a
    .inst 0x3828692a
    .inst 0x910003e2
    .inst 0xaa1303e0
    .inst 0x52834301
    .inst 0x940000a9
    .reloc .-4, R_AARCH64_CALL26, aw9620x_i2c_read
    .inst 0x37f810c0
    .inst 0xb94003fb
    .inst 0x2a1f03fa
    .inst 0x90000014
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x272f
    .inst 0x91000294
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x272f
    .inst 0x90000016
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x377e
    .inst 0x910002d6
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x377e
    .inst 0x90000017
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x14c6
    .inst 0x910002f7
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x14c6
    .inst 0x90000018
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0xd32
    .inst 0x91000318
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0xd32
    .inst 0x92802ffc
    .inst 0x90000019
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ec1
    .inst 0x91000339
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ec1
    .inst 0x14000014
    .inst 0x8b1c0108
    .inst 0x52800061
    .inst 0x52800322
    .inst 0xf940c500
    .inst 0x52800063
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xf9410268
    .inst 0x2a1f03e1
    .inst 0x2a1f03e2
    .inst 0x2a1f03e3
    .inst 0x8b1c0108
    .inst 0xf940c500
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xf9410268
    .inst 0x8b1c0108
    .inst 0xb9018515
    .inst 0xb100c39c
    .inst 0x1100075a
    .inst 0x54000dc0
    .inst 0xf9410268
    .inst 0x8b1c0109
    .inst 0x3946012a
    .inst 0x34ffff4a
    .inst 0x321d034a
    .inst 0x1ada276b
    .inst 0xb9418529
    .inst 0x1aca276a
    .inst 0x12000175
    .inst 0x331f0155
    .inst 0x6b15013f
    .inst 0x54fffe40
    .inst 0x71000ebf
    .inst 0x54fffc00
    .inst 0x710006bf
    .inst 0x54000320
    .inst 0x35000d75
    .inst 0x8b1c0108
    .inst 0x52800061
    .inst 0x52800322
    .inst 0xf940c500
    .inst 0x2a1f03e3
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xb9400a68
    .inst 0x7100051f
    .inst 0x540004c0
    .inst 0x35fffb28
    .inst 0xf9410268
    .inst 0x52800021
    .inst 0x52800822
    .inst 0x2a1f03e3
    .inst 0x8b1c0108
    .inst 0xf940c500
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xf9401a61
    .inst 0xaa1403e0
    .inst 0xaa1903e2
    .inst 0xaa1603e3
    .inst 0x52814fa4
    .inst 0x14000032
    .inst 0x8b1c0108
    .inst 0x52800061
    .inst 0x52800322
    .inst 0xf940c500
    .inst 0x52800023
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xb9400a68
    .inst 0x7100051f
    .inst 0x54000380
    .inst 0x35fff848
    .inst 0xf9410268
    .inst 0x52800021
    .inst 0x52800822
    .inst 0x52800023
    .inst 0x8b1c0108
    .inst 0xf940c500
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xf9401a61
    .inst 0xaa1403e0
    .inst 0xaa1703e2
    .inst 0xaa1603e3
    .inst 0x52815124
    .inst 0x1400001b
    .inst 0xf9410268
    .inst 0x52800021
    .inst 0x52800842
    .inst 0x2a1f03e3
    .inst 0x8b1c0108
    .inst 0xf940c500
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xf9401a61
    .inst 0xaa1403e0
    .inst 0xaa1803e2
    .inst 0xaa1603e3
    .inst 0x52815044
    .inst 0x1400000e
    .inst 0xf9410268
    .inst 0x52800021
    .inst 0x52800842
    .inst 0x52800023
    .inst 0x8b1c0108
    .inst 0xf940c500
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, input_event
    .inst 0xf9401a61
    .inst 0xaa1403e0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x169e
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x169e
    .inst 0xaa1603e3
    .inst 0x528151a4
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0x17ffff99
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x252a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x252a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x377e
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x377e
    .inst 0x52814c24
    .inst 0x14000009
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x252a
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x252a
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x377e
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x377e
    .inst 0x52814d64
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _dev_printk
    .inst 0xd5384108
    .inst 0xf9438908
    .inst 0xf94007e9
    .inst 0xeb09011f
    .inst 0x54000261
    .inst 0xa9464ff4
    .inst 0xa94557f6
    .inst 0xa9445ff8
    .inst 0xa94367fa
    .inst 0xa9426ffc
    .inst 0xa9417bfd
    .inst 0x9101c3ff
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0xf9401a61
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x1ea0
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x1ea0
    .inst 0x90000002
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x10dc
    .inst 0x91000042
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x10dc
    .inst 0x90000003
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, aw9620x_rodata_str_base+0x377e
    .inst 0x91000063
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, aw9620x_rodata_str_base+0x377e
    .inst 0x52815284
    .inst 0x17ffffe9
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
    .inst 0xd42aa240
.size aw9620x_irq_handle_func, .-aw9620x_irq_handle_func
