
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b268 <trim>:
   1b268: d503233f     	paciasp
   1b26c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1b270: a9014ff4     	stp	x20, x19, [sp, #0x10]
   1b274: 910003fd     	mov	x29, sp
   1b278: b40002a0     	cbz	x0, 0x1b2cc <trim+0x64>
   1b27c: d1000413     	sub	x19, x0, #0x1
   1b280: 90000014     	adrp	x20, 0x1b000 <string_change+0x3a8>
		000000000001b280:  R_AARCH64_ADR_PREL_PG_HI21	_ctype
   1b284: 91000294     	add	x20, x20, #0x0
		000000000001b284:  R_AARCH64_ADD_ABS_LO12_NC	_ctype
   1b288: 38401e68     	ldrb	w8, [x19, #0x1]!
   1b28c: 38686a89     	ldrb	w9, [x20, x8]
   1b290: 372fffc9     	tbnz	w9, #0x5, 0x1b288 <trim+0x20>
   1b294: 340001e8     	cbz	w8, 0x1b2d0 <trim+0x68>
   1b298: aa1303e0     	mov	x0, x19
   1b29c: 94000000     	bl	0x1b29c <trim+0x34>
		000000000001b29c:  R_AARCH64_CALL26	strlen
   1b2a0: 8b000268     	add	x8, x19, x0
   1b2a4: d1000509     	sub	x9, x8, #0x1
   1b2a8: aa0903e8     	mov	x8, x9
   1b2ac: eb13013f     	cmp	x9, x19
   1b2b0: 540000a9     	b.ls	0x1b2c4 <trim+0x5c>
   1b2b4: aa0803e9     	mov	x9, x8
   1b2b8: 385ff52a     	ldrb	w10, [x9], #-0x1
   1b2bc: 386a6a8a     	ldrb	w10, [x20, x10]
   1b2c0: 372fff4a     	tbnz	w10, #0x5, 0x1b2a8 <trim+0x40>
   1b2c4: 3900051f     	strb	wzr, [x8, #0x1]
   1b2c8: 14000002     	b	0x1b2d0 <trim+0x68>
   1b2cc: aa1f03f3     	mov	x19, xzr
   1b2d0: aa1303e0     	mov	x0, x19
   1b2d4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   1b2d8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1b2dc: d50323bf     	autiasp
   1b2e0: d65f03c0     	ret
