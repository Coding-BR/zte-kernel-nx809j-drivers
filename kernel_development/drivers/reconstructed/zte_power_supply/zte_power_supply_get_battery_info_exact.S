/* Mechanically lifted from stock zte_power_supply_get_battery_info@0x001017fc. */
.section .text,"ax",@progbits
.align 2
.globl zte_power_supply_get_battery_info
.type zte_power_supply_get_battery_info, %function
.word 0x76c65591
zte_power_supply_get_battery_info:
  .inst 0xd503233f
  .inst 0xd103c3ff
  .inst 0xa9097bfd
  .inst 0xa90a6ffc
  .inst 0xa90b67fa
  .inst 0xa90c5ff8
  .inst 0xa90d57f6
  .inst 0xa90e4ff4
  .inst 0x910243fd
  .inst 0xd5384109
  .inst 0x128002a8
  .inst 0xaa0103f6
  .inst 0xf9438929
  .inst 0x928002aa
  .inst 0xaa0003f5
  .inst 0xf2dffd4a
  .inst 0xf81f83a9
  .inst 0xb805cec8
  .inst 0x910572c9
  .inst 0xf900013f
  .inst 0x910472c9
  .inst 0xaa1603fc
  .inst 0xf900012a
  .inst 0x910492c9
  .inst 0xaa1603fb
  .inst 0xf900012a
  .inst 0x9104b2c9
  .inst 0xaa1603fa
  .inst 0xf900012a
  .inst 0x9104d2c9
  .inst 0xaa1603f9
  .inst 0xaa1603f8
  .inst 0xaa1603f7
  .inst 0xaa1603f3
  .inst 0xf900012a
  .inst 0x910412c9
  .inst 0xf81a8f8a
  .inst 0xf81b0f6a
  .inst 0xb81bcf48
  .inst 0xb81c4f28
  .inst 0xf81d0f0a
  .inst 0xb81f8ee8
  .inst 0xf806ce7f
  .inst 0xb9010ec8
  .inst 0xf80742df
  .inst 0xf80042ca
  .inst 0xf9008aca
  .inst 0xf807c2df
  .inst 0xf80842df
  .inst 0xb9011ac8
  .inst 0xf808c2df
  .inst 0x2901a2c8
  .inst 0xf80942df
  .inst 0xf80142ca
  .inst 0xf809c2df
  .inst 0xf80a42df
  .inst 0xf801c2ca
  .inst 0xf80ac2df
  .inst 0xf80b42df
  .inst 0xf80242ca
  .inst 0xf80bc2df
  .inst 0xf80c42df
  .inst 0xf80cc2df
  .inst 0x2905a2c8
  .inst 0xb9013ec8
  .inst 0xf80d42df
  .inst 0xb90142c8
  .inst 0xf80dc2df
  .inst 0x2906a2c8
  .inst 0xb90146c8
  .inst 0xf80e42df
  .inst 0xb9014ac8
  .inst 0xf80ec2df
  .inst 0x2907a2c8
  .inst 0xb9014ec8
  .inst 0xf80f42df
  .inst 0xb90152c8
  .inst 0xf80fc2df
  .inst 0x2908a2c8
  .inst 0xb90156c8
  .inst 0xf900013f
  .inst 0xb9004ec8
  .inst 0xb9015ac8
  .inst 0xf9401400
  .inst 0xf9001bff
  .inst 0xb9002fff
  .inst 0xb40016e0
  .inst 0xf9000fe1
  adrp x1, .Lbattery_str_3b9
  add x1, x1, :lo12:.Lbattery_str_3b9
  .inst 0x9100e3e5
  .inst 0xaa1f03e2
  .inst 0x2a1f03e3
  .inst 0x2a1f03e4
  .inst 0xa907ffff
  .inst 0xa906ffff
  .inst 0xa905ffff
  .inst 0xa904ffff
  .inst 0xa903ffff
  bl __of_parse_phandle_with_args
  .inst 0x12800254
  .inst 0x350015e0
  .inst 0xf90013f5
  .inst 0xf9401ff5
  .inst 0xb4001595
  adrp x1, .Lbattery_str_4ac
  add x1, x1, :lo12:.Lbattery_str_4ac
  .inst 0x9100c3e2
  .inst 0xaa1503e0
  bl of_property_read_string
  .inst 0x2a0003f4
  .inst 0x350014a0
  .inst 0xf9401be1
  adrp x0, .Lbattery_str_3cb
  add x0, x0, :lo12:.Lbattery_str_3cb
  bl strcmp
  .inst 0x34000060
  .inst 0x12800254
  .inst 0x1400009e
  .inst 0xd10132c9
  .inst 0xd100b2c8
  adrp x1, .Lbattery_str_23d
  add x1, x1, :lo12:.Lbattery_str_23d
  .inst 0xaa1503e0
  .inst 0xaa1c03e2
  .inst 0x52800023
  .inst 0xaa1f03e4
  .inst 0xd10152d4
  .inst 0xa900a3e9
  bl of_property_read_variable_u32_array
  adrp x1, .Lbattery_str_15c
  add x1, x1, :lo12:.Lbattery_str_15c
  .inst 0xaa1503e0
  .inst 0xaa1403e2
  .inst 0x52800023
  .inst 0xaa1f03e4
  bl of_property_read_variable_u32_array
  adrp x1, .Lbattery_str_361
  add x1, x1, :lo12:.Lbattery_str_361
  .inst 0xaa1503e0
  .inst 0xaa1b03e2
  .inst 0x52800023
  .inst 0xaa1f03e4
  bl of_property_read_variable_u32_array
  .inst 0xf94007e2
  adrp x1, .Lbattery_str_5bf
  add x1, x1, :lo12:.Lbattery_str_5bf
  .inst 0xaa1503e0
  .inst 0x52800023
  .inst 0xaa1f03e4
  bl of_property_read_variable_u32_array
  adrp x1, .Lbattery_str_567
  add x1, x1, :lo12:.Lbattery_str_567
  .inst 0xaa1503e0
  .inst 0xaa1a03e2
  .inst 0x52800023
  .inst 0xaa1f03e4
  bl of_property_read_variable_u32_array
  adrp x1, .Lbattery_str_3f9
  add x1, x1, :lo12:.Lbattery_str_3f9
  .inst 0xaa1503e0
  .inst 0xaa1903e2
  .inst 0x52800023
  .inst 0xaa1f03e4
  bl of_property_read_variable_u32_array
  adrp x1, .Lbattery_str_7f
  add x1, x1, :lo12:.Lbattery_str_7f
  .inst 0xaa1503e0
  .inst 0xaa1803e2
  .inst 0x52800023
  .inst 0xaa1f03e4
  bl of_property_read_variable_u32_array
  .inst 0xf9400be2
  adrp x1, .Lbattery_str_582
  add x1, x1, :lo12:.Lbattery_str_582
  .inst 0xaa1503e0
  .inst 0x52800023
  .inst 0xaa1f03e4
  bl of_property_read_variable_u32_array
  adrp x1, .Lbattery_str_2fe
  add x1, x1, :lo12:.Lbattery_str_2fe
  .inst 0xaa1503e0
  .inst 0xaa1703e2
  .inst 0x52800023
  .inst 0xaa1f03e4
  bl of_property_read_variable_u32_array
  adrp x1, .Lbattery_str_1ee
  add x1, x1, :lo12:.Lbattery_str_1ee
  .inst 0xaa1503e0
  .inst 0x52800082
  bl of_property_count_elems_of_size
  .inst 0x2a0003f4
  .inst 0xb9002fe0
  .inst 0x36f80060
  .inst 0x31005a9f
  .inst 0x54000a21
  .inst 0x7100569f
  .inst 0x540011aa
  .inst 0x7100069f
  .inst 0x54000b8b
  .inst 0x2a1403f7
  adrp x1, .Lbattery_str_1ee
  add x1, x1, :lo12:.Lbattery_str_1ee
  .inst 0xaa1503e0
  .inst 0xaa1603e2
  .inst 0xaa1703e3
  .inst 0xaa1f03e4
  .inst 0x910432da
  bl of_property_read_variable_u32_array
  .inst 0xaa1f03f4
  adrp x22, .Lbattery_str_0
  add x22, x22, :lo12:.Lbattery_str_0
  .inst 0x14000004
  .inst 0x91000694
  .inst 0xeb17029f
  .inst 0x54000982
  .inst 0x52819800
  .inst 0xaa1603e1
  .inst 0x2a1403e2
  .inst 0xb9003bff
  bl kasprintf
  .inst 0xaa0003f9
  .inst 0x9100e3e2
  .inst 0xaa1503e0
  .inst 0xaa1903e1
  bl of_get_property
  .inst 0xb4000ee0
  .inst 0xb9403be8
  .inst 0x34000ea8
  .inst 0xaa0003f8
  .inst 0xaa1903e0
  bl kfree
  .inst 0xf100529f
  .inst 0x54001460
  .inst 0xb9403bfc
  .inst 0x13037f9b
  .inst 0xb8347b5b
  .inst 0x37f8107b
  .inst 0xd37d7f79
  .inst 0xf94013e8
  .inst 0x5281b802
  .inst 0x9100e100
  .inst 0xaa1903e1
  bl devm_kmalloc
  .inst 0xf8347a60
  .inst 0xb4000f80
  .inst 0x7100239f
  .inst 0x54fffbc3
  .inst 0x7100077f
  .inst 0xaa1f03e9
  .inst 0x1a9f8768
  .inst 0xd37d7d08
  .inst 0xeb09033f
  .inst 0x540010c9
  .inst 0x8b09030a
  .inst 0x9100112c
  .inst 0xb940014b
  .inst 0xeb0c033f
  .inst 0x5ac0096b
  .inst 0xb829680b
  .inst 0x54000fe3
  .inst 0xb940054a
  .inst 0x8b09000b
  .inst 0x91002129
  .inst 0xeb09011f
  .inst 0x5ac0094a
  .inst 0xb900056a
  .inst 0x54fffe21
  .inst 0x17ffffc9
  adrp x1, .Lbattery_str_540
  add x1, x1, :lo12:.Lbattery_str_540
  adrp x2, .Lbattery_str_48a
  add x2, x2, :lo12:.Lbattery_str_48a
  .inst 0x9100e2a0
  bl _dev_warn
  .inst 0x128000b4
  .inst 0xd5384108
  .inst 0xf9438908
  .inst 0xf85f83a9
  .inst 0xeb09011f
  .inst 0x54000e61
  .inst 0x2a1403e0
  .inst 0xa94e4ff4
  .inst 0xa94d57f6
  .inst 0xa94c5ff8
  .inst 0xa94b67fa
  .inst 0xa94a6ffc
  .inst 0xa9497bfd
  .inst 0x9103c3ff
  .inst 0xd50323bf
  .inst 0xd65f03c0
  adrp x1, .Lbattery_str_416
  add x1, x1, :lo12:.Lbattery_str_416
  .inst 0x9100b3e2
  .inst 0xaa1503e0
  bl of_get_property
  .inst 0x2a1f03f4
  .inst 0xb4fffd60
  .inst 0xb9402fe8
  .inst 0x34fffd28
  .inst 0x13037d08
  .inst 0xf9400ff4
  .inst 0xb901c288
  .inst 0x37f80aa8
  .inst 0xd37d7d16
  .inst 0xf94013f3
  .inst 0xaa0003f5
  .inst 0x5281b802
  .inst 0x9100e260
  .inst 0xaa1603e1
  bl devm_kmalloc
  .inst 0xf900de80
  .inst 0xb40009c0
  .inst 0xb941c288
  .inst 0x7100051f
  .inst 0x540002ab
  .inst 0xd37df108
  .inst 0xaa1f03e9
  .inst 0xeb0902df
  .inst 0x54000889
  .inst 0x8b0902aa
  .inst 0x9100112c
  .inst 0xb940014b
  .inst 0xeb0c02df
  .inst 0x5ac0096b
  .inst 0xb829680b
  .inst 0x540007a3
  .inst 0xb940054a
  .inst 0x8b09000b
  .inst 0x91002129
  .inst 0x2a1f03f4
  .inst 0xeb09011f
  .inst 0x5ac0094a
  .inst 0xb900056a
  .inst 0x54fffe01
  .inst 0x17ffffc5
  .inst 0x2a1f03f4
  .inst 0x17ffffc3
  .inst 0xf94013e8
  adrp x1, .Lbattery_str_1ca
  add x1, x1, :lo12:.Lbattery_str_1ca
  .inst 0x9100e100
  bl _dev_err
  .inst 0x128002b4
  .inst 0x17ffffbc
  .inst 0xf94013f5
  adrp x1, .Lbattery_str_38b
  add x1, x1, :lo12:.Lbattery_str_38b
  .inst 0xaa1903e2
  .inst 0x9100e2a0
  bl _dev_err
  .inst 0xaa1903e0
  bl kfree
  .inst 0xaa1f03f4
  .inst 0x14000004
  .inst 0x91002294
  .inst 0xf102829f
  .inst 0x540000c0
  .inst 0xf8746a61
  .inst 0xb4ffff81
  .inst 0x9100e2a0
  bl devm_kfree
  .inst 0x17fffff9
  .inst 0xf9400fe8
  .inst 0x128002b4
  .inst 0xf940dd01
  .inst 0xb5000241
  .inst 0x17ffffa5
  .inst 0xf8347a7f
  .inst 0xf94013f5
  .inst 0xaa1f03f4
  .inst 0x14000004
  .inst 0x91002294
  .inst 0xf102829f
  .inst 0x540000c0
  .inst 0xf8746a61
  .inst 0xb4ffff81
  .inst 0x9100e2a0
  bl devm_kfree
  .inst 0x17fffff9
  .inst 0xf9400fe8
  .inst 0x12800174
  .inst 0xf940dd01
  .inst 0xb4fff2a1
  .inst 0x9100e2a0
  bl devm_kfree
  .inst 0x17ffff92
  .inst 0xd4200020
  .inst 0xf94013f3
  .inst 0xf900de9f
  .inst 0xaa1303e0
  .inst 0xaa1403e1
  bl zte_power_supply_put_battery_info
  .inst 0x12800174
  .inst 0x17ffff8a
  bl __stack_chk_fail
  .inst 0xd42aa240
