
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000020ac <power_supply_attr_is_visible>:
    20ac: d503233f     	paciasp
    20b0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    20b4: 910003fd     	mov	x29, sp
    20b8: 71004c5f     	cmp	w2, #0x13
    20bc: 54000542     	b.hs	0x2164 <power_supply_attr_is_visible+0xb8>
    20c0: 52800b08     	mov	w8, #0x58               // =88
    20c4: 90000009     	adrp	x9, 0x2000 <zte_power_supply_uevent+0xe4>
		00000000000020c4:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x38
    20c8: 91000129     	add	x9, x9, #0x0
		00000000000020c8:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x38
    20cc: 9ba87c48     	umull	x8, w2, w8
    20d0: f8686928     	ldr	x8, [x9, x8]
    20d4: b40001e8     	cbz	x8, 0x2110 <power_supply_attr_is_visible+0x64>
    20d8: f9404c00     	ldr	x0, [x0, #0x98]
    20dc: f9400008     	ldr	x8, [x0]
    20e0: f9401509     	ldr	x9, [x8, #0x28]
    20e4: b4000169     	cbz	x9, 0x2110 <power_supply_attr_is_visible+0x64>
    20e8: f940110a     	ldr	x10, [x8, #0x20]
    20ec: aa1f03ec     	mov	x12, xzr
    20f0: 5280002b     	mov	w11, #0x1               // =1
    20f4: b86c794c     	ldr	w12, [x10, x12, lsl #2]
    20f8: 6b02019f     	cmp	w12, w2
    20fc: 54000120     	b.eq	0x2120 <power_supply_attr_is_visible+0x74>
    2100: 93407d6c     	sxtw	x12, w11
    2104: 1100056b     	add	w11, w11, #0x1
    2108: eb0c013f     	cmp	x9, x12
    210c: 54ffff48     	b.hi	0x20f4 <power_supply_attr_is_visible+0x48>
    2110: 2a1f03e0     	mov	w0, wzr
    2114: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    2118: d50323bf     	autiasp
    211c: d65f03c0     	ret
    2120: f9402108     	ldr	x8, [x8, #0x40]
    2124: b40001c8     	cbz	x8, 0x215c <power_supply_attr_is_visible+0xb0>
    2128: 2a0203e1     	mov	w1, w2
    212c: b85fc110     	ldur	w16, [x8, #-0x4]
    2130: 72839231     	movk	w17, #0x1c91
    2134: 72a7e131     	movk	w17, #0x3f09, lsl #16
    2138: 6b11021f     	cmp	w16, w17
    213c: 54000040     	b.eq	0x2144 <power_supply_attr_is_visible+0x98>
    2140: d4304500     	brk	#0x8228
    2144: d63f0100     	blr	x8
    2148: 52803488     	mov	w8, #0x1a4              // =420
    214c: 7100001f     	cmp	w0, #0x0
    2150: 52802480     	mov	w0, #0x124              // =292
    2154: 1a80c100     	csel	w0, w8, w0, gt
    2158: 17ffffef     	b	0x2114 <power_supply_attr_is_visible+0x68>
    215c: 52802480     	mov	w0, #0x124              // =292
    2160: 17ffffed     	b	0x2114 <power_supply_attr_is_visible+0x68>
    2164: d42aa240     	brk	#0x5512
