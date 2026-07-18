
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001b2c8 <syna_tcm_v1_terminate>:
   1b2c8: d503233f     	paciasp
   1b2cc: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   1b2d0: f9000bf3     	str	x19, [sp, #0x10]
   1b2d4: 910003fd     	mov	x29, sp
   1b2d8: b4000100     	cbz	x0, 0x1b2f8 <syna_tcm_v1_terminate+0x30>
   1b2dc: b941f808     	ldr	w8, [x0, #0x1f8]
   1b2e0: 7100051f     	cmp	w8, #0x1
   1b2e4: 54000160     	b.eq	0x1b310 <syna_tcm_v1_terminate+0x48>
   1b2e8: f9400bf3     	ldr	x19, [sp, #0x10]
   1b2ec: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   1b2f0: d50323bf     	autiasp
   1b2f4: d65f03c0     	ret
   1b2f8: 90000000     	adrp	x0, 0x1b000 <syna_tcm_v1_read_message+0x13e4>
		000000000001b2f8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3365A
   1b2fc: 91000000     	add	x0, x0, #0x0
		000000000001b2fc:  R_AARCH64_ADD_ABS_LO12_NC	unk_3365A
   1b300: 90000001     	adrp	x1, 0x1b000 <syna_tcm_v1_read_message+0x13e4>
		000000000001b300:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3eb2
   1b304: 91000021     	add	x1, x1, #0x0
		000000000001b304:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3eb2
   1b308: 94000000     	bl	0x1b308 <syna_tcm_v1_terminate+0x40>
		000000000001b308:  R_AARCH64_CALL26	_printk
   1b30c: 17fffff7     	b	0x1b2e8 <syna_tcm_v1_terminate+0x20>
   1b310: 3947f002     	ldrb	w2, [x0, #0x1fc]
   1b314: 90000008     	adrp	x8, 0x1b000 <syna_tcm_v1_read_message+0x13e4>
		000000000001b314:  R_AARCH64_ADR_PREL_PG_HI21	unk_3B33C
   1b318: 91000108     	add	x8, x8, #0x0
		000000000001b318:  R_AARCH64_ADD_ABS_LO12_NC	unk_3B33C
   1b31c: 90000001     	adrp	x1, 0x1b000 <syna_tcm_v1_read_message+0x13e4>
		000000000001b31c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3eb2
   1b320: 91000021     	add	x1, x1, #0x0
		000000000001b320:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3eb2
   1b324: aa0003f3     	mov	x19, x0
   1b328: aa0803e0     	mov	x0, x8
   1b32c: 94000000     	bl	0x1b32c <syna_tcm_v1_terminate+0x64>
		000000000001b32c:  R_AARCH64_CALL26	_printk
   1b330: 52800048     	mov	w8, #0x2                // =2
   1b334: 91088260     	add	x0, x19, #0x220
   1b338: b901fa68     	str	w8, [x19, #0x1f8]
   1b33c: 94000000     	bl	0x1b33c <syna_tcm_v1_terminate+0x74>
		000000000001b33c:  R_AARCH64_CALL26	completion_done
   1b340: 3707fd40     	tbnz	w0, #0x0, 0x1b2e8 <syna_tcm_v1_terminate+0x20>
   1b344: 91088260     	add	x0, x19, #0x220
   1b348: 94000000     	bl	0x1b348 <syna_tcm_v1_terminate+0x80>
		000000000001b348:  R_AARCH64_CALL26	complete
   1b34c: 17ffffe7     	b	0x1b2e8 <syna_tcm_v1_terminate+0x20>
