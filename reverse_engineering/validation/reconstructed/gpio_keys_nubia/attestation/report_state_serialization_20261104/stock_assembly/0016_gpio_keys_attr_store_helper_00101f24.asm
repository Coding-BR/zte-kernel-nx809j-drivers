
/input/gpio_keys_nubia.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000180c <gpio_keys_attr_store_helper>:
    180c: 121d7848     	and	w8, w2, #0xfffffffb
    1810: 7100051f     	cmp	w8, #0x1
    1814: 540018a1     	b.ne	0x1b28 <gpio_keys_attr_store_helper+0x31c>
    1818: d503233f     	paciasp
    181c: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
    1820: f9000bf9     	str	x25, [sp, #0x10]
    1824: a9025ff8     	stp	x24, x23, [sp, #0x20]
    1828: a90357f6     	stp	x22, x21, [sp, #0x30]
    182c: a9044ff4     	stp	x20, x19, [sp, #0x40]
    1830: 910003fd     	mov	x29, sp
    1834: 7100045f     	cmp	w2, #0x1
    1838: 52800228     	mov	w8, #0x11               // =17
    183c: 52806009     	mov	w9, #0x300              // =768
    1840: 1a880136     	csel	w22, w9, w8, eq
    1844: aa0103f7     	mov	x23, x1
    1848: aa0003f5     	mov	x21, x0
    184c: f9400418     	ldr	x24, [x0, #0x8]
    1850: 5280190a     	mov	w10, #0xc8              // =200
    1854: 5280060b     	mov	w11, #0x30              // =48
    1858: 2a1603e0     	mov	w0, w22
    185c: 52819801     	mov	w1, #0xcc0              // =3264
    1860: 2a0203f4     	mov	w20, w2
    1864: 9a8a0179     	csel	x25, x11, x10, eq
    1868: 94000000     	bl	0x1868 <gpio_keys_attr_store_helper+0x5c>
		0000000000001868:  R_AARCH64_CALL26	bitmap_zalloc
    186c: b4000120     	cbz	x0, 0x1890 <gpio_keys_attr_store_helper+0x84>
    1870: aa0003f3     	mov	x19, x0
    1874: aa1703e0     	mov	x0, x23
    1878: 2a1603e2     	mov	w2, w22
    187c: aa1303e1     	mov	x1, x19
    1880: 94000000     	bl	0x1880 <gpio_keys_attr_store_helper+0x74>
		0000000000001880:  R_AARCH64_CALL26	bitmap_parselist
    1884: 340000a0     	cbz	w0, 0x1898 <gpio_keys_attr_store_helper+0x8c>
    1888: 93407c14     	sxtw	x20, w0
    188c: 14000045     	b	0x19a0 <gpio_keys_attr_store_helper+0x194>
    1890: 92800174     	mov	x20, #-0xc              // =-12
    1894: 14000045     	b	0x19a8 <gpio_keys_attr_store_helper+0x19c>
    1898: 7100069f     	cmp	w20, #0x1
    189c: 8b190308     	add	x8, x24, x25
    18a0: 54000661     	b.ne	0x196c <gpio_keys_attr_store_helper+0x160>
    18a4: f9400269     	ldr	x9, [x19]
    18a8: f940010a     	ldr	x10, [x8]
    18ac: ea2a013f     	bics	xzr, x9, x10
    18b0: 54000761     	b.ne	0x199c <gpio_keys_attr_store_helper+0x190>
    18b4: f9400669     	ldr	x9, [x19, #0x8]
    18b8: f940050a     	ldr	x10, [x8, #0x8]
    18bc: ea2a013f     	bics	xzr, x9, x10
    18c0: 540006e1     	b.ne	0x199c <gpio_keys_attr_store_helper+0x190>
    18c4: f9400a69     	ldr	x9, [x19, #0x10]
    18c8: f940090a     	ldr	x10, [x8, #0x10]
    18cc: ea2a013f     	bics	xzr, x9, x10
    18d0: 54000661     	b.ne	0x199c <gpio_keys_attr_store_helper+0x190>
    18d4: f9400e69     	ldr	x9, [x19, #0x18]
    18d8: f9400d0a     	ldr	x10, [x8, #0x18]
    18dc: ea2a013f     	bics	xzr, x9, x10
    18e0: 540005e1     	b.ne	0x199c <gpio_keys_attr_store_helper+0x190>
    18e4: f9401269     	ldr	x9, [x19, #0x20]
    18e8: f940110a     	ldr	x10, [x8, #0x20]
    18ec: ea2a013f     	bics	xzr, x9, x10
    18f0: 54000561     	b.ne	0x199c <gpio_keys_attr_store_helper+0x190>
    18f4: f9401669     	ldr	x9, [x19, #0x28]
    18f8: f940150a     	ldr	x10, [x8, #0x28]
    18fc: ea2a013f     	bics	xzr, x9, x10
    1900: 540004e1     	b.ne	0x199c <gpio_keys_attr_store_helper+0x190>
    1904: f9401a69     	ldr	x9, [x19, #0x30]
    1908: f940190a     	ldr	x10, [x8, #0x30]
    190c: ea2a013f     	bics	xzr, x9, x10
    1910: 54000461     	b.ne	0x199c <gpio_keys_attr_store_helper+0x190>
    1914: f9401e69     	ldr	x9, [x19, #0x38]
    1918: f9401d0a     	ldr	x10, [x8, #0x38]
    191c: ea2a013f     	bics	xzr, x9, x10
    1920: 540003e1     	b.ne	0x199c <gpio_keys_attr_store_helper+0x190>
    1924: f9402269     	ldr	x9, [x19, #0x40]
    1928: f940210a     	ldr	x10, [x8, #0x40]
    192c: ea2a013f     	bics	xzr, x9, x10
    1930: 54000361     	b.ne	0x199c <gpio_keys_attr_store_helper+0x190>
    1934: f9402669     	ldr	x9, [x19, #0x48]
    1938: f940250a     	ldr	x10, [x8, #0x48]
    193c: ea2a013f     	bics	xzr, x9, x10
    1940: 540002e1     	b.ne	0x199c <gpio_keys_attr_store_helper+0x190>
    1944: f9402a69     	ldr	x9, [x19, #0x50]
    1948: f940290a     	ldr	x10, [x8, #0x50]
    194c: ea2a013f     	bics	xzr, x9, x10
    1950: 54000261     	b.ne	0x199c <gpio_keys_attr_store_helper+0x190>
    1954: f9402e69     	ldr	x9, [x19, #0x58]
    1958: f9402d0a     	ldr	x10, [x8, #0x58]
    195c: ea2a013f     	bics	xzr, x9, x10
    1960: 540001e1     	b.ne	0x199c <gpio_keys_attr_store_helper+0x190>
    1964: 52800189     	mov	w9, #0xc                // =12
    1968: 14000002     	b	0x1970 <gpio_keys_attr_store_helper+0x164>
    196c: aa1f03e9     	mov	x9, xzr
    1970: 5280022a     	mov	w10, #0x11              // =17
    1974: 6a0a02df     	tst	w22, w10
    1978: 54000280     	b.eq	0x19c8 <gpio_keys_attr_store_helper+0x1bc>
    197c: f8697a6a     	ldr	x10, [x19, x9, lsl #3]
    1980: 7100069f     	cmp	w20, #0x1
    1984: 12bfffcb     	mov	w11, #0x1ffff           // =131071
    1988: f8697908     	ldr	x8, [x8, x9, lsl #3]
    198c: da9f1169     	csinv	x9, x11, xzr, ne
    1990: 8a090149     	and	x9, x10, x9
    1994: ea28013f     	bics	xzr, x9, x8
    1998: 54000180     	b.eq	0x19c8 <gpio_keys_attr_store_helper+0x1bc>
    199c: 928002b4     	mov	x20, #-0x16             // =-22
    19a0: aa1303e0     	mov	x0, x19
    19a4: 94000000     	bl	0x19a4 <gpio_keys_attr_store_helper+0x198>
		00000000000019a4:  R_AARCH64_CALL26	bitmap_free
    19a8: aa1403e0     	mov	x0, x20
    19ac: a9444ff4     	ldp	x20, x19, [sp, #0x40]
    19b0: f9400bf9     	ldr	x25, [sp, #0x10]
    19b4: a94357f6     	ldp	x22, x21, [sp, #0x30]
    19b8: a9425ff8     	ldp	x24, x23, [sp, #0x20]
    19bc: a8c57bfd     	ldp	x29, x30, [sp], #0x50
    19c0: d50323bf     	autiasp
    19c4: d65f03c0     	ret
    19c8: 90000000     	adrp	x0, 0x1000 <gpio_keys_gpio_report_event+0x94>
		00000000000019c8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x340
    19cc: 91000000     	add	x0, x0, #0x0
		00000000000019cc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x340
    19d0: 2a1603e1     	mov	w1, w22
    19d4: 2a1403e2     	mov	w2, w20
    19d8: 94000000     	bl	0x19d8 <gpio_keys_attr_store_helper+0x1cc>
		00000000000019d8:  R_AARCH64_CALL26	_printk
    19dc: f94002a8     	ldr	x8, [x21]
    19e0: b9400908     	ldr	w8, [x8, #0x8]
    19e4: 7100051f     	cmp	w8, #0x1
    19e8: 540002ab     	b.lt	0x1a3c <gpio_keys_attr_store_helper+0x230>
    19ec: 910182a9     	add	x9, x21, #0x60
    19f0: 14000004     	b	0x1a00 <gpio_keys_attr_store_helper+0x1f4>
    19f4: f1000508     	subs	x8, x8, #0x1
    19f8: 91044129     	add	x9, x9, #0x110
    19fc: 54000200     	b.eq	0x1a3c <gpio_keys_attr_store_helper+0x230>
    1a00: f85e812a     	ldur	x10, [x9, #-0x18]
    1a04: b940194b     	ldr	w11, [x10, #0x18]
    1a08: 6b14017f     	cmp	w11, w20
    1a0c: 54ffff41     	b.ne	0x19f4 <gpio_keys_attr_store_helper+0x1e8>
    1a10: f940012b     	ldr	x11, [x9]
    1a14: 7940016b     	ldrh	w11, [x11]
    1a18: d343fd6c     	lsr	x12, x11, #3
    1a1c: 927d258c     	and	x12, x12, #0x1ff8
    1a20: f86c6a6c     	ldr	x12, [x19, x12]
    1a24: 9acb258b     	lsr	x11, x12, x11
    1a28: 3607fe6b     	tbz	w11, #0x0, 0x19f4 <gpio_keys_attr_store_helper+0x1e8>
    1a2c: 3940a14a     	ldrb	w10, [x10, #0x28]
    1a30: 7100055f     	cmp	w10, #0x1
    1a34: 54fffe00     	b.eq	0x19f4 <gpio_keys_attr_store_helper+0x1e8>
    1a38: 17ffffd9     	b	0x199c <gpio_keys_attr_store_helper+0x190>
    1a3c: 910042a0     	add	x0, x21, #0x10
    1a40: 94000000     	bl	0x1a40 <gpio_keys_attr_store_helper+0x234>
		0000000000001a40:  R_AARCH64_CALL26	mutex_lock
    1a44: f94002a8     	ldr	x8, [x21]
    1a48: b9400908     	ldr	w8, [x8, #0x8]
    1a4c: 7100051f     	cmp	w8, #0x1
    1a50: 5400064b     	b.lt	0x1b18 <gpio_keys_attr_store_helper+0x30c>
    1a54: aa1f03f6     	mov	x22, xzr
    1a58: aa1f03f7     	mov	x23, xzr
    1a5c: 1400000c     	b	0x1a8c <gpio_keys_attr_store_helper+0x280>
    1a60: 8b1602a8     	add	x8, x21, x22
    1a64: 91026100     	add	x0, x8, #0x98
    1a68: 94000000     	bl	0x1a68 <gpio_keys_attr_store_helper+0x25c>
		0000000000001a68:  R_AARCH64_CALL26	cancel_delayed_work_sync
    1a6c: 52800028     	mov	w8, #0x1                // =1
    1a70: 39054308     	strb	w8, [x24, #0x150]
    1a74: f94002a8     	ldr	x8, [x21]
    1a78: 910006f7     	add	x23, x23, #0x1
    1a7c: 910442d6     	add	x22, x22, #0x110
    1a80: b9800908     	ldrsw	x8, [x8, #0x8]
    1a84: eb0802ff     	cmp	x23, x8
    1a88: 5400048a     	b.ge	0x1b18 <gpio_keys_attr_store_helper+0x30c>
    1a8c: 8b1602b8     	add	x24, x21, x22
    1a90: f9402708     	ldr	x8, [x24, #0x48]
    1a94: b9401908     	ldr	w8, [x8, #0x18]
    1a98: 6b14011f     	cmp	w8, w20
    1a9c: 54fffec1     	b.ne	0x1a74 <gpio_keys_attr_store_helper+0x268>
    1aa0: f9403308     	ldr	x8, [x24, #0x60]
    1aa4: 79400108     	ldrh	w8, [x8]
    1aa8: d343fd09     	lsr	x9, x8, #3
    1aac: 927d2529     	and	x9, x9, #0x1ff8
    1ab0: f8696a69     	ldr	x9, [x19, x9]
    1ab4: 9ac82529     	lsr	x9, x9, x8
    1ab8: 39454308     	ldrb	w8, [x24, #0x150]
    1abc: 360001c9     	tbz	w9, #0x0, 0x1af4 <gpio_keys_attr_store_helper+0x2e8>
    1ac0: 3707fda8     	tbnz	w8, #0x0, 0x1a74 <gpio_keys_attr_store_helper+0x268>
    1ac4: 8b1602b9     	add	x25, x21, x22
    1ac8: b9410720     	ldr	w0, [x25, #0x104]
    1acc: 94000000     	bl	0x1acc <gpio_keys_attr_store_helper+0x2c0>
		0000000000001acc:  R_AARCH64_CALL26	disable_irq
    1ad0: b9410b20     	ldr	w0, [x25, #0x108]
    1ad4: 34000040     	cbz	w0, 0x1adc <gpio_keys_attr_store_helper+0x2d0>
    1ad8: 94000000     	bl	0x1ad8 <gpio_keys_attr_store_helper+0x2cc>
		0000000000001ad8:  R_AARCH64_CALL26	disable_irq
    1adc: f9402f28     	ldr	x8, [x25, #0x58]
    1ae0: b5fffc08     	cbnz	x8, 0x1a60 <gpio_keys_attr_store_helper+0x254>
    1ae4: 8b1602a8     	add	x8, x21, x22
    1ae8: 9101a100     	add	x0, x8, #0x68
    1aec: 94000000     	bl	0x1aec <gpio_keys_attr_store_helper+0x2e0>
		0000000000001aec:  R_AARCH64_CALL26	timer_delete_sync
    1af0: 17ffffdf     	b	0x1a6c <gpio_keys_attr_store_helper+0x260>
    1af4: 34fffc08     	cbz	w8, 0x1a74 <gpio_keys_attr_store_helper+0x268>
    1af8: 8b1602b9     	add	x25, x21, x22
    1afc: b9410720     	ldr	w0, [x25, #0x104]
    1b00: 94000000     	bl	0x1b00 <gpio_keys_attr_store_helper+0x2f4>
		0000000000001b00:  R_AARCH64_CALL26	enable_irq
    1b04: b9410b20     	ldr	w0, [x25, #0x108]
    1b08: 34000040     	cbz	w0, 0x1b10 <gpio_keys_attr_store_helper+0x304>
    1b0c: 94000000     	bl	0x1b0c <gpio_keys_attr_store_helper+0x300>
		0000000000001b0c:  R_AARCH64_CALL26	enable_irq
    1b10: 2a1f03e8     	mov	w8, wzr
    1b14: 17ffffd7     	b	0x1a70 <gpio_keys_attr_store_helper+0x264>
    1b18: 910042a0     	add	x0, x21, #0x10
    1b1c: 94000000     	bl	0x1b1c <gpio_keys_attr_store_helper+0x310>
		0000000000001b1c:  R_AARCH64_CALL26	mutex_unlock
    1b20: aa1f03f4     	mov	x20, xzr
    1b24: 17ffff9f     	b	0x19a0 <gpio_keys_attr_store_helper+0x194>
    1b28: d4210000     	brk	#0x800
