/* Mechanically lifted from stock zte_power_supply_match_device_by_name@0x0010136c. */
.section .text,"ax",@progbits
.align 2
.globl zte_power_supply_match_device_by_name
.type zte_power_supply_match_device_by_name, %function
.word 0x41e74928
zte_power_supply_match_device_by_name:
  .inst 0xd503233f
  .inst 0xa9bf7bfd
  .inst 0x910003fd
  .inst 0xf9404c08
  .inst 0xf9400108
  .inst 0xf9400100
  bl strcmp
  .inst 0x7100001f
  .inst 0x1a9f17e0
  .inst 0xa8c17bfd
  .inst 0xd50323bf
  .inst 0xd65f03c0
.size zte_power_supply_match_device_by_name, .-zte_power_supply_match_device_by_name
