
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001210 <gpio_keys_irq_timer>:
    1210: d503233f     	paciasp
    1214: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    1218: f9000bf5     	str	x21, [sp, #0x10]
    121c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    1220: 910003fd     	mov	x29, sp
    1224: aa0003f3     	mov	x19, x0
    1228: f85e8015     	ldur	x21, [x0, #-0x18]
    122c: 91039000     	add	x0, x0, #0xe4
    1230: 94000000     	bl	0x1230 <gpio_keys_irq_timer+0x20>
		0000000000001230:  R_AARCH64_CALL26	_raw_spin_lock_irqsave
    1234: 3943a668     	ldrb	w8, [x19, #0xe9]
    1238: aa0003f4     	mov	x20, x0
    123c: 7100051f     	cmp	w8, #0x1
    1240: 540001a1     	b.ne	0x1274 <gpio_keys_irq_timer+0x64>
    1244: f85f8268     	ldur	x8, [x19, #-0x8]
    1248: aa1503e0     	mov	x0, x21
    124c: 52800021     	mov	w1, #0x1                // =1
    1250: 2a1f03e3     	mov	w3, wzr
    1254: 79400102     	ldrh	w2, [x8]
    1258: 94000000     	bl	0x1258 <gpio_keys_irq_timer+0x48>
		0000000000001258:  R_AARCH64_CALL26	input_event
    125c: aa1503e0     	mov	x0, x21
    1260: 2a1f03e1     	mov	w1, wzr
    1264: 2a1f03e2     	mov	w2, wzr
    1268: 2a1f03e3     	mov	w3, wzr
    126c: 94000000     	bl	0x126c <gpio_keys_irq_timer+0x5c>
		000000000000126c:  R_AARCH64_CALL26	input_event
    1270: 3903a67f     	strb	wzr, [x19, #0xe9]
    1274: 91039260     	add	x0, x19, #0xe4
    1278: aa1403e1     	mov	x1, x20
    127c: 94000000     	bl	0x127c <gpio_keys_irq_timer+0x6c>
		000000000000127c:  R_AARCH64_CALL26	_raw_spin_unlock_irqrestore
    1280: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    1284: f9400bf5     	ldr	x21, [sp, #0x10]
    1288: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    128c: d50323bf     	autiasp
    1290: d65f03c0     	ret
