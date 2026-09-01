
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b1c <power_supply_attr_is_visible>:
    1b1c: d503233f     	paciasp
    1b20: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1b24: 910003fd     	mov	x29, sp
    1b28: 71004c5f     	cmp	w2, #0x13
    1b2c: 540005ea     	b.ge	0x1be8 <power_supply_attr_is_visible+0xcc>
    1b30: 540005a2     	b.hs	0x1be4 <power_supply_attr_is_visible+0xc8>
    1b34: 52800b08     	mov	w8, #0x58               // =88
    1b38: 90000009     	adrp	x9, 0x1000 <zte_power_supply_set_battery_charged+0x18>
		0000000000001b38:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x10
    1b3c: 91000129     	add	x9, x9, #0x0
		0000000000001b3c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x10
    1b40: 9ba87c48     	umull	x8, w2, w8
    1b44: f8686928     	ldr	x8, [x9, x8]
    1b48: b40001e8     	cbz	x8, 0x1b84 <power_supply_attr_is_visible+0x68>
    1b4c: f9404c00     	ldr	x0, [x0, #0x98]
    1b50: f9400008     	ldr	x8, [x0]
    1b54: f9401509     	ldr	x9, [x8, #0x28]
    1b58: b4000169     	cbz	x9, 0x1b84 <power_supply_attr_is_visible+0x68>
    1b5c: f940110a     	ldr	x10, [x8, #0x20]
    1b60: aa1f03ec     	mov	x12, xzr
    1b64: 5280002b     	mov	w11, #0x1               // =1
    1b68: b86c794c     	ldr	w12, [x10, x12, lsl #2]
    1b6c: 6b02019f     	cmp	w12, w2
    1b70: 54000120     	b.eq	0x1b94 <power_supply_attr_is_visible+0x78>
    1b74: 93407d6c     	sxtw	x12, w11
    1b78: 1100056b     	add	w11, w11, #0x1
    1b7c: eb0c013f     	cmp	x9, x12
    1b80: 54ffff48     	b.hi	0x1b68 <power_supply_attr_is_visible+0x4c>
    1b84: 2a1f03e0     	mov	w0, wzr
    1b88: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1b8c: d50323bf     	autiasp
    1b90: d65f03c0     	ret
    1b94: b9445809     	ldr	w9, [x0, #0x458]
    1b98: 7100053f     	cmp	w9, #0x1
    1b9c: 5400020b     	b.lt	0x1bdc <power_supply_attr_is_visible+0xc0>
    1ba0: f9402108     	ldr	x8, [x8, #0x40]
    1ba4: b40001c8     	cbz	x8, 0x1bdc <power_supply_attr_is_visible+0xc0>
    1ba8: 2a0203e1     	mov	w1, w2
    1bac: b85fc110     	ldur	w16, [x8, #-0x4]
    1bb0: 72839231     	movk	w17, #0x1c91
    1bb4: 72a7e131     	movk	w17, #0x3f09, lsl #16
    1bb8: 6b11021f     	cmp	w16, w17
    1bbc: 54000040     	b.eq	0x1bc4 <power_supply_attr_is_visible+0xa8>
    1bc0: d4304500     	brk	#0x8228
    1bc4: d63f0100     	blr	x8
    1bc8: 52803488     	mov	w8, #0x1a4              // =420
    1bcc: 7100001f     	cmp	w0, #0x0
    1bd0: 52802480     	mov	w0, #0x124              // =292
    1bd4: 1a80c100     	csel	w0, w8, w0, gt
    1bd8: 17ffffec     	b	0x1b88 <power_supply_attr_is_visible+0x6c>
    1bdc: 52802480     	mov	w0, #0x124              // =292
    1be0: 17ffffea     	b	0x1b88 <power_supply_attr_is_visible+0x6c>
    1be4: d42aa240     	brk	#0x5512
    1be8: d4210000     	brk	#0x800
