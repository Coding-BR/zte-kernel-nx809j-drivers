
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000014f8 <power_supply_attr_is_visible>:
    14f8: d503233f     	paciasp
    14fc: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1500: 910003fd     	mov	x29, sp
    1504: 71004c5f     	cmp	w2, #0x13
    1508: 54000542     	b.hs	0x15b0 <power_supply_attr_is_visible+0xb8>
    150c: 52800b08     	mov	w8, #0x58               // =88
    1510: 90000009     	adrp	x9, 0x1000 <zte_devm_power_supply_get_by_phandle+0x120>
		0000000000001510:  R_AARCH64_ADR_PREL_PG_HI21	zte_power_supply_attrs
    1514: 91000129     	add	x9, x9, #0x0
		0000000000001514:  R_AARCH64_ADD_ABS_LO12_NC	zte_power_supply_attrs
    1518: 9ba87c48     	umull	x8, w2, w8
    151c: f8686928     	ldr	x8, [x9, x8]
    1520: b40001e8     	cbz	x8, 0x155c <power_supply_attr_is_visible+0x64>
    1524: f9404c00     	ldr	x0, [x0, #0x98]
    1528: f9400008     	ldr	x8, [x0]
    152c: f9401509     	ldr	x9, [x8, #0x28]
    1530: b4000169     	cbz	x9, 0x155c <power_supply_attr_is_visible+0x64>
    1534: f940110a     	ldr	x10, [x8, #0x20]
    1538: aa1f03ec     	mov	x12, xzr
    153c: 5280002b     	mov	w11, #0x1               // =1
    1540: b86c794c     	ldr	w12, [x10, x12, lsl #2]
    1544: 6b02019f     	cmp	w12, w2
    1548: 54000120     	b.eq	0x156c <power_supply_attr_is_visible+0x74>
    154c: 93407d6c     	sxtw	x12, w11
    1550: 1100056b     	add	w11, w11, #0x1
    1554: eb0c013f     	cmp	x9, x12
    1558: 54ffff48     	b.hi	0x1540 <power_supply_attr_is_visible+0x48>
    155c: 2a1f03e0     	mov	w0, wzr
    1560: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1564: d50323bf     	autiasp
    1568: d65f03c0     	ret
    156c: f9402108     	ldr	x8, [x8, #0x40]
    1570: b40001c8     	cbz	x8, 0x15a8 <power_supply_attr_is_visible+0xb0>
    1574: 2a0203e1     	mov	w1, w2
    1578: b85fc110     	ldur	w16, [x8, #-0x4]
    157c: 72839231     	movk	w17, #0x1c91
    1580: 72a7e131     	movk	w17, #0x3f09, lsl #16
    1584: 6b11021f     	cmp	w16, w17
    1588: 54000040     	b.eq	0x1590 <power_supply_attr_is_visible+0x98>
    158c: d4304500     	brk	#0x8228
    1590: d63f0100     	blr	x8
    1594: 52803488     	mov	w8, #0x1a4              // =420
    1598: 7100001f     	cmp	w0, #0x0
    159c: 52802480     	mov	w0, #0x124              // =292
    15a0: 1a80c100     	csel	w0, w8, w0, gt
    15a4: 17ffffef     	b	0x1560 <power_supply_attr_is_visible+0x68>
    15a8: 52802480     	mov	w0, #0x124              // =292
    15ac: 17ffffed     	b	0x1560 <power_supply_attr_is_visible+0x68>
    15b0: d42aa240     	brk	#0x5512
