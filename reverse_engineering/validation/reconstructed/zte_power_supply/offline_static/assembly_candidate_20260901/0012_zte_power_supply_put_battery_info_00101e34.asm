
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001178 <zte_power_supply_put_battery_info>:
    1178: d503233f     	paciasp
    117c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1180: a90157f6     	stp	x22, x21, [sp, #0x10]
    1184: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1188: 910003fd     	mov	x29, sp
    118c: aa0103f4     	mov	x20, x1
    1190: aa0003f3     	mov	x19, x0
    1194: aa1f03f5     	mov	x21, xzr
    1198: 91032036     	add	x22, x1, #0xc8
    119c: 14000004     	b	0x11ac <zte_power_supply_put_battery_info+0x34>
    11a0: 910022b5     	add	x21, x21, #0x8
    11a4: f10282bf     	cmp	x21, #0xa0
    11a8: 540000c0     	b.eq	0x11c0 <zte_power_supply_put_battery_info+0x48>
    11ac: f8756ac1     	ldr	x1, [x22, x21]
    11b0: b4ffff81     	cbz	x1, 0x11a0 <zte_power_supply_put_battery_info+0x28>
    11b4: 9100e260     	add	x0, x19, #0x38
    11b8: 94000000     	bl	0x11b8 <zte_power_supply_put_battery_info+0x40>
		00000000000011b8:  R_AARCH64_CALL26	devm_kfree
    11bc: 17fffff9     	b	0x11a0 <zte_power_supply_put_battery_info+0x28>
    11c0: f940de81     	ldr	x1, [x20, #0x1b8]
    11c4: b4000061     	cbz	x1, 0x11d0 <zte_power_supply_put_battery_info+0x58>
    11c8: 9100e260     	add	x0, x19, #0x38
    11cc: 94000000     	bl	0x11cc <zte_power_supply_put_battery_info+0x54>
		00000000000011cc:  R_AARCH64_CALL26	devm_kfree
    11d0: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    11d4: a94157f6     	ldp	x22, x21, [sp, #0x10]
    11d8: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    11dc: d50323bf     	autiasp
    11e0: d65f03c0     	ret
