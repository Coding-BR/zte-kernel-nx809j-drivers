/* Mechanically lifted from stock zte_power_supply_check_supplies@0x001029f4. */
.section .text,"ax",@progbits
.align 2
.globl zte_power_supply_check_supplies
.type zte_power_supply_check_supplies, %function
zte_power_supply_check_supplies:
  .inst 0xd503233f
  .inst 0xd10283ff
  .inst 0xa9067bfd
  .inst 0xa9075ff8
  .inst 0xa90857f6
  .inst 0xa9094ff4
  .inst 0x910183fd
  .inst 0xd5384108
  .inst 0xaa0003f3
  .inst 0xf9438908
  .inst 0xf81f83a8
  .inst 0xf9400c08
  .inst 0xb4000068
  .inst 0xf9401268
  .inst 0xb5000788
  .inst 0xf9401668
  .inst 0xb4000748
  .inst 0x2a1f03f4
  .inst 0x90000015
  .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lzte_psy_check_str_power_supplies
  .inst 0x910002b5
  .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lzte_psy_check_str_power_supplies
  .inst 0x90000017
  .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_power_supply_class
  .inst 0x90000016
  .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, __zte_power_supply_find_supply_from_node
  .inst 0x910002d6
  .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, __zte_power_supply_find_supply_from_node
  .inst 0x12804098
  .inst 0xf9401660
  .inst 0x910023e5
  .inst 0xaa1503e1
  .inst 0xaa1f03e2
  .inst 0x2a1f03e3
  .inst 0x2a1403e4
  .inst 0xa904ffff
  .inst 0xa903ffff
  .inst 0xa902ffff
  .inst 0xa901ffff
  .inst 0xa900ffff
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, __of_parse_phandle_with_args
  .inst 0x35000260
  .inst 0xf94007e2
  .inst 0xb4000222
  .inst 0xf94002e0
  .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, zte_power_supply_class
  .inst 0xaa1f03e1
  .inst 0xaa1603e3
  .inst 0x11000694
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, class_for_each_device
  .inst 0x7100041f
  .inst 0x1a8003e8
  .inst 0x7100001f
  .inst 0x1a880308
  .inst 0x34fffd08
  .inst 0x90000001
  .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lzte_psy_check_str_failed
  .inst 0x91000021
  .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lzte_psy_check_str_failed
  .inst 0x9100e260
  .inst 0x2a0803f4
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, _dev_info
  .inst 0x1400002f
  .inst 0x34000274
  .inst 0x9100e260
  .inst 0x52800101
  .inst 0x5281b802
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
  .inst 0xf9000e60
  .inst 0xb4000160
  .inst 0x37f80534
  .inst 0xd37d7e81
  .inst 0x9100e260
  .inst 0x5281b802
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, devm_kmalloc
  .inst 0xf9400e68
  .inst 0xf9000100
  .inst 0xf9400e68
  .inst 0xf9400108
  .inst 0xb5000208
  .inst 0x12800160
  .inst 0x14000002
  .inst 0x2a1f03e0
  .inst 0xd5384108
  .inst 0xf9438908
  .inst 0xf85f83a9
  .inst 0xeb09011f
  .inst 0x54000361
  .inst 0xa9494ff4
  .inst 0xa94857f6
  .inst 0xa9475ff8
  .inst 0xa9467bfd
  .inst 0x910283ff
  .inst 0xd50323bf
  .inst 0xd65f03c0
  .inst 0xf94002e0
  .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, zte_power_supply_class
  .inst 0x90000003
  .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, __zte_power_supply_populate_supplied_from
  .inst 0x91000063
  .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, __zte_power_supply_populate_supplied_from
  .inst 0xaa1f03e1
  .inst 0xaa1303e2
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, class_for_each_device
  .inst 0x2a0003f4
  .inst 0x90000001
  .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lzte_psy_check_str_format
  .inst 0x91000021
  .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lzte_psy_check_str_format
  .inst 0x90000002
  .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, .Lzte_psy_check_str_populate
  .inst 0x91000042
  .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, .Lzte_psy_check_str_populate
  .inst 0x9100e260
  .inst 0x2a1403e3
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, _dev_info
  .inst 0x2a1403e0
  .inst 0x17ffffe5
  .inst 0xaa0003e8
  .inst 0xaa1f03e0
  .inst 0x17ffffdb
  .inst 0x94000000
  .reloc .-4, R_AARCH64_CALL26, __stack_chk_fail
.size zte_power_supply_check_supplies, .-zte_power_supply_check_supplies

.section .rodata.str1.1,"aMS",@progbits,1
.Lzte_psy_check_str_power_supplies:
  .asciz "power-supplies"
.Lzte_psy_check_str_failed:
  .asciz "Failed to find supply!\n"
.Lzte_psy_check_str_format:
  .asciz "%s %d\n"
.Lzte_psy_check_str_populate:
  .asciz "zte_power_supply_populate_supplied_from"
