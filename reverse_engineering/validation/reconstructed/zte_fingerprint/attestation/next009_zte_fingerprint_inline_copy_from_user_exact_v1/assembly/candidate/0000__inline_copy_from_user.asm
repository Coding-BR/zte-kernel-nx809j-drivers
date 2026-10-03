
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000014a0 <_inline_copy_from_user>:
    14a0: d503233f     	paciasp
    14a4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    14a8: f9000bf5     	str	x21, [sp, #0x10]
    14ac: a9024ff4     	stp	x20, x19, [sp, #0x20]
    14b0: 910003fd     	mov	x29, sp
    14b4: d5384108     	mrs	x8, SP_EL0
    14b8: 39411909     	ldrb	w9, [x8, #0x46]
    14bc: aa0203f3     	mov	x19, x2
    14c0: aa0003f4     	mov	x20, x0
    14c4: 37280089     	tbnz	w9, #0x5, 0x14d4 <_inline_copy_from_user+0x34>
    14c8: f940010a     	ldr	x10, [x8]
    14cc: aa0103e9     	mov	x9, x1
    14d0: 36d0006a     	tbz	w10, #0x1a, 0x14dc <_inline_copy_from_user+0x3c>
    14d4: d378dc29     	lsl	x9, x1, #8
    14d8: 8a892029     	and	x9, x1, x9, asr #8
    14dc: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
    14e0: aa1303f5     	mov	x21, x19
    14e4: cb13014a     	sub	x10, x10, x19
    14e8: eb09015f     	cmp	x10, x9
    14ec: 540000e2     	b.hs	0x1508 <_inline_copy_from_user+0x68>
    14f0: cb150268     	sub	x8, x19, x21
    14f4: 2a1f03e1     	mov	w1, wzr
    14f8: aa1503e2     	mov	x2, x21
    14fc: 8b080280     	add	x0, x20, x8
    1500: 94000000     	bl	0x1500 <_inline_copy_from_user+0x60>
		0000000000001500:  R_AARCH64_CALL26	memset
    1504: 1400001c     	b	0x1574 <_inline_copy_from_user+0xd4>
    1508: d503201f     	nop
    150c: d53b4229     	mrs	x9, DAIF
    1510: d50343df     	msr	DAIFSet, #0x3
    1514: f9400508     	ldr	x8, [x8, #0x8]
    1518: d538202a     	mrs	x10, TTBR1_EL1
    151c: aa0803eb     	mov	x11, x8
    1520: b340bd4b     	bfxil	x11, x10, #0, #48
    1524: d518202b     	msr	TTBR1_EL1, x11
    1528: d5182008     	msr	TTBR0_EL1, x8
    152c: d5033fdf     	isb
    1530: d51b4229     	msr	DAIF, x9
    1534: 9248f821     	and	x1, x1, #0xff7fffffffffffff
    1538: aa1403e0     	mov	x0, x20
    153c: aa1303e2     	mov	x2, x19
    1540: 94000000     	bl	0x1540 <_inline_copy_from_user+0xa0>
		0000000000001540:  R_AARCH64_CALL26	__arch_copy_from_user
    1544: aa0003f5     	mov	x21, x0
    1548: d503201f     	nop
    154c: d53b4228     	mrs	x8, DAIF
    1550: d50343df     	msr	DAIFSet, #0x3
    1554: d5382029     	mrs	x9, TTBR1_EL1
    1558: 9240bd29     	and	x9, x9, #0xffffffffffff
    155c: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    1560: d518200a     	msr	TTBR0_EL1, x10
    1564: d5182029     	msr	TTBR1_EL1, x9
    1568: d5033fdf     	isb
    156c: d51b4228     	msr	DAIF, x8
    1570: b5fffc15     	cbnz	x21, 0x14f0 <_inline_copy_from_user+0x50>
    1574: aa1503e0     	mov	x0, x21
    1578: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    157c: f9400bf5     	ldr	x21, [sp, #0x10]
    1580: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    1584: d50323bf     	autiasp
    1588: d65f03c0     	ret
