
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001ef4 <device_init_wakeup>:
    1ef4: d503233f     	paciasp
    1ef8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1efc: f9000bf3     	str	x19, [sp, #0x10]
    1f00: 910003fd     	mov	x29, sp
    1f04: aa0003f3     	mov	x19, x0
    1f08: 360000c1     	tbz	w1, #0x0, 0x1f20 <device_init_wakeup+0x2c>
    1f0c: 52800021     	mov	w1, #0x1                // =1
    1f10: 94000000     	bl	0x1f10 <device_init_wakeup+0x1c>
		0000000000001f10:  R_AARCH64_CALL26	device_set_wakeup_capable
    1f14: aa1303e0     	mov	x0, x19
    1f18: 94000000     	bl	0x1f18 <device_init_wakeup+0x24>
		0000000000001f18:  R_AARCH64_CALL26	device_wakeup_enable
    1f1c: 14000006     	b	0x1f34 <device_init_wakeup+0x40>
    1f20: 94000000     	bl	0x1f20 <device_init_wakeup+0x2c>
		0000000000001f20:  R_AARCH64_CALL26	device_wakeup_disable
    1f24: aa1303e0     	mov	x0, x19
    1f28: 2a1f03e1     	mov	w1, wzr
    1f2c: 94000000     	bl	0x1f2c <device_init_wakeup+0x38>
		0000000000001f2c:  R_AARCH64_CALL26	device_set_wakeup_capable
    1f30: 2a1f03e0     	mov	w0, wzr
    1f34: f9400bf3     	ldr	x19, [sp, #0x10]
    1f38: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1f3c: d50323bf     	autiasp
    1f40: d65f03c0     	ret
