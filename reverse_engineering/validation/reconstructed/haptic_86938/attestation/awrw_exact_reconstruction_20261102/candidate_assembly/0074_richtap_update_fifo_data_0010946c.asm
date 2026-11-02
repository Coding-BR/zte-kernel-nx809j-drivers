
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000006e04 <richtap_update_fifo_data>:
    6e04: d503233f     	paciasp
    6e08: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    6e0c: f9000bf9     	str	x25, [sp, #0x10]
    6e10: a9025ff8     	stp	x24, x23, [sp, #0x20]
    6e14: a90357f6     	stp	x22, x21, [sp, #0x30]
    6e18: a9044ff4     	stp	x20, x19, [sp, #0x40]
    6e1c: 910003fd     	mov	x29, sp
    6e20: 2a0103f5     	mov	w21, w1
    6e24: aa0003f4     	mov	x20, x0
    6e28: 2a1f03f3     	mov	w19, wzr
    6e2c: 52800077     	mov	w23, #0x3               // =3
    6e30: 52801ff8     	mov	w24, #0xff              // =255
    6e34: f9431288     	ldr	x8, [x20, #0x620]
    6e38: 39400109     	ldrb	w9, [x8]
    6e3c: 7101553f     	cmp	w9, #0x55
    6e40: 54000180     	b.eq	0x6e70 <richtap_update_fifo_data+0x6c>
    6e44: 7102a93f     	cmp	w9, #0xaa
    6e48: 54000760     	b.eq	0x6f34 <richtap_update_fifo_data+0x130>
    6e4c: 710002ff     	cmp	w23, #0x0
    6e50: 5400098d     	b.le	0x6f80 <richtap_update_fifo_data+0x17c>
    6e54: 52807d00     	mov	w0, #0x3e8              // =1000
    6e58: 52807d01     	mov	w1, #0x3e8              // =1000
    6e5c: 52800042     	mov	w2, #0x2                // =2
    6e60: 510006f7     	sub	w23, w23, #0x1
    6e64: 94000000     	bl	0x6e64 <richtap_update_fifo_data+0x60>
		0000000000006e64:  R_AARCH64_CALL26	usleep_range_state
    6e68: 35000415     	cbnz	w21, 0x6ee8 <richtap_update_fifo_data+0xe4>
    6e6c: 14000032     	b	0x6f34 <richtap_update_fifo_data+0x130>
    6e70: 79800508     	ldrsh	x8, [x8, #0x2]
    6e74: 798d7289     	ldrsh	x9, [x20, #0x6b8]
    6e78: cb090116     	sub	x22, x8, x9
    6e7c: 93407e68     	sxtw	x8, w19
    6e80: 12003d29     	and	w9, w9, #0xffff
    6e84: 6b1602b9     	subs	w25, w21, w22
    6e88: 54000369     	b.ls	0x6ef4 <richtap_update_fifo_data+0xf0>
    6e8c: 710fa53f     	cmp	w9, #0x3e9
    6e90: 54000802     	b.hs	0x6f90 <richtap_update_fifo_data+0x18c>
    6e94: 794d7289     	ldrh	w9, [x20, #0x6b8]
    6e98: f10fa13f     	cmp	x9, #0x3e8
    6e9c: 540007a8     	b.hi	0x6f90 <richtap_update_fifo_data+0x18c>
    6ea0: f943128a     	ldr	x10, [x20, #0x620]
    6ea4: f943068b     	ldr	x11, [x20, #0x608]
    6ea8: aa1603e2     	mov	x2, x22
    6eac: 8b090149     	add	x9, x10, x9
    6eb0: 8b080160     	add	x0, x11, x8
    6eb4: 91006121     	add	x1, x9, #0x18
    6eb8: 94000000     	bl	0x6eb8 <richtap_update_fifo_data+0xb4>
		0000000000006eb8:  R_AARCH64_CALL26	memcpy
    6ebc: f9431288     	ldr	x8, [x20, #0x620]
    6ec0: 0b160273     	add	w19, w19, w22
    6ec4: 2a1903f5     	mov	w21, w25
    6ec8: 39000118     	strb	w24, [x8]
    6ecc: f9431288     	ldr	x8, [x20, #0x620]
    6ed0: 7900051f     	strh	wzr, [x8, #0x2]
    6ed4: f9431288     	ldr	x8, [x20, #0x620]
    6ed8: f9400508     	ldr	x8, [x8, #0x8]
    6edc: 790d729f     	strh	wzr, [x20, #0x6b8]
    6ee0: f9031288     	str	x8, [x20, #0x620]
    6ee4: 34000295     	cbz	w21, 0x6f34 <richtap_update_fifo_data+0x130>
    6ee8: b946be88     	ldr	w8, [x20, #0x6bc]
    6eec: 35fffa48     	cbnz	w8, 0x6e34 <richtap_update_fifo_data+0x30>
    6ef0: 14000011     	b	0x6f34 <richtap_update_fifo_data+0x130>
    6ef4: 710fa13f     	cmp	w9, #0x3e8
    6ef8: 540004c8     	b.hi	0x6f90 <richtap_update_fifo_data+0x18c>
    6efc: 794d7289     	ldrh	w9, [x20, #0x6b8]
    6f00: f10fa13f     	cmp	x9, #0x3e8
    6f04: 54000468     	b.hi	0x6f90 <richtap_update_fifo_data+0x18c>
    6f08: f943128a     	ldr	x10, [x20, #0x620]
    6f0c: f943068b     	ldr	x11, [x20, #0x608]
    6f10: 2a1503e2     	mov	w2, w21
    6f14: 8b090149     	add	x9, x10, x9
    6f18: 8b080160     	add	x0, x11, x8
    6f1c: 91006121     	add	x1, x9, #0x18
    6f20: 94000000     	bl	0x6f20 <richtap_update_fifo_data+0x11c>
		0000000000006f20:  R_AARCH64_CALL26	memcpy
    6f24: 794d7288     	ldrh	w8, [x20, #0x6b8]
    6f28: 0b1302b3     	add	w19, w21, w19
    6f2c: 0b150108     	add	w8, w8, w21
    6f30: 790d7288     	strh	w8, [x20, #0x6b8]
    6f34: f942e688     	ldr	x8, [x20, #0x5c8]
    6f38: f9430681     	ldr	x1, [x20, #0x608]
    6f3c: aa1403e0     	mov	x0, x20
    6f40: 2a1303e2     	mov	w2, w19
    6f44: f9406908     	ldr	x8, [x8, #0xd0]
    6f48: b85fc110     	ldur	w16, [x8, #-0x4]
    6f4c: 72965371     	movk	w17, #0xb29b
    6f50: 72b8d4f1     	movk	w17, #0xc6a7, lsl #16
    6f54: 6b11021f     	cmp	w16, w17
    6f58: 54000040     	b.eq	0x6f60 <richtap_update_fifo_data+0x15c>
    6f5c: d4304500     	brk	#0x8228
    6f60: d63f0100     	blr	x8
    6f64: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    6f68: f9400bf9     	ldr	x25, [sp, #0x10]
    6f6c: a94357f6     	ldp	x22, x21, [sp, #0x30]
    6f70: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    6f74: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    6f78: d50323bf     	autiasp
    6f7c: d65f03c0     	ret
    6f80: 90000000     	adrp	x0, 0x6000 <aw8693x_get_wav_loop+0xf4>
		0000000000006f80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x186e
    6f84: 91000000     	add	x0, x0, #0x0
		0000000000006f84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x186e
    6f88: 94000000     	bl	0x6f88 <richtap_update_fifo_data+0x184>
		0000000000006f88:  R_AARCH64_CALL26	_printk
    6f8c: 17ffffea     	b	0x6f34 <richtap_update_fifo_data+0x130>
    6f90: d42aa240     	brk	#0x5512
