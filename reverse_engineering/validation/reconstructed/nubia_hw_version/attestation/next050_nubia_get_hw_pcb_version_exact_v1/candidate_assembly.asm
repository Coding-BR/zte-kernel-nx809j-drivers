
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000001d0 <nubia_get_hw_pcb_version>:
     1d0: d503233f     	paciasp
     1d4: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     1d8: a9014ff4     	stp	x20, x19, [sp, #0x10]
     1dc: 910003fd     	mov	x29, sp
     1e0: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001e0:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio1_v
     1e4: 39400109     	ldrb	w9, [x8]
		00000000000001e4:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     1e8: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001e8:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio2_v
     1ec: 39800108     	ldrsb	x8, [x8]
		00000000000001ec:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     1f0: 7100053f     	cmp	w9, #0x1
     1f4: 5400012c     	b.gt	0x218 <nubia_get_hw_pcb_version+0x48>
     1f8: 34000249     	cbz	w9, 0x240 <nubia_get_hw_pcb_version+0x70>
     1fc: 7100053f     	cmp	w9, #0x1
     200: 54000501     	b.ne	0x2a0 <nubia_get_hw_pcb_version+0xd0>
     204: 71000d1f     	cmp	w8, #0x3
     208: 540004c2     	b.hs	0x2a0 <nubia_get_hw_pcb_version+0xd0>
     20c: 90000009     	adrp	x9, 0x0 <.text>
		000000000000020c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_base+0x340
     210: 91000129     	add	x9, x9, #0x0
		0000000000000210:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_base+0x340
     214: 14000014     	b	0x264 <nubia_get_hw_pcb_version+0x94>
     218: 7100093f     	cmp	w9, #0x2
     21c: 540001c0     	b.eq	0x254 <nubia_get_hw_pcb_version+0x84>
     220: 71000d3f     	cmp	w9, #0x3
     224: 540003e1     	b.ne	0x2a0 <nubia_get_hw_pcb_version+0xd0>
     228: 71000d1f     	cmp	w8, #0x3
     22c: 540003a1     	b.ne	0x2a0 <nubia_get_hw_pcb_version+0xd0>
     230: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000230:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_base+0xd8
     234: 91000273     	add	x19, x19, #0x0
		0000000000000234:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_base+0xd8
     238: b50001a0     	cbnz	x0, 0x26c <nubia_get_hw_pcb_version+0x9c>
     23c: 14000020     	b	0x2bc <nubia_get_hw_pcb_version+0xec>
     240: 71000d1f     	cmp	w8, #0x3
     244: 540002e2     	b.hs	0x2a0 <nubia_get_hw_pcb_version+0xd0>
     248: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000248:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_base+0x310
     24c: 91000129     	add	x9, x9, #0x0
		000000000000024c:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_base+0x310
     250: 14000005     	b	0x264 <nubia_get_hw_pcb_version+0x94>
     254: 71000d1f     	cmp	w8, #0x3
     258: 54000242     	b.hs	0x2a0 <nubia_get_hw_pcb_version+0xd0>
     25c: 90000009     	adrp	x9, 0x0 <.text>
		000000000000025c:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_base+0x328
     260: 91000129     	add	x9, x9, #0x0
		0000000000000260:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_base+0x328
     264: f8687933     	ldr	x19, [x9, x8, lsl #3]
     268: b40002a0     	cbz	x0, 0x2bc <nubia_get_hw_pcb_version+0xec>
     26c: aa0003f4     	mov	x20, x0
     270: 91003260     	add	x0, x19, #0xc
     274: 52800181     	mov	w1, #0xc                // =12
     278: 94000000     	bl	0x278 <nubia_get_hw_pcb_version+0xa8>
		0000000000000278:  R_AARCH64_CALL26	strnlen
     27c: f100341f     	cmp	x0, #0xd
     280: 54000262     	b.hs	0x2cc <nubia_get_hw_pcb_version+0xfc>
     284: f100301f     	cmp	x0, #0xc
     288: 540002a0     	b.eq	0x2dc <nubia_get_hw_pcb_version+0x10c>
     28c: 91003261     	add	x1, x19, #0xc
     290: 91000402     	add	x2, x0, #0x1
     294: aa1403e0     	mov	x0, x20
     298: 94000000     	bl	0x298 <nubia_get_hw_pcb_version+0xc8>
		0000000000000298:  R_AARCH64_CALL26	memcpy
     29c: 14000008     	b	0x2bc <nubia_get_hw_pcb_version+0xec>
     2a0: b40000e0     	cbz	x0, 0x2bc <nubia_get_hw_pcb_version+0xec>
     2a4: 528dedc8     	mov	w8, #0x6f6e             // =28526
     2a8: 528dcea9     	mov	w9, #0x6e75             // =28277
     2ac: 72a00ee8     	movk	w8, #0x77, lsl #16
     2b0: 72adcd69     	movk	w9, #0x6e6b, lsl #16
     2b4: b8003008     	stur	w8, [x0, #0x3]
     2b8: b9000009     	str	w9, [x0]
     2bc: a9414ff4     	ldp	x20, x19, [sp, #0x10]
     2c0: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     2c4: d50323bf     	autiasp
     2c8: d65f03c0     	ret
     2cc: 91000402     	add	x2, x0, #0x1
     2d0: 52800040     	mov	w0, #0x2                // =2
     2d4: 52800181     	mov	w1, #0xc                // =12
     2d8: 94000000     	bl	0x2d8 <nubia_get_hw_pcb_version+0x108>
		00000000000002d8:  R_AARCH64_CALL26	__fortify_panic
     2dc: 91000402     	add	x2, x0, #0x1
     2e0: 52800080     	mov	w0, #0x4                // =4
     2e4: 52800181     	mov	w1, #0xc                // =12
     2e8: 94000000     	bl	0x2e8 <nubia_get_hw_pcb_version+0x118>
		00000000000002e8:  R_AARCH64_CALL26	__fortify_panic
