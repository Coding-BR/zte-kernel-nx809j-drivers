
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000113c <zte_power_supply_put_battery_info>:
    113c: d503233f     	paciasp
    1140: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1144: a90157f6     	stp	x22, x21, [sp, #0x10]
    1148: a9024ff4     	stp	x20, x19, [sp, #0x20]
    114c: 910003fd     	mov	x29, sp
    1150: aa0103f4     	mov	x20, x1
    1154: aa0003f3     	mov	x19, x0
    1158: aa1f03f5     	mov	x21, xzr
    115c: 91032036     	add	x22, x1, #0xc8
    1160: 14000004     	b	0x1170 <zte_power_supply_put_battery_info+0x34>
    1164: 910022b5     	add	x21, x21, #0x8
    1168: f10282bf     	cmp	x21, #0xa0
    116c: 540000c0     	b.eq	0x1184 <zte_power_supply_put_battery_info+0x48>
    1170: f8756ac1     	ldr	x1, [x22, x21]
    1174: b4ffff81     	cbz	x1, 0x1164 <zte_power_supply_put_battery_info+0x28>
    1178: 9100e260     	add	x0, x19, #0x38
    117c: 94000000     	bl	0x117c <zte_power_supply_put_battery_info+0x40>
		000000000000117c:  R_AARCH64_CALL26	devm_kfree
    1180: 17fffff9     	b	0x1164 <zte_power_supply_put_battery_info+0x28>
    1184: f940de81     	ldr	x1, [x20, #0x1b8]
    1188: b4000061     	cbz	x1, 0x1194 <zte_power_supply_put_battery_info+0x58>
    118c: 9100e260     	add	x0, x19, #0x38
    1190: 94000000     	bl	0x1190 <zte_power_supply_put_battery_info+0x54>
		0000000000001190:  R_AARCH64_CALL26	devm_kfree
    1194: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1198: a94157f6     	ldp	x22, x21, [sp, #0x10]
    119c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    11a0: d50323bf     	autiasp
    11a4: d65f03c0     	ret
