/* Mechanically lifted from stock zte_power_supply_store_property@0x0010305c. */
.section .text,"ax",@progbits
.align 2
.globl zte_power_supply_store_property
.type zte_power_supply_store_property, %function
  .word 0x95c41a97
zte_power_supply_store_property:
  .inst 0xd503233f
  .inst 0xd10143ff
  .inst 0xa9027bfd
  .inst 0xa90357f6
  .inst 0xa9044ff4
  .inst 0x910083fd
  .inst 0xd5384108
  .inst 0xaa0103f5
  .inst 0xaa0303f3
  .inst 0xf9438908
  .inst 0xaa0203f6
  .inst 0xf81f83a8
  .inst 0xb9402821
  .inst 0xf9404c14
  .inst 0xf9000bff
  .inst 0x7100043f
  .inst 0x540000eb
  .inst 0xf94012a0
  .inst 0xaa1603e2
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, __sysfs_match_string
  .inst 0x37f80060
  .inst 0x2a0003e8
  .inst 0x14000008
  .inst 0x910023e2
  .inst 0xaa1603e0
  .inst 0x52800141
  .inst 0xf90007ff
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, kstrtoll
  .inst 0x37f80240
  .inst 0xf94007e8
  .inst 0x90000009
  .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_power_supply_attrs
  .inst 0x91000129
  .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_power_supply_attrs
  .inst 0x5291746a
  .inst 0xcb0902a9
  .inst 0x72b745ca
  .inst 0x910043e2
  .inst 0xd100a129
  .inst 0xaa1403e0
  .inst 0xb90013e8
  .inst 0xd343fd29
  .inst 0x1b0a7d21
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, zte_power_supply_set_property
  .inst 0x93407c08
  .inst 0x7100001f
  .inst 0x9a93b100
  .inst 0x14000002
  .inst 0x93407c00
  .inst 0xd5384108
  .inst 0xf9438908
  .inst 0xf85f83a9
  .inst 0xeb09011f
  .inst 0x540000e1
  .inst 0xa9444ff4
  .inst 0xa94357f6
  .inst 0xa9427bfd
  .inst 0x910143ff
  .inst 0xd50323bf
  .inst 0xd65f03c0
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size zte_power_supply_store_property, .-zte_power_supply_store_property
