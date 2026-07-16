
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001218 <gpio_keys_irq_timer>:
    1218: d503233f     	paciasp
    121c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1220: f9000bf5     	str	x21, [sp, #0x10]
    1224: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1228: 910003fd     	mov	x29, sp
    122c: aa0003f3     	mov	x19, x0
    1230: f85e8015     	ldur	x21, [x0, #-0x18]
    1234: 91039000     	add	x0, x0, #0xe4
    1238: 94000000     	bl	0x1238 <gpio_keys_irq_timer+0x20>
		0000000000001238:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    123c: 3943a668     	ldrb	w8, [x19, #0xe9]
    1240: aa0003f4     	mov	x20, x0
    1244: 7100051f     	cmp	w8, #0x1
    1248: 540001a1     	b.ne	0x127c <gpio_keys_irq_timer+0x64>
    124c: f85f8268     	ldur	x8, [x19, #-0x8]
    1250: aa1503e0     	mov	x0, x21
    1254: 52800021     	mov	w1, #0x1                // =1
    1258: 2a1f03e3     	mov	w3, wzr
    125c: 79400102     	ldrh	w2, [x8]
    1260: 94000000     	bl	0x1260 <gpio_keys_irq_timer+0x48>
		0000000000001260:  R_AARCH64_CALL26	input_event
    1264: aa1503e0     	mov	x0, x21
    1268: 2a1f03e1     	mov	w1, wzr
    126c: 2a1f03e2     	mov	w2, wzr
    1270: 2a1f03e3     	mov	w3, wzr
    1274: 94000000     	bl	0x1274 <gpio_keys_irq_timer+0x5c>
		0000000000001274:  R_AARCH64_CALL26	input_event
    1278: 3903a67f     	strb	wzr, [x19, #0xe9]
    127c: 91039260     	add	x0, x19, #0xe4
    1280: aa1403e1     	mov	x1, x20
    1284: 94000000     	bl	0x1284 <gpio_keys_irq_timer+0x6c>
		0000000000001284:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    1288: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    128c: f9400bf5     	ldr	x21, [sp, #0x10]
    1290: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1294: d50323bf     	autiasp
    1298: d65f03c0     	ret
