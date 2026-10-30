
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000442c <richtap_stop_work>:
    442c: d503233f     	paciasp
    4430: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    4434: f9000bf5     	str	x21, [sp, #0x10]
    4438: a9024ff4     	stp	x20, x19, [sp, #0x20]
    443c: 910003fd     	mov	x29, sp
    4440: d10de015     	sub	x21, x0, #0x378
    4444: aa0003f3     	mov	x19, x0
    4448: d119a014     	sub	x20, x0, #0x668
    444c: aa1503e0     	mov	x0, x21
    4450: 94000000     	bl	0x4450 <richtap_stop_work+0x24>
		0000000000004450:  R_AARCH64_CALL26	mutex_lock
    4454: f8560268     	ldur	x8, [x19, #-0xa0]
    4458: aa1403e0     	mov	x0, x20
    445c: f9407908     	ldr	x8, [x8, #0xf0]
    4460: b85fc110     	ldur	w16, [x8, #-0x4]
    4464: 72810611     	movk	w17, #0x830
    4468: 72b08f51     	movk	w17, #0x847a, lsl #16
    446c: 6b11021f     	cmp	w16, w17
    4470: 54000040     	b.eq	0x4478 <richtap_stop_work+0x4c>
    4474: d4304500     	brk	#0x8228
    4478: d63f0100     	blr	x8
    447c: f8560268     	ldur	x8, [x19, #-0xa0]
    4480: aa1403e0     	mov	x0, x20
    4484: f9401d08     	ldr	x8, [x8, #0x38]
    4488: b85fc110     	ldur	w16, [x8, #-0x4]
    448c: 72810611     	movk	w17, #0x830
    4490: 72b08f51     	movk	w17, #0x847a, lsl #16
    4494: 6b11021f     	cmp	w16, w17
    4498: 54000040     	b.eq	0x44a0 <richtap_stop_work+0x74>
    449c: d4304500     	brk	#0x8228
    44a0: d63f0100     	blr	x8
    44a4: aa1503e0     	mov	x0, x21
    44a8: 94000000     	bl	0x44a8 <richtap_stop_work+0x7c>
		00000000000044a8:  R_AARCH64_CALL26	mutex_unlock
    44ac: f8560268     	ldur	x8, [x19, #-0xa0]
    44b0: aa1403e0     	mov	x0, x20
    44b4: 2a1f03e1     	mov	w1, wzr
    44b8: f9408908     	ldr	x8, [x8, #0x110]
    44bc: b85fc110     	ldur	w16, [x8, #-0x4]
    44c0: 729bedd1     	movk	w17, #0xdf6e
    44c4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    44c8: 6b11021f     	cmp	w16, w17
    44cc: 54000040     	b.eq	0x44d4 <richtap_stop_work+0xa8>
    44d0: d4304500     	brk	#0x8228
    44d4: d63f0100     	blr	x8
    44d8: b900567f     	str	wzr, [x19, #0x54]
    44dc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    44e0: f9400bf5     	ldr	x21, [sp, #0x10]
    44e4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    44e8: d50323bf     	autiasp
    44ec: d65f03c0     	ret
