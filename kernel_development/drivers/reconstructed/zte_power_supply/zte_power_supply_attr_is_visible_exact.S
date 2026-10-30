/* Mechanically lifted from stock power_supply_attr_is_visible@0x001032dc. */
.section .text,"ax",@progbits
.align 2
.globl power_supply_attr_is_visible
.type power_supply_attr_is_visible, %function
.word 0x053fcd94
power_supply_attr_is_visible:
  .inst 0xd503233f
  .inst 0xa9bf7bfd
  .inst 0x910003fd
  .inst 0x71004c5f
  .inst 0x54000542
  .inst 0x52800b08
  .inst 0x90000009
  .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_power_supply_attrs
  .inst 0x91000129
  .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_power_supply_attrs
  .inst 0x9ba87c48
  .inst 0xf8686928
  .inst 0xb40001e8
  .inst 0xf9404c00
  .inst 0xf9400008
  .inst 0xf9401509
  .inst 0xb4000169
  .inst 0xf940110a
  .inst 0xaa1f03ec
  .inst 0x5280002b
  .inst 0xb86c794c
  .inst 0x6b02019f
  .inst 0x54000120
  .inst 0x93407d6c
  .inst 0x1100056b
  .inst 0xeb0c013f
  .inst 0x54ffff48
  .inst 0x2a1f03e0
  .inst 0xa8c17bfd
  .inst 0xd50323bf
  .inst 0xd65f03c0
  .inst 0xf9402108
  .inst 0xb40001c8
  .inst 0x2a0203e1
  .inst 0xb85fc110
  .inst 0x72839231
  .inst 0x72a7e131
  .inst 0x6b11021f
  .inst 0x54000040
  .inst 0xd4304500
  .inst 0xd63f0100
  .inst 0x52803488
  .inst 0x7100001f
  .inst 0x52802480
  .inst 0x1a80c100
  .inst 0x17ffffef
  .inst 0x52802480
  .inst 0x17ffffed
  .inst 0xd42aa240
.size power_supply_attr_is_visible, .-power_supply_attr_is_visible
.section .note.GNU-stack,"",@progbits
