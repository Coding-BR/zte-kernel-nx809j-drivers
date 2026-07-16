
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000011c4 <gpio_keys_irq_timer>:
    11c4: d503233f     	paciasp
    11c8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    11cc: f9000bf5     	str	x21, [sp, #0x10]
    11d0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    11d4: 910003fd     	mov	x29, sp
    11d8: aa0003f3     	mov	x19, x0
    11dc: f85e8015     	ldur	x21, [x0, #-0x18]
    11e0: 91039000     	add	x0, x0, #0xe4
    11e4: 94000000     	bl	0x11e4 <gpio_keys_irq_timer+0x20>
		00000000000011e4:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    11e8: 3943a668     	ldrb	w8, [x19, #0xe9]
    11ec: aa0003f4     	mov	x20, x0
    11f0: 7100051f     	cmp	w8, #0x1
    11f4: 540001a1     	b.ne	0x1228 <gpio_keys_irq_timer+0x64>
    11f8: f85f8268     	ldur	x8, [x19, #-0x8]
    11fc: aa1503e0     	mov	x0, x21
    1200: 52800021     	mov	w1, #0x1                // =1
    1204: 2a1f03e3     	mov	w3, wzr
    1208: 79400102     	ldrh	w2, [x8]
    120c: 94000000     	bl	0x120c <gpio_keys_irq_timer+0x48>
		000000000000120c:  R_AARCH64_CALL26	input_event
    1210: aa1503e0     	mov	x0, x21
    1214: 2a1f03e1     	mov	w1, wzr
    1218: 2a1f03e2     	mov	w2, wzr
    121c: 2a1f03e3     	mov	w3, wzr
    1220: 94000000     	bl	0x1220 <gpio_keys_irq_timer+0x5c>
		0000000000001220:  R_AARCH64_CALL26	input_event
    1224: 3903a67f     	strb	wzr, [x19, #0xe9]
    1228: 91039260     	add	x0, x19, #0xe4
    122c: aa1403e1     	mov	x1, x20
    1230: 94000000     	bl	0x1230 <gpio_keys_irq_timer+0x6c>
		0000000000001230:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    1234: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1238: f9400bf5     	ldr	x21, [sp, #0x10]
    123c: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1240: d50323bf     	autiasp
    1244: d65f03c0     	ret
