
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001c958 <tpd_set_frame_data>:
   1c958: d503233f     	paciasp
   1c95c: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
   1c960: f9000bf5     	str	x21, [sp, #0x10]
   1c964: a9024ff4     	stp	x20, x19, [sp, #0x20]
   1c968: 910003fd     	mov	x29, sp
   1c96c: f946dc13     	ldr	x19, [x0, #0xdb8]
   1c970: 2a0103f4     	mov	w20, w1
   1c974: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c974:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3402
   1c978: 91000000     	add	x0, x0, #0x0
		000000000001c978:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3402
   1c97c: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c97c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44be
   1c980: 91000021     	add	x1, x1, #0x0
		000000000001c980:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44be
   1c984: 94000000     	bl	0x1c984 <tpd_set_frame_data+0x2c>
		000000000001c984:  R_AARCH64_CALL26	_printk
   1c988: b40002f3     	cbz	x19, 0x1c9e4 <tpd_set_frame_data+0x8c>
   1c98c: f9413a69     	ldr	x9, [x19, #0x270]
   1c990: f9400268     	ldr	x8, [x19]
   1c994: b940b92a     	ldr	w10, [x9, #0xb8]
   1c998: 340000aa     	cbz	w10, 0x1c9ac <tpd_set_frame_data+0x54>
   1c99c: 3942f129     	ldrb	w9, [x9, #0xbc]
   1c9a0: 36000069     	tbz	w9, #0x0, 0x1c9ac <tpd_set_frame_data+0x54>
   1c9a4: 2a1f03f5     	mov	w21, wzr
   1c9a8: 14000002     	b	0x1c9b0 <tpd_set_frame_data+0x58>
   1c9ac: b9420d15     	ldr	w21, [x8, #0x20c]
   1c9b0: b9457e68     	ldr	w8, [x19, #0x57c]
   1c9b4: 7100051f     	cmp	w8, #0x1
   1c9b8: 54000221     	b.ne	0x1c9fc <tpd_set_frame_data+0xa4>
   1c9bc: aa1303e0     	mov	x0, x19
   1c9c0: b905e274     	str	w20, [x19, #0x5e0]
   1c9c4: 94000000     	bl	0x1c9c4 <tpd_set_frame_data+0x6c>
		000000000001c9c4:  R_AARCH64_CALL26	zte_reset_frame_list
   1c9c8: aa1303e0     	mov	x0, x19
   1c9cc: 2a1403e1     	mov	w1, w20
   1c9d0: 2a1503e2     	mov	w2, w21
   1c9d4: 94000000     	bl	0x1c9d4 <tpd_set_frame_data+0x7c>
		000000000001c9d4:  R_AARCH64_CALL26	syna_dev_get_frame_data
   1c9d8: 37f80180     	tbnz	w0, #0x1f, 0x1ca08 <tpd_set_frame_data+0xb0>
   1c9dc: 2a1f03e0     	mov	w0, wzr
   1c9e0: 14000002     	b	0x1c9e8 <tpd_set_frame_data+0x90>
   1c9e4: 128002a0     	mov	w0, #-0x16              // =-22
   1c9e8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
   1c9ec: f9400bf5     	ldr	x21, [sp, #0x10]
   1c9f0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
   1c9f4: d50323bf     	autiasp
   1c9f8: d65f03c0     	ret
   1c9fc: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001c9fc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa6a2
   1ca00: 91000000     	add	x0, x0, #0x0
		000000000001ca00:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa6a2
   1ca04: 14000003     	b	0x1ca10 <tpd_set_frame_data+0xb8>
   1ca08: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001ca08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3094
   1ca0c: 91000000     	add	x0, x0, #0x0
		000000000001ca0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3094
   1ca10: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001ca10:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x44be
   1ca14: 91000021     	add	x1, x1, #0x0
		000000000001ca14:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x44be
   1ca18: 94000000     	bl	0x1ca18 <tpd_set_frame_data+0xc0>
		000000000001ca18:  R_AARCH64_CALL26	_printk
   1ca1c: 17fffff0     	b	0x1c9dc <tpd_set_frame_data+0x84>
