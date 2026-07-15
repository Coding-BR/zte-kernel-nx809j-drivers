
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000015d8 <device_init_wakeup>:
    15d8: d503233f     	paciasp
    15dc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    15e0: f9000bf3     	str	x19, [sp, #0x10]
    15e4: 910003fd     	mov	x29, sp
    15e8: aa0003f3     	mov	x19, x0
    15ec: 360000c1     	tbz	w1, #0x0, 0x1604 <device_init_wakeup+0x2c>
    15f0: 52800021     	mov	w1, #0x1                // =1
    15f4: 94000000     	bl	0x15f4 <device_init_wakeup+0x1c>
		00000000000015f4:  R_AARCH64_CALL26	device_set_wakeup_capable
    15f8: aa1303e0     	mov	x0, x19
    15fc: 94000000     	bl	0x15fc <device_init_wakeup+0x24>
		00000000000015fc:  R_AARCH64_CALL26	device_wakeup_enable
    1600: 14000006     	b	0x1618 <device_init_wakeup+0x40>
    1604: 94000000     	bl	0x1604 <device_init_wakeup+0x2c>
		0000000000001604:  R_AARCH64_CALL26	device_wakeup_disable
    1608: aa1303e0     	mov	x0, x19
    160c: 2a1f03e1     	mov	w1, wzr
    1610: 94000000     	bl	0x1610 <device_init_wakeup+0x38>
		0000000000001610:  R_AARCH64_CALL26	device_set_wakeup_capable
    1614: 2a1f03e0     	mov	w0, wzr
    1618: f9400bf3     	ldr	x19, [sp, #0x10]
    161c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1620: d50323bf     	autiasp
    1624: d65f03c0     	ret
