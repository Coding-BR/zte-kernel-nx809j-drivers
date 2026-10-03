/* Mechanically lifted from stock zte_power_supply_uevent@0x0010314c. */
.section .text,"ax",@progbits
.align 2
.globl zte_power_supply_uevent
.type zte_power_supply_uevent, %function
  .word 0xa620f39b
zte_power_supply_uevent:
  .inst 0xd503233f
  .inst 0xa9ba7bfd
  .inst 0xa9016ffc
  .inst 0xa90267fa
  .inst 0xa9035ff8
  .inst 0xa90457f6
  .inst 0xa9054ff4
  .inst 0x910003fd
  .inst 0xf9404c17
  .inst 0xb4000797
  .inst 0xf94002e8
  .inst 0xb4000748
  .inst 0xaa0103f4
  .inst 0xf9400102
  .inst 0xaa0003f3
  .inst 0x90000001
  .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_power_supply_uevent_name_format
  .inst 0x91000021
  .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_power_supply_uevent_name_format
  .inst 0xaa1403e0
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, add_uevent_var
  .inst 0x35000660
  .inst 0xd503201f
  .inst 0x52819800
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, get_zeroed_page_noprof
  .inst 0xaa0003f5
  .inst 0xb4000935
  .inst 0xf94002e8
  .inst 0xf9401509
  .inst 0xb4000669
  .inst 0xaa1f03e9
  .inst 0x52800038
  .inst 0x90000019
  .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_power_supply_attrs
  .inst 0x91000339
  .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_power_supply_attrs
  .inst 0x52800b1a
  .inst 0x90000016
  .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_power_supply_uevent_property_format
  .inst 0x910002d6
  .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, zte_power_supply_uevent_property_format
  .inst 0x14000007
  .inst 0xf94002e8
  .inst 0x93407f09
  .inst 0x11000718
  .inst 0xf940150a
  .inst 0xeb09015f
  .inst 0x540004a9
  .inst 0xf9401108
  .inst 0xb869791b
  .inst 0x7100537f
  .inst 0x54000502
  .inst 0x9bba677c
  .inst 0xaa1303e0
  .inst 0xaa1503e2
  .inst 0x9100a381
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, zte_power_supply_show_property
  .inst 0x3100f41f
  .inst 0x3a531804
  .inst 0x54fffde0
  .inst 0x37f80320
  .inst 0xaa1503e0
  .inst 0x52800141
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, strchr
  .inst 0xb4000040
  .inst 0x3900001f
  .inst 0x71004f7f
  .inst 0x54000320
  .inst 0xf9400382
  .inst 0xaa1403e0
  .inst 0xaa1603e1
  .inst 0xaa1503e3
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, add_uevent_var
  .inst 0x34fffc20
  .inst 0x1400000b
  .inst 0x2a1f03e0
  .inst 0xa9454ff4
  .inst 0xa94457f6
  .inst 0xa9435ff8
  .inst 0xa94267fa
  .inst 0xa9416ffc
  .inst 0xa8c67bfd
  .inst 0xd50323bf
  .inst 0xd65f03c0
  .inst 0x2a1f03e0
  .inst 0xaa0003f3
  .inst 0xaa1503e0
  .inst 0x2a1f03e1
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, free_pages
  .inst 0xaa1303e0
  .inst 0x17fffff2
  .inst 0xd42aa240
  .inst 0xd4200020
  .inst 0xd5384116
  .inst 0xf9402ad8
  .inst 0x90000008
  .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .codetag.alloc_tags+0x28
  .inst 0x91000108
  .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .codetag.alloc_tags+0x28
  .inst 0x52819800
  .inst 0xf9002ac8
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, get_zeroed_page_noprof
  .inst 0xaa0003f5
  .inst 0xf9002ad8
  .inst 0xb5fff735
  .inst 0x12800160
  .inst 0x17ffffe4
.size zte_power_supply_uevent, .-zte_power_supply_uevent

.section .rodata.str1.1,"aMS",@progbits,1
.align 1
.globl zte_power_supply_uevent_name_format
.type zte_power_supply_uevent_name_format, %object
zte_power_supply_uevent_name_format:
.asciz "POWER_SUPPLY_NAME=%s"
 .size zte_power_supply_uevent_name_format, .-zte_power_supply_uevent_name_format
.globl zte_power_supply_uevent_property_format
.type zte_power_supply_uevent_property_format, %object
zte_power_supply_uevent_property_format:
.asciz "POWER_SUPPLY_%s=%s"
 .size zte_power_supply_uevent_property_format, .-zte_power_supply_uevent_property_format

.section .codetag.alloc_tags,"aw",@progbits
.align 3
.zero 0x28
.type zte_power_supply_uevent._alloc_tag, %object
zte_power_supply_uevent._alloc_tag:
.zero 0x8

.section .note.GNU-stack,"",@progbits
