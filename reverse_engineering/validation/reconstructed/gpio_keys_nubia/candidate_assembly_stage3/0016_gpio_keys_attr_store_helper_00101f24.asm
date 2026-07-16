
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001814 <gpio_keys_attr_store_helper>:
    1814: 121d7848     	and	w8, w2, #0xfffffffb
    1818: 7100051f     	cmp	w8, #0x1
    181c: 540018a1     	b.ne	0x1b30 <gpio_keys_attr_store_helper+0x31c>
    1820: d503233f     	paciasp
    1824: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    1828: f9000bf9     	str	x25, [sp, #0x10]
    182c: a9025ff8     	stp	x24, x23, [sp, #0x20]
    1830: a90357f6     	stp	x22, x21, [sp, #0x30]
    1834: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1838: 910003fd     	mov	x29, sp
    183c: 7100045f     	cmp	w2, #0x1
    1840: 52800228     	mov	w8, #0x11               // =17
    1844: 52806009     	mov	w9, #0x300              // =768
    1848: 1a880136     	csel	w22, w9, w8, eq
    184c: aa0103f7     	mov	x23, x1
    1850: aa0003f5     	mov	x21, x0
    1854: f9400418     	ldr	x24, [x0, #0x8]
    1858: 5280190a     	mov	w10, #0xc8              // =200
    185c: 5280060b     	mov	w11, #0x30              // =48
    1860: 2a1603e0     	mov	w0, w22
    1864: 52819801     	mov	w1, #0xcc0              // =3264
    1868: 2a0203f4     	mov	w20, w2
    186c: 9a8a0179     	csel	x25, x11, x10, eq
    1870: 94000000     	bl	0x1870 <gpio_keys_attr_store_helper+0x5c>
		0000000000001870:  R_AARCH64_CALL26	bitmap_zalloc
    1874: b4000120     	cbz	x0, 0x1898 <gpio_keys_attr_store_helper+0x84>
    1878: aa0003f3     	mov	x19, x0
    187c: aa1703e0     	mov	x0, x23
    1880: 2a1603e2     	mov	w2, w22
    1884: aa1303e1     	mov	x1, x19
    1888: 94000000     	bl	0x1888 <gpio_keys_attr_store_helper+0x74>
		0000000000001888:  R_AARCH64_CALL26	bitmap_parselist
    188c: 340000a0     	cbz	w0, 0x18a0 <gpio_keys_attr_store_helper+0x8c>
    1890: 93407c14     	sxtw	x20, w0
    1894: 14000045     	b	0x19a8 <gpio_keys_attr_store_helper+0x194>
    1898: 92800174     	mov	x20, #-0xc              // =-12
    189c: 14000045     	b	0x19b0 <gpio_keys_attr_store_helper+0x19c>
    18a0: 7100069f     	cmp	w20, #0x1
    18a4: 8b190308     	add	x8, x24, x25
    18a8: 54000661     	b.ne	0x1974 <gpio_keys_attr_store_helper+0x160>
    18ac: f9400269     	ldr	x9, [x19]
    18b0: f940010a     	ldr	x10, [x8]
    18b4: ea2a013f     	bics	xzr, x9, x10
    18b8: 54000761     	b.ne	0x19a4 <gpio_keys_attr_store_helper+0x190>
    18bc: f9400669     	ldr	x9, [x19, #0x8]
    18c0: f940050a     	ldr	x10, [x8, #0x8]
    18c4: ea2a013f     	bics	xzr, x9, x10
    18c8: 540006e1     	b.ne	0x19a4 <gpio_keys_attr_store_helper+0x190>
    18cc: f9400a69     	ldr	x9, [x19, #0x10]
    18d0: f940090a     	ldr	x10, [x8, #0x10]
    18d4: ea2a013f     	bics	xzr, x9, x10
    18d8: 54000661     	b.ne	0x19a4 <gpio_keys_attr_store_helper+0x190>
    18dc: f9400e69     	ldr	x9, [x19, #0x18]
    18e0: f9400d0a     	ldr	x10, [x8, #0x18]
    18e4: ea2a013f     	bics	xzr, x9, x10
    18e8: 540005e1     	b.ne	0x19a4 <gpio_keys_attr_store_helper+0x190>
    18ec: f9401269     	ldr	x9, [x19, #0x20]
    18f0: f940110a     	ldr	x10, [x8, #0x20]
    18f4: ea2a013f     	bics	xzr, x9, x10
    18f8: 54000561     	b.ne	0x19a4 <gpio_keys_attr_store_helper+0x190>
    18fc: f9401669     	ldr	x9, [x19, #0x28]
    1900: f940150a     	ldr	x10, [x8, #0x28]
    1904: ea2a013f     	bics	xzr, x9, x10
    1908: 540004e1     	b.ne	0x19a4 <gpio_keys_attr_store_helper+0x190>
    190c: f9401a69     	ldr	x9, [x19, #0x30]
    1910: f940190a     	ldr	x10, [x8, #0x30]
    1914: ea2a013f     	bics	xzr, x9, x10
    1918: 54000461     	b.ne	0x19a4 <gpio_keys_attr_store_helper+0x190>
    191c: f9401e69     	ldr	x9, [x19, #0x38]
    1920: f9401d0a     	ldr	x10, [x8, #0x38]
    1924: ea2a013f     	bics	xzr, x9, x10
    1928: 540003e1     	b.ne	0x19a4 <gpio_keys_attr_store_helper+0x190>
    192c: f9402269     	ldr	x9, [x19, #0x40]
    1930: f940210a     	ldr	x10, [x8, #0x40]
    1934: ea2a013f     	bics	xzr, x9, x10
    1938: 54000361     	b.ne	0x19a4 <gpio_keys_attr_store_helper+0x190>
    193c: f9402669     	ldr	x9, [x19, #0x48]
    1940: f940250a     	ldr	x10, [x8, #0x48]
    1944: ea2a013f     	bics	xzr, x9, x10
    1948: 540002e1     	b.ne	0x19a4 <gpio_keys_attr_store_helper+0x190>
    194c: f9402a69     	ldr	x9, [x19, #0x50]
    1950: f940290a     	ldr	x10, [x8, #0x50]
    1954: ea2a013f     	bics	xzr, x9, x10
    1958: 54000261     	b.ne	0x19a4 <gpio_keys_attr_store_helper+0x190>
    195c: f9402e69     	ldr	x9, [x19, #0x58]
    1960: f9402d0a     	ldr	x10, [x8, #0x58]
    1964: ea2a013f     	bics	xzr, x9, x10
    1968: 540001e1     	b.ne	0x19a4 <gpio_keys_attr_store_helper+0x190>
    196c: 52800189     	mov	w9, #0xc                // =12
    1970: 14000002     	b	0x1978 <gpio_keys_attr_store_helper+0x164>
    1974: aa1f03e9     	mov	x9, xzr
    1978: 5280022a     	mov	w10, #0x11              // =17
    197c: 6a0a02df     	tst	w22, w10
    1980: 54000280     	b.eq	0x19d0 <gpio_keys_attr_store_helper+0x1bc>
    1984: f8697a6a     	ldr	x10, [x19, x9, lsl #3]
    1988: 7100069f     	cmp	w20, #0x1
    198c: 12bfffcb     	mov	w11, #0x1ffff           // =131071
    1990: f8697908     	ldr	x8, [x8, x9, lsl #3]
    1994: da9f1169     	csinv	x9, x11, xzr, ne
    1998: 8a090149     	and	x9, x10, x9
    199c: ea28013f     	bics	xzr, x9, x8
    19a0: 54000180     	b.eq	0x19d0 <gpio_keys_attr_store_helper+0x1bc>
    19a4: 928002b4     	mov	x20, #-0x16             // =-22
    19a8: aa1303e0     	mov	x0, x19
    19ac: 94000000     	bl	0x19ac <gpio_keys_attr_store_helper+0x198>
		00000000000019ac:  R_AARCH64_CALL26	bitmap_free
    19b0: aa1403e0     	mov	x0, x20
    19b4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    19b8: f9400bf9     	ldr	x25, [sp, #0x10]
    19bc: a94357f6     	ldp	x22, x21, [sp, #0x30]
    19c0: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    19c4: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    19c8: d50323bf     	autiasp
    19cc: d65f03c0     	ret
    19d0: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0x8c>
		00000000000019d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x340
    19d4: 91000000     	add	x0, x0, #0x0
		00000000000019d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x340
    19d8: 2a1603e1     	mov	w1, w22
    19dc: 2a1403e2     	mov	w2, w20
    19e0: 94000000     	bl	0x19e0 <gpio_keys_attr_store_helper+0x1cc>
		00000000000019e0:  R_AARCH64_CALL26	_printk
    19e4: f94002a8     	ldr	x8, [x21]
    19e8: b9400908     	ldr	w8, [x8, #0x8]
    19ec: 7100051f     	cmp	w8, #0x1
    19f0: 540002ab     	b.lt	0x1a44 <gpio_keys_attr_store_helper+0x230>
    19f4: 910182a9     	add	x9, x21, #0x60
    19f8: 14000004     	b	0x1a08 <gpio_keys_attr_store_helper+0x1f4>
    19fc: f1000508     	subs	x8, x8, #0x1
    1a00: 91044129     	add	x9, x9, #0x110
    1a04: 54000200     	b.eq	0x1a44 <gpio_keys_attr_store_helper+0x230>
    1a08: f85e812a     	ldur	x10, [x9, #-0x18]
    1a0c: b940194b     	ldr	w11, [x10, #0x18]
    1a10: 6b14017f     	cmp	w11, w20
    1a14: 54ffff41     	b.ne	0x19fc <gpio_keys_attr_store_helper+0x1e8>
    1a18: f940012b     	ldr	x11, [x9]
    1a1c: 7940016b     	ldrh	w11, [x11]
    1a20: d343fd6c     	lsr	x12, x11, #3
    1a24: 927d258c     	and	x12, x12, #0x1ff8
    1a28: f86c6a6c     	ldr	x12, [x19, x12]
    1a2c: 9acb258b     	lsr	x11, x12, x11
    1a30: 3607fe6b     	tbz	w11, #0x0, 0x19fc <gpio_keys_attr_store_helper+0x1e8>
    1a34: 3940a14a     	ldrb	w10, [x10, #0x28]
    1a38: 7100055f     	cmp	w10, #0x1
    1a3c: 54fffe00     	b.eq	0x19fc <gpio_keys_attr_store_helper+0x1e8>
    1a40: 17ffffd9     	b	0x19a4 <gpio_keys_attr_store_helper+0x190>
    1a44: 910042a0     	add	x0, x21, #0x10
    1a48: 94000000     	bl	0x1a48 <gpio_keys_attr_store_helper+0x234>
		0000000000001a48:  R_AARCH64_CALL26	mutex_lock
    1a4c: f94002a8     	ldr	x8, [x21]
    1a50: b9400908     	ldr	w8, [x8, #0x8]
    1a54: 7100051f     	cmp	w8, #0x1
    1a58: 5400064b     	b.lt	0x1b20 <gpio_keys_attr_store_helper+0x30c>
    1a5c: aa1f03f6     	mov	x22, xzr
    1a60: aa1f03f7     	mov	x23, xzr
    1a64: 1400000c     	b	0x1a94 <gpio_keys_attr_store_helper+0x280>
    1a68: 8b1602a8     	add	x8, x21, x22
    1a6c: 91026100     	add	x0, x8, #0x98
    1a70: 94000000     	bl	0x1a70 <gpio_keys_attr_store_helper+0x25c>
		0000000000001a70:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1a74: 52800028     	mov	w8, #0x1                // =1
    1a78: 39054308     	strb	w8, [x24, #0x150]
    1a7c: f94002a8     	ldr	x8, [x21]
    1a80: 910006f7     	add	x23, x23, #0x1
    1a84: 910442d6     	add	x22, x22, #0x110
    1a88: b9800908     	ldrsw	x8, [x8, #0x8]
    1a8c: eb0802ff     	cmp	x23, x8
    1a90: 5400048a     	b.ge	0x1b20 <gpio_keys_attr_store_helper+0x30c>
    1a94: 8b1602b8     	add	x24, x21, x22
    1a98: f9402708     	ldr	x8, [x24, #0x48]
    1a9c: b9401908     	ldr	w8, [x8, #0x18]
    1aa0: 6b14011f     	cmp	w8, w20
    1aa4: 54fffec1     	b.ne	0x1a7c <gpio_keys_attr_store_helper+0x268>
    1aa8: f9403308     	ldr	x8, [x24, #0x60]
    1aac: 79400108     	ldrh	w8, [x8]
    1ab0: d343fd09     	lsr	x9, x8, #3
    1ab4: 927d2529     	and	x9, x9, #0x1ff8
    1ab8: f8696a69     	ldr	x9, [x19, x9]
    1abc: 9ac82529     	lsr	x9, x9, x8
    1ac0: 39454308     	ldrb	w8, [x24, #0x150]
    1ac4: 360001c9     	tbz	w9, #0x0, 0x1afc <gpio_keys_attr_store_helper+0x2e8>
    1ac8: 3707fda8     	tbnz	w8, #0x0, 0x1a7c <gpio_keys_attr_store_helper+0x268>
    1acc: 8b1602b9     	add	x25, x21, x22
    1ad0: b9410720     	ldr	w0, [x25, #0x104]
    1ad4: 94000000     	bl	0x1ad4 <gpio_keys_attr_store_helper+0x2c0>
		0000000000001ad4:  R_AARCH64_CALL26	disable_irq
    1ad8: b9410b20     	ldr	w0, [x25, #0x108]
    1adc: 34000040     	cbz	w0, 0x1ae4 <gpio_keys_attr_store_helper+0x2d0>
    1ae0: 94000000     	bl	0x1ae0 <gpio_keys_attr_store_helper+0x2cc>
		0000000000001ae0:  R_AARCH64_CALL26	disable_irq
    1ae4: f9402f28     	ldr	x8, [x25, #0x58]
    1ae8: b5fffc08     	cbnz	x8, 0x1a68 <gpio_keys_attr_store_helper+0x254>
    1aec: 8b1602a8     	add	x8, x21, x22
    1af0: 9101a100     	add	x0, x8, #0x68
    1af4: 94000000     	bl	0x1af4 <gpio_keys_attr_store_helper+0x2e0>
		0000000000001af4:  R_AARCH64_CALL26	timer_delete_sync
    1af8: 17ffffdf     	b	0x1a74 <gpio_keys_attr_store_helper+0x260>
    1afc: 34fffc08     	cbz	w8, 0x1a7c <gpio_keys_attr_store_helper+0x268>
    1b00: 8b1602b9     	add	x25, x21, x22
    1b04: b9410720     	ldr	w0, [x25, #0x104]
    1b08: 94000000     	bl	0x1b08 <gpio_keys_attr_store_helper+0x2f4>
		0000000000001b08:  R_AARCH64_CALL26	enable_irq
    1b0c: b9410b20     	ldr	w0, [x25, #0x108]
    1b10: 34000040     	cbz	w0, 0x1b18 <gpio_keys_attr_store_helper+0x304>
    1b14: 94000000     	bl	0x1b14 <gpio_keys_attr_store_helper+0x300>
		0000000000001b14:  R_AARCH64_CALL26	enable_irq
    1b18: 2a1f03e8     	mov	w8, wzr
    1b1c: 17ffffd7     	b	0x1a78 <gpio_keys_attr_store_helper+0x264>
    1b20: 910042a0     	add	x0, x21, #0x10
    1b24: 94000000     	bl	0x1b24 <gpio_keys_attr_store_helper+0x310>
		0000000000001b24:  R_AARCH64_CALL26	mutex_unlock
    1b28: aa1f03f4     	mov	x20, xzr
    1b2c: 17ffff9f     	b	0x19a8 <gpio_keys_attr_store_helper+0x194>
    1b30: d4210000     	brk	#0x800
