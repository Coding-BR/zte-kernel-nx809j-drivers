
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000445c <richtap_stop_work>:
    445c: d503233f     	paciasp
    4460: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    4464: f9000bf5     	str	x21, [sp, #0x10]
    4468: a9024ff4     	stp	x20, x19, [sp, #0x20]
    446c: 910003fd     	mov	x29, sp
    4470: d10de015     	sub	x21, x0, #0x378
    4474: aa0003f3     	mov	x19, x0
    4478: d119a014     	sub	x20, x0, #0x668
    447c: aa1503e0     	mov	x0, x21
    4480: 94000000     	bl	0x4480 <richtap_stop_work+0x24>
		0000000000004480:  R_AARCH64_CALL26	mutex_lock
    4484: f8560268     	ldur	x8, [x19, #-0xa0]
    4488: aa1403e0     	mov	x0, x20
    448c: f9407908     	ldr	x8, [x8, #0xf0]
    4490: b85fc110     	ldur	w16, [x8, #-0x4]
    4494: 72810611     	movk	w17, #0x830
    4498: 72b08f51     	movk	w17, #0x847a, lsl #16
    449c: 6b11021f     	cmp	w16, w17
    44a0: 54000040     	b.eq	0x44a8 <richtap_stop_work+0x4c>
    44a4: d4304500     	brk	#0x8228
    44a8: d63f0100     	blr	x8
    44ac: f8560268     	ldur	x8, [x19, #-0xa0]
    44b0: aa1403e0     	mov	x0, x20
    44b4: f9401d08     	ldr	x8, [x8, #0x38]
    44b8: b85fc110     	ldur	w16, [x8, #-0x4]
    44bc: 72810611     	movk	w17, #0x830
    44c0: 72b08f51     	movk	w17, #0x847a, lsl #16
    44c4: 6b11021f     	cmp	w16, w17
    44c8: 54000040     	b.eq	0x44d0 <richtap_stop_work+0x74>
    44cc: d4304500     	brk	#0x8228
    44d0: d63f0100     	blr	x8
    44d4: aa1503e0     	mov	x0, x21
    44d8: 94000000     	bl	0x44d8 <richtap_stop_work+0x7c>
		00000000000044d8:  R_AARCH64_CALL26	mutex_unlock
    44dc: f8560268     	ldur	x8, [x19, #-0xa0]
    44e0: aa1403e0     	mov	x0, x20
    44e4: 2a1f03e1     	mov	w1, wzr
    44e8: f9408908     	ldr	x8, [x8, #0x110]
    44ec: b85fc110     	ldur	w16, [x8, #-0x4]
    44f0: 729bedd1     	movk	w17, #0xdf6e
    44f4: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    44f8: 6b11021f     	cmp	w16, w17
    44fc: 54000040     	b.eq	0x4504 <richtap_stop_work+0xa8>
    4500: d4304500     	brk	#0x8228
    4504: d63f0100     	blr	x8
    4508: b900567f     	str	wzr, [x19, #0x54]
    450c: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    4510: f9400bf5     	ldr	x21, [sp, #0x10]
    4514: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    4518: d50323bf     	autiasp
    451c: d65f03c0     	ret
