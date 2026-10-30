
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000002b8 <nubia_get_hw_pcb_version>:
     2b8: d503233f     	paciasp
     2bc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     2c0: a9014ff4     	stp	x20, x19, [sp, #0x10]
     2c4: 910003fd     	mov	x29, sp
     2c8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000002c8:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio1_v
     2cc: 39400109     	ldrb	w9, [x8]
		00000000000002cc:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     2d0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000002d0:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio2_v
     2d4: 39800108     	ldrsb	x8, [x8]
		00000000000002d4:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     2d8: 7100053f     	cmp	w9, #0x1
     2dc: 5400012c     	b.gt	0x300 <nubia_get_hw_pcb_version+0x48>
     2e0: 34000249     	cbz	w9, 0x328 <nubia_get_hw_pcb_version+0x70>
     2e4: 7100053f     	cmp	w9, #0x1
     2e8: 54000501     	b.ne	0x388 <nubia_get_hw_pcb_version+0xd0>
     2ec: 71000d1f     	cmp	w8, #0x3
     2f0: 540004c2     	b.hs	0x388 <nubia_get_hw_pcb_version+0xd0>
     2f4: 90000009     	adrp	x9, 0x0 <.text>
		00000000000002f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x340
     2f8: 91000129     	add	x9, x9, #0x0
		00000000000002f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x340
     2fc: 14000014     	b	0x34c <nubia_get_hw_pcb_version+0x94>
     300: 7100093f     	cmp	w9, #0x2
     304: 540001c0     	b.eq	0x33c <nubia_get_hw_pcb_version+0x84>
     308: 71000d3f     	cmp	w9, #0x3
     30c: 540003e1     	b.ne	0x388 <nubia_get_hw_pcb_version+0xd0>
     310: 71000d1f     	cmp	w8, #0x3
     314: 540003a1     	b.ne	0x388 <nubia_get_hw_pcb_version+0xd0>
     318: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000318:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xd8
     31c: 91000273     	add	x19, x19, #0x0
		000000000000031c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xd8
     320: b50001a0     	cbnz	x0, 0x354 <nubia_get_hw_pcb_version+0x9c>
     324: 14000020     	b	0x3a4 <nubia_get_hw_pcb_version+0xec>
     328: 71000d1f     	cmp	w8, #0x3
     32c: 540002e2     	b.hs	0x388 <nubia_get_hw_pcb_version+0xd0>
     330: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000330:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x310
     334: 91000129     	add	x9, x9, #0x0
		0000000000000334:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x310
     338: 14000005     	b	0x34c <nubia_get_hw_pcb_version+0x94>
     33c: 71000d1f     	cmp	w8, #0x3
     340: 54000242     	b.hs	0x388 <nubia_get_hw_pcb_version+0xd0>
     344: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000344:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x328
     348: 91000129     	add	x9, x9, #0x0
		0000000000000348:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x328
     34c: f8687933     	ldr	x19, [x9, x8, lsl #3]
     350: b40002a0     	cbz	x0, 0x3a4 <nubia_get_hw_pcb_version+0xec>
     354: aa0003f4     	mov	x20, x0
     358: 91003260     	add	x0, x19, #0xc
     35c: 52800181     	mov	w1, #0xc                // =12
     360: 94000000     	bl	0x360 <nubia_get_hw_pcb_version+0xa8>
		0000000000000360:  R_AARCH64_CALL26	strnlen
     364: f100341f     	cmp	x0, #0xd
     368: 54000262     	b.hs	0x3b4 <nubia_get_hw_pcb_version+0xfc>
     36c: f100301f     	cmp	x0, #0xc
     370: 540002a0     	b.eq	0x3c4 <nubia_get_hw_pcb_version+0x10c>
     374: 91003261     	add	x1, x19, #0xc
     378: 91000402     	add	x2, x0, #0x1
     37c: aa1403e0     	mov	x0, x20
     380: 94000000     	bl	0x380 <nubia_get_hw_pcb_version+0xc8>
		0000000000000380:  R_AARCH64_CALL26	memcpy
     384: 14000008     	b	0x3a4 <nubia_get_hw_pcb_version+0xec>
     388: b40000e0     	cbz	x0, 0x3a4 <nubia_get_hw_pcb_version+0xec>
     38c: 528dedc8     	mov	w8, #0x6f6e             // =28526
     390: 528dcea9     	mov	w9, #0x6e75             // =28277
     394: 72a00ee8     	movk	w8, #0x77, lsl #16
     398: 72adcd69     	movk	w9, #0x6e6b, lsl #16
     39c: b8003008     	stur	w8, [x0, #0x3]
     3a0: b9000009     	str	w9, [x0]
     3a4: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     3a8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     3ac: d50323bf     	autiasp
     3b0: d65f03c0     	ret
     3b4: 91000402     	add	x2, x0, #0x1
     3b8: 52800040     	mov	w0, #0x2                // =2
     3bc: 52800181     	mov	w1, #0xc                // =12
     3c0: 94000000     	bl	0x3c0 <nubia_get_hw_pcb_version+0x108>
		00000000000003c0:  R_AARCH64_CALL26	__fortify_panic
     3c4: 91000402     	add	x2, x0, #0x1
     3c8: 52800080     	mov	w0, #0x4                // =4
     3cc: 52800181     	mov	w1, #0xc                // =12
     3d0: 94000000     	bl	0x3d0 <nubia_get_hw_pcb_version+0x118>
		00000000000003d0:  R_AARCH64_CALL26	__fortify_panic
