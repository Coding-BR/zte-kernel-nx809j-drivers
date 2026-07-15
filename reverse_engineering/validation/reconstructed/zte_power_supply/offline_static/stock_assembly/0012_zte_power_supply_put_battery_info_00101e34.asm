
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000c04 <zte_power_supply_put_battery_info>:
     c04: d503233f     	paciasp
     c08: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     c0c: a90157f6     	stp	x22, x21, [sp, #0x10]
     c10: a9024ff4     	stp	x20, x19, [sp, #0x20]
     c14: 910003fd     	mov	x29, sp
     c18: aa0103f4     	mov	x20, x1
     c1c: aa0003f3     	mov	x19, x0
     c20: aa1f03f5     	mov	x21, xzr
     c24: 91032036     	add	x22, x1, #0xc8
     c28: 14000004     	b	0xc38 <zte_power_supply_put_battery_info+0x34>
     c2c: 910022b5     	add	x21, x21, #0x8
     c30: f10282bf     	cmp	x21, #0xa0
     c34: 540000c0     	b.eq	0xc4c <zte_power_supply_put_battery_info+0x48>
     c38: f8756ac1     	ldr	x1, [x22, x21]
     c3c: b4ffff81     	cbz	x1, 0xc2c <zte_power_supply_put_battery_info+0x28>
     c40: 9100e260     	add	x0, x19, #0x38
     c44: 94000000     	bl	0xc44 <zte_power_supply_put_battery_info+0x40>
		0000000000000c44:  R_AARCH64_CALL26	devm_kfree
     c48: 17fffff9     	b	0xc2c <zte_power_supply_put_battery_info+0x28>
     c4c: f940de81     	ldr	x1, [x20, #0x1b8]
     c50: b4000061     	cbz	x1, 0xc5c <zte_power_supply_put_battery_info+0x58>
     c54: 9100e260     	add	x0, x19, #0x38
     c58: 94000000     	bl	0xc58 <zte_power_supply_put_battery_info+0x54>
		0000000000000c58:  R_AARCH64_CALL26	devm_kfree
     c5c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     c60: a94157f6     	ldp	x22, x21, [sp, #0x10]
     c64: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     c68: d50323bf     	autiasp
     c6c: d65f03c0     	ret
