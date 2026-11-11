
/input/zte_fingerprint.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000014d0 <_inline_copy_from_user>:
    14d0: d503233f     	paciasp
    14d4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    14d8: f9000bf5     	str	x21, [sp, #0x10]
    14dc: a9024ff4     	stp	x20, x19, [sp, #0x20]
    14e0: 910003fd     	mov	x29, sp
    14e4: d5384108     	mrs	x8, SP_EL0
    14e8: 39411909     	ldrb	w9, [x8, #0x46]
    14ec: aa0203f3     	mov	x19, x2
    14f0: aa0003f4     	mov	x20, x0
    14f4: 37280089     	tbnz	w9, #0x5, 0x1504 <_inline_copy_from_user+0x34>
    14f8: f940010a     	ldr	x10, [x8]
    14fc: aa0103e9     	mov	x9, x1
    1500: 36d0006a     	tbz	w10, #0x1a, 0x150c <_inline_copy_from_user+0x3c>
    1504: d378dc29     	lsl	x9, x1, #8
    1508: 8a892029     	and	x9, x1, x9, asr #8
    150c: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
    1510: aa1303f5     	mov	x21, x19
    1514: cb13014a     	sub	x10, x10, x19
    1518: eb09015f     	cmp	x10, x9
    151c: 540000e2     	b.hs	0x1538 <_inline_copy_from_user+0x68>
    1520: cb150268     	sub	x8, x19, x21
    1524: 2a1f03e1     	mov	w1, wzr
    1528: aa1503e2     	mov	x2, x21
    152c: 8b080280     	add	x0, x20, x8
    1530: 94000000     	bl	0x1530 <_inline_copy_from_user+0x60>
		0000000000001530:  R_AARCH64_CALL26	memset
    1534: 1400001c     	b	0x15a4 <_inline_copy_from_user+0xd4>
    1538: d503201f     	nop
    153c: d53b4229     	mrs	x9, DAIF
    1540: d50343df     	msr	DAIFSet, #0x3
    1544: f9400508     	ldr	x8, [x8, #0x8]
    1548: d538202a     	mrs	x10, TTBR1_EL1
    154c: aa0803eb     	mov	x11, x8
    1550: b340bd4b     	bfxil	x11, x10, #0, #48
    1554: d518202b     	msr	TTBR1_EL1, x11
    1558: d5182008     	msr	TTBR0_EL1, x8
    155c: d5033fdf     	isb
    1560: d51b4229     	msr	DAIF, x9
    1564: 9248f821     	and	x1, x1, #0xff7fffffffffffff
    1568: aa1403e0     	mov	x0, x20
    156c: aa1303e2     	mov	x2, x19
    1570: 94000000     	bl	0x1570 <_inline_copy_from_user+0xa0>
		0000000000001570:  R_AARCH64_CALL26	__arch_copy_from_user
    1574: aa0003f5     	mov	x21, x0
    1578: d503201f     	nop
    157c: d53b4228     	mrs	x8, DAIF
    1580: d50343df     	msr	DAIFSet, #0x3
    1584: d5382029     	mrs	x9, TTBR1_EL1
    1588: 9240bd29     	and	x9, x9, #0xffffffffffff
    158c: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    1590: d518200a     	msr	TTBR0_EL1, x10
    1594: d5182029     	msr	TTBR1_EL1, x9
    1598: d5033fdf     	isb
    159c: d51b4228     	msr	DAIF, x8
    15a0: b5fffc15     	cbnz	x21, 0x1520 <_inline_copy_from_user+0x50>
    15a4: aa1503e0     	mov	x0, x21
    15a8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    15ac: f9400bf5     	ldr	x21, [sp, #0x10]
    15b0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    15b4: d50323bf     	autiasp
    15b8: d65f03c0     	ret
