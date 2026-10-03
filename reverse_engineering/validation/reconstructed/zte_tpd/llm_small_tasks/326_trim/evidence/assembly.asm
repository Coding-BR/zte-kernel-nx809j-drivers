
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000024c54 <trim>:
   24c54: d503233f     	paciasp
   24c58: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   24c5c: a9014ff4     	stp	x20, x19, [sp, #0x10]
   24c60: 910003fd     	mov	x29, sp
   24c64: b40002a0     	cbz	x0, 0x24cb8 <trim+0x64>
   24c68: d1000413     	sub	x19, x0, #0x1
   24c6c: 90000014     	adrp	x20, 0x24000 <syna_tcm_preserve_touch_report_config+0x34c>
		0000000000024c6c:  R_AARCH64_ADR_PREL_PG_HI21	_ctype
   24c70: 91000294     	add	x20, x20, #0x0
		0000000000024c70:  R_AARCH64_ADD_ABS_LO12_NC	_ctype
   24c74: 38401e68     	ldrb	w8, [x19, #0x1]!
   24c78: 38686a89     	ldrb	w9, [x20, x8]
   24c7c: 372fffc9     	tbnz	w9, #0x5, 0x24c74 <trim+0x20>
   24c80: 340001e8     	cbz	w8, 0x24cbc <trim+0x68>
   24c84: aa1303e0     	mov	x0, x19
   24c88: 94000000     	bl	0x24c88 <trim+0x34>
		0000000000024c88:  R_AARCH64_CALL26	strlen
   24c8c: 8b000268     	add	x8, x19, x0
   24c90: d1000509     	sub	x9, x8, #0x1
   24c94: aa0903e8     	mov	x8, x9
   24c98: eb13013f     	cmp	x9, x19
   24c9c: 540000a9     	b.ls	0x24cb0 <trim+0x5c>
   24ca0: aa0803e9     	mov	x9, x8
   24ca4: 385ff52a     	ldrb	w10, [x9], #-0x1
   24ca8: 386a6a8a     	ldrb	w10, [x20, x10]
   24cac: 372fff4a     	tbnz	w10, #0x5, 0x24c94 <trim+0x40>
   24cb0: 3900051f     	strb	wzr, [x8, #0x1]
   24cb4: 14000002     	b	0x24cbc <trim+0x68>
   24cb8: aa1f03f3     	mov	x19, xzr
   24cbc: aa1303e0     	mov	x0, x19
   24cc0: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   24cc4: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   24cc8: d50323bf     	autiasp
   24ccc: d65f03c0     	ret
