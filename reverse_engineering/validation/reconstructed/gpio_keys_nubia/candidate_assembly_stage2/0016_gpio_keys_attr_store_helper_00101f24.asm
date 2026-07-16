
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000017c0 <gpio_keys_attr_store_helper>:
    17c0: 121d7848     	and	w8, w2, #0xfffffffb
    17c4: 7100051f     	cmp	w8, #0x1
    17c8: 540018a1     	b.ne	0x1adc <gpio_keys_attr_store_helper+0x31c>
    17cc: d503233f     	paciasp
    17d0: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    17d4: f9000bf9     	str	x25, [sp, #0x10]
    17d8: a9025ff8     	stp	x24, x23, [sp, #0x20]
    17dc: a90357f6     	stp	x22, x21, [sp, #0x30]
    17e0: a9044ff4     	stp	x20, x19, [sp, #0x40]
    17e4: 910003fd     	mov	x29, sp
    17e8: 7100045f     	cmp	w2, #0x1
    17ec: 52800228     	mov	w8, #0x11               // =17
    17f0: 52806009     	mov	w9, #0x300              // =768
    17f4: 1a880136     	csel	w22, w9, w8, eq
    17f8: aa0103f7     	mov	x23, x1
    17fc: aa0003f5     	mov	x21, x0
    1800: f9400418     	ldr	x24, [x0, #0x8]
    1804: 5280190a     	mov	w10, #0xc8              // =200
    1808: 5280060b     	mov	w11, #0x30              // =48
    180c: 2a1603e0     	mov	w0, w22
    1810: 52819801     	mov	w1, #0xcc0              // =3264
    1814: 2a0203f4     	mov	w20, w2
    1818: 9a8a0179     	csel	x25, x11, x10, eq
    181c: 94000000     	bl	0x181c <gpio_keys_attr_store_helper+0x5c>
		000000000000181c:  R_AARCH64_CALL26	bitmap_zalloc
    1820: b4000120     	cbz	x0, 0x1844 <gpio_keys_attr_store_helper+0x84>
    1824: aa0003f3     	mov	x19, x0
    1828: aa1703e0     	mov	x0, x23
    182c: 2a1603e2     	mov	w2, w22
    1830: aa1303e1     	mov	x1, x19
    1834: 94000000     	bl	0x1834 <gpio_keys_attr_store_helper+0x74>
		0000000000001834:  R_AARCH64_CALL26	bitmap_parselist
    1838: 340000a0     	cbz	w0, 0x184c <gpio_keys_attr_store_helper+0x8c>
    183c: 93407c14     	sxtw	x20, w0
    1840: 14000045     	b	0x1954 <gpio_keys_attr_store_helper+0x194>
    1844: 92800174     	mov	x20, #-0xc              // =-12
    1848: 14000045     	b	0x195c <gpio_keys_attr_store_helper+0x19c>
    184c: 7100069f     	cmp	w20, #0x1
    1850: 8b190308     	add	x8, x24, x25
    1854: 54000661     	b.ne	0x1920 <gpio_keys_attr_store_helper+0x160>
    1858: f9400269     	ldr	x9, [x19]
    185c: f940010a     	ldr	x10, [x8]
    1860: ea2a013f     	bics	xzr, x9, x10
    1864: 54000761     	b.ne	0x1950 <gpio_keys_attr_store_helper+0x190>
    1868: f9400669     	ldr	x9, [x19, #0x8]
    186c: f940050a     	ldr	x10, [x8, #0x8]
    1870: ea2a013f     	bics	xzr, x9, x10
    1874: 540006e1     	b.ne	0x1950 <gpio_keys_attr_store_helper+0x190>
    1878: f9400a69     	ldr	x9, [x19, #0x10]
    187c: f940090a     	ldr	x10, [x8, #0x10]
    1880: ea2a013f     	bics	xzr, x9, x10
    1884: 54000661     	b.ne	0x1950 <gpio_keys_attr_store_helper+0x190>
    1888: f9400e69     	ldr	x9, [x19, #0x18]
    188c: f9400d0a     	ldr	x10, [x8, #0x18]
    1890: ea2a013f     	bics	xzr, x9, x10
    1894: 540005e1     	b.ne	0x1950 <gpio_keys_attr_store_helper+0x190>
    1898: f9401269     	ldr	x9, [x19, #0x20]
    189c: f940110a     	ldr	x10, [x8, #0x20]
    18a0: ea2a013f     	bics	xzr, x9, x10
    18a4: 54000561     	b.ne	0x1950 <gpio_keys_attr_store_helper+0x190>
    18a8: f9401669     	ldr	x9, [x19, #0x28]
    18ac: f940150a     	ldr	x10, [x8, #0x28]
    18b0: ea2a013f     	bics	xzr, x9, x10
    18b4: 540004e1     	b.ne	0x1950 <gpio_keys_attr_store_helper+0x190>
    18b8: f9401a69     	ldr	x9, [x19, #0x30]
    18bc: f940190a     	ldr	x10, [x8, #0x30]
    18c0: ea2a013f     	bics	xzr, x9, x10
    18c4: 54000461     	b.ne	0x1950 <gpio_keys_attr_store_helper+0x190>
    18c8: f9401e69     	ldr	x9, [x19, #0x38]
    18cc: f9401d0a     	ldr	x10, [x8, #0x38]
    18d0: ea2a013f     	bics	xzr, x9, x10
    18d4: 540003e1     	b.ne	0x1950 <gpio_keys_attr_store_helper+0x190>
    18d8: f9402269     	ldr	x9, [x19, #0x40]
    18dc: f940210a     	ldr	x10, [x8, #0x40]
    18e0: ea2a013f     	bics	xzr, x9, x10
    18e4: 54000361     	b.ne	0x1950 <gpio_keys_attr_store_helper+0x190>
    18e8: f9402669     	ldr	x9, [x19, #0x48]
    18ec: f940250a     	ldr	x10, [x8, #0x48]
    18f0: ea2a013f     	bics	xzr, x9, x10
    18f4: 540002e1     	b.ne	0x1950 <gpio_keys_attr_store_helper+0x190>
    18f8: f9402a69     	ldr	x9, [x19, #0x50]
    18fc: f940290a     	ldr	x10, [x8, #0x50]
    1900: ea2a013f     	bics	xzr, x9, x10
    1904: 54000261     	b.ne	0x1950 <gpio_keys_attr_store_helper+0x190>
    1908: f9402e69     	ldr	x9, [x19, #0x58]
    190c: f9402d0a     	ldr	x10, [x8, #0x58]
    1910: ea2a013f     	bics	xzr, x9, x10
    1914: 540001e1     	b.ne	0x1950 <gpio_keys_attr_store_helper+0x190>
    1918: 52800189     	mov	w9, #0xc                // =12
    191c: 14000002     	b	0x1924 <gpio_keys_attr_store_helper+0x164>
    1920: aa1f03e9     	mov	x9, xzr
    1924: 5280022a     	mov	w10, #0x11              // =17
    1928: 6a0a02df     	tst	w22, w10
    192c: 54000280     	b.eq	0x197c <gpio_keys_attr_store_helper+0x1bc>
    1930: f8697a6a     	ldr	x10, [x19, x9, lsl #3]
    1934: 7100069f     	cmp	w20, #0x1
    1938: 12bfffcb     	mov	w11, #0x1ffff           // =131071
    193c: f8697908     	ldr	x8, [x8, x9, lsl #3]
    1940: da9f1169     	csinv	x9, x11, xzr, ne
    1944: 8a090149     	and	x9, x10, x9
    1948: ea28013f     	bics	xzr, x9, x8
    194c: 54000180     	b.eq	0x197c <gpio_keys_attr_store_helper+0x1bc>
    1950: 928002b4     	mov	x20, #-0x16             // =-22
    1954: aa1303e0     	mov	x0, x19
    1958: 94000000     	bl	0x1958 <gpio_keys_attr_store_helper+0x198>
		0000000000001958:  R_AARCH64_CALL26	bitmap_free
    195c: aa1403e0     	mov	x0, x20
    1960: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    1964: f9400bf9     	ldr	x25, [sp, #0x10]
    1968: a94357f6     	ldp	x22, x21, [sp, #0x30]
    196c: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    1970: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    1974: d50323bf     	autiasp
    1978: d65f03c0     	ret
    197c: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0xe0>
		000000000000197c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x336
    1980: 91000000     	add	x0, x0, #0x0
		0000000000001980:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x336
    1984: 2a1603e1     	mov	w1, w22
    1988: 2a1403e2     	mov	w2, w20
    198c: 94000000     	bl	0x198c <gpio_keys_attr_store_helper+0x1cc>
		000000000000198c:  R_AARCH64_CALL26	_printk
    1990: f94002a8     	ldr	x8, [x21]
    1994: b9400908     	ldr	w8, [x8, #0x8]
    1998: 7100051f     	cmp	w8, #0x1
    199c: 540002ab     	b.lt	0x19f0 <gpio_keys_attr_store_helper+0x230>
    19a0: 910182a9     	add	x9, x21, #0x60
    19a4: 14000004     	b	0x19b4 <gpio_keys_attr_store_helper+0x1f4>
    19a8: f1000508     	subs	x8, x8, #0x1
    19ac: 91044129     	add	x9, x9, #0x110
    19b0: 54000200     	b.eq	0x19f0 <gpio_keys_attr_store_helper+0x230>
    19b4: f85e812a     	ldur	x10, [x9, #-0x18]
    19b8: b940194b     	ldr	w11, [x10, #0x18]
    19bc: 6b14017f     	cmp	w11, w20
    19c0: 54ffff41     	b.ne	0x19a8 <gpio_keys_attr_store_helper+0x1e8>
    19c4: f940012b     	ldr	x11, [x9]
    19c8: 7940016b     	ldrh	w11, [x11]
    19cc: d343fd6c     	lsr	x12, x11, #3
    19d0: 927d258c     	and	x12, x12, #0x1ff8
    19d4: f86c6a6c     	ldr	x12, [x19, x12]
    19d8: 9acb258b     	lsr	x11, x12, x11
    19dc: 3607fe6b     	tbz	w11, #0x0, 0x19a8 <gpio_keys_attr_store_helper+0x1e8>
    19e0: 3940a14a     	ldrb	w10, [x10, #0x28]
    19e4: 7100055f     	cmp	w10, #0x1
    19e8: 54fffe00     	b.eq	0x19a8 <gpio_keys_attr_store_helper+0x1e8>
    19ec: 17ffffd9     	b	0x1950 <gpio_keys_attr_store_helper+0x190>
    19f0: 910042a0     	add	x0, x21, #0x10
    19f4: 94000000     	bl	0x19f4 <gpio_keys_attr_store_helper+0x234>
		00000000000019f4:  R_AARCH64_CALL26	mutex_lock
    19f8: f94002a8     	ldr	x8, [x21]
    19fc: b9400908     	ldr	w8, [x8, #0x8]
    1a00: 7100051f     	cmp	w8, #0x1
    1a04: 5400064b     	b.lt	0x1acc <gpio_keys_attr_store_helper+0x30c>
    1a08: aa1f03f6     	mov	x22, xzr
    1a0c: aa1f03f7     	mov	x23, xzr
    1a10: 1400000c     	b	0x1a40 <gpio_keys_attr_store_helper+0x280>
    1a14: 8b1602a8     	add	x8, x21, x22
    1a18: 91026100     	add	x0, x8, #0x98
    1a1c: 94000000     	bl	0x1a1c <gpio_keys_attr_store_helper+0x25c>
		0000000000001a1c:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1a20: 52800028     	mov	w8, #0x1                // =1
    1a24: 39054308     	strb	w8, [x24, #0x150]
    1a28: f94002a8     	ldr	x8, [x21]
    1a2c: 910006f7     	add	x23, x23, #0x1
    1a30: 910442d6     	add	x22, x22, #0x110
    1a34: b9800908     	ldrsw	x8, [x8, #0x8]
    1a38: eb0802ff     	cmp	x23, x8
    1a3c: 5400048a     	b.ge	0x1acc <gpio_keys_attr_store_helper+0x30c>
    1a40: 8b1602b8     	add	x24, x21, x22
    1a44: f9402708     	ldr	x8, [x24, #0x48]
    1a48: b9401908     	ldr	w8, [x8, #0x18]
    1a4c: 6b14011f     	cmp	w8, w20
    1a50: 54fffec1     	b.ne	0x1a28 <gpio_keys_attr_store_helper+0x268>
    1a54: f9403308     	ldr	x8, [x24, #0x60]
    1a58: 79400108     	ldrh	w8, [x8]
    1a5c: d343fd09     	lsr	x9, x8, #3
    1a60: 927d2529     	and	x9, x9, #0x1ff8
    1a64: f8696a69     	ldr	x9, [x19, x9]
    1a68: 9ac82529     	lsr	x9, x9, x8
    1a6c: 39454308     	ldrb	w8, [x24, #0x150]
    1a70: 360001c9     	tbz	w9, #0x0, 0x1aa8 <gpio_keys_attr_store_helper+0x2e8>
    1a74: 3707fda8     	tbnz	w8, #0x0, 0x1a28 <gpio_keys_attr_store_helper+0x268>
    1a78: 8b1602b9     	add	x25, x21, x22
    1a7c: b9410720     	ldr	w0, [x25, #0x104]
    1a80: 94000000     	bl	0x1a80 <gpio_keys_attr_store_helper+0x2c0>
		0000000000001a80:  R_AARCH64_CALL26	disable_irq
    1a84: b9410b20     	ldr	w0, [x25, #0x108]
    1a88: 34000040     	cbz	w0, 0x1a90 <gpio_keys_attr_store_helper+0x2d0>
    1a8c: 94000000     	bl	0x1a8c <gpio_keys_attr_store_helper+0x2cc>
		0000000000001a8c:  R_AARCH64_CALL26	disable_irq
    1a90: f9402f28     	ldr	x8, [x25, #0x58]
    1a94: b5fffc08     	cbnz	x8, 0x1a14 <gpio_keys_attr_store_helper+0x254>
    1a98: 8b1602a8     	add	x8, x21, x22
    1a9c: 9101a100     	add	x0, x8, #0x68
    1aa0: 94000000     	bl	0x1aa0 <gpio_keys_attr_store_helper+0x2e0>
		0000000000001aa0:  R_AARCH64_CALL26	timer_delete_sync
    1aa4: 17ffffdf     	b	0x1a20 <gpio_keys_attr_store_helper+0x260>
    1aa8: 34fffc08     	cbz	w8, 0x1a28 <gpio_keys_attr_store_helper+0x268>
    1aac: 8b1602b9     	add	x25, x21, x22
    1ab0: b9410720     	ldr	w0, [x25, #0x104]
    1ab4: 94000000     	bl	0x1ab4 <gpio_keys_attr_store_helper+0x2f4>
		0000000000001ab4:  R_AARCH64_CALL26	enable_irq
    1ab8: b9410b20     	ldr	w0, [x25, #0x108]
    1abc: 34000040     	cbz	w0, 0x1ac4 <gpio_keys_attr_store_helper+0x304>
    1ac0: 94000000     	bl	0x1ac0 <gpio_keys_attr_store_helper+0x300>
		0000000000001ac0:  R_AARCH64_CALL26	enable_irq
    1ac4: 2a1f03e8     	mov	w8, wzr
    1ac8: 17ffffd7     	b	0x1a24 <gpio_keys_attr_store_helper+0x264>
    1acc: 910042a0     	add	x0, x21, #0x10
    1ad0: 94000000     	bl	0x1ad0 <gpio_keys_attr_store_helper+0x310>
		0000000000001ad0:  R_AARCH64_CALL26	mutex_unlock
    1ad4: aa1f03f4     	mov	x20, xzr
    1ad8: 17ffff9f     	b	0x1954 <gpio_keys_attr_store_helper+0x194>
    1adc: d4210000     	brk	#0x800