.size zte_power_supply_get_battery_info, .-zte_power_supply_get_battery_info

.section .rodata.str1.1,"aMS",@progbits,1
.Lbattery_str_0:
  .asciz "ocv-capacity-table-%d"
.Lbattery_str_7f:
  .asciz "constant-charge-current-max-microamp"
.Lbattery_str_15c:
  .asciz "charge-full-design-microamp-hours"
.Lbattery_str_1ca:
  .asciz "Too many temperature values\n"
.Lbattery_str_1ee:
  .asciz "ocv-capacity-celsius"
.Lbattery_str_23d:
  .asciz "energy-full-design-microwatt-hours"
.Lbattery_str_2fe:
  .asciz "factory-internal-resistance-micro-ohms"
.Lbattery_str_361:
  .asciz "voltage-min-design-microvolt"
.Lbattery_str_38b:
  .asciz "failed to get %s\n"
.Lbattery_str_3b9:
  .asciz "monitored-battery"
.Lbattery_str_3cb:
  .asciz "simple-battery"
.Lbattery_str_3f9:
  .asciz "charge-term-current-microamp"
.Lbattery_str_416:
  .asciz "resistance-temp-table"
.Lbattery_str_48a:
  .asciz "zte_power_supply_get_battery_info"
.Lbattery_str_4ac:
  .asciz "compatible"
.Lbattery_str_540:
  .asciz "%s currently only supports devicetree\n"
.Lbattery_str_567:
  .asciz "precharge-current-microamp"
.Lbattery_str_582:
  .asciz "constant-charge-voltage-max-microvolt"
.Lbattery_str_5bf:
  .asciz "voltage-max-design-microvolt"
