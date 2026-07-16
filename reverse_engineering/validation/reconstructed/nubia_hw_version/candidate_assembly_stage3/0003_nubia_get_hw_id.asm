
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000001e4 <nubia_get_hw_id>:
     1e4: d503233f     	paciasp
     1e8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     1ec: f9000bf3     	str	x19, [sp, #0x10]
     1f0: 910003fd     	mov	x29, sp
     1f4: 90000008     	adrp	x8, 0x0 <.text>
		00000000000001f4:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio1_v
     1f8: 52800120     	mov	w0, #0x9                // =9
     1fc: 39400109     	ldrb	w9, [x8]
		00000000000001fc:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio1_v
     200: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000200:  R_AARCH64_ADR_PREL_PG_HI21	nubia_pcb_gpio2_v
     204: 39800108     	ldrsb	x8, [x8]
		0000000000000204:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_pcb_gpio2_v
     208: 7100053f     	cmp	w9, #0x1
     20c: 5400012c     	b.gt	0x230 <nubia_get_hw_id+0x4c>
     210: 34000229     	cbz	w9, 0x254 <nubia_get_hw_id+0x70>
     214: 7100053f     	cmp	w9, #0x1
     218: 540003c1     	b.ne	0x290 <nubia_get_hw_id+0xac>
     21c: 71000d1f     	cmp	w8, #0x3
     220: 54000382     	b.hs	0x290 <nubia_get_hw_id+0xac>
     224: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000224:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x3b0
     228: 91000129     	add	x9, x9, #0x0
		0000000000000228:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x3b0
     22c: 14000013     	b	0x278 <nubia_get_hw_id+0x94>
     230: 7100093f     	cmp	w9, #0x2
     234: 540001a0     	b.eq	0x268 <nubia_get_hw_id+0x84>
     238: 71000d3f     	cmp	w9, #0x3
     23c: 540002a1     	b.ne	0x290 <nubia_get_hw_id+0xac>
     240: 71000d1f     	cmp	w8, #0x3
     244: 54000261     	b.ne	0x290 <nubia_get_hw_id+0xac>
     248: 90000013     	adrp	x19, 0x0 <.text>
		0000000000000248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0xd8
     24c: 91000273     	add	x19, x19, #0x0
		000000000000024c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0xd8
     250: 1400000b     	b	0x27c <nubia_get_hw_id+0x98>
     254: 71000d1f     	cmp	w8, #0x3
     258: 540001c2     	b.hs	0x290 <nubia_get_hw_id+0xac>
     25c: 90000009     	adrp	x9, 0x0 <.text>
		000000000000025c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x380
     260: 91000129     	add	x9, x9, #0x0
		0000000000000260:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x380
     264: 14000005     	b	0x278 <nubia_get_hw_id+0x94>
     268: 71000d1f     	cmp	w8, #0x3
     26c: 54000122     	b.hs	0x290 <nubia_get_hw_id+0xac>
     270: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000270:  R_AARCH64_ADR_PREL_PG_HI21	.rodata+0x398
     274: 91000129     	add	x9, x9, #0x0
		0000000000000274:  R_AARCH64_ADD_ABS_LO12_NC	.rodata+0x398
     278: f8687933     	ldr	x19, [x9, x8, lsl #3]
     27c: 90000008     	adrp	x8, 0x0 <.text>
		000000000000027c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x8
     280: b9400108     	ldr	w8, [x8]
		0000000000000280:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x8
     284: 7100051f     	cmp	w8, #0x1
     288: 540000c0     	b.eq	0x2a0 <nubia_get_hw_id+0xbc>
     28c: b9400a60     	ldr	w0, [x19, #0x8]
     290: f9400bf3     	ldr	x19, [sp, #0x10]
     294: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     298: d50323bf     	autiasp
     29c: d65f03c0     	ret
     2a0: b9400a61     	ldr	w1, [x19, #0x8]
     2a4: 90000000     	adrp	x0, 0x0 <.text>
		00000000000002a4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4df
     2a8: 91000000     	add	x0, x0, #0x0
		00000000000002a8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4df
     2ac: 94000000     	bl	0x2ac <nubia_get_hw_id+0xc8>
		00000000000002ac:  R_AARCH64_CALL26	_printk
     2b0: 17fffff7     	b	0x28c <nubia_get_hw_id+0xa8>
