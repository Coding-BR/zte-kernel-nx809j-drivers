
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000021ab4 <tpd_reset_gpio_output>:
   21ab4: d503233f     	paciasp
   21ab8: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
   21abc: a9014ff4     	stp	x20, x19, [sp, #0x10]
   21ac0: 910003fd     	mov	x29, sp
   21ac4: 90000008     	adrp	x8, 0x21000 <tpd_get_singlefpgesture+0x14>
		0000000000021ac4:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   21ac8: f9400108     	ldr	x8, [x8]
		0000000000021ac8:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   21acc: f9467d13     	ldr	x19, [x8, #0xcf8]
   21ad0: b40001d3     	cbz	x19, 0x21b08 <tpd_reset_gpio_output+0x54>
   21ad4: b85fc268     	ldur	w8, [x19, #-0x4]
   21ad8: 529d2f29     	mov	w9, #0xe979             // =59769
   21adc: 72b45f89     	movk	w9, #0xa2fc, lsl #16
   21ae0: 6b09011f     	cmp	w8, w9
   21ae4: 540001a1     	b.ne	0x21b18 <tpd_reset_gpio_output+0x64>
   21ae8: 12000000     	and	w0, w0, #0x1
   21aec: b85fc270     	ldur	w16, [x19, #-0x4]
   21af0: 729d2f31     	movk	w17, #0xe979
   21af4: 72b45f91     	movk	w17, #0xa2fc, lsl #16
   21af8: 6b11021f     	cmp	w16, w17
   21afc: 54000040     	b.eq	0x21b04 <tpd_reset_gpio_output+0x50>
   21b00: d4304660     	brk	#0x8233
   21b04: d63f0260     	blr	x19
   21b08: a9414ff4     	ldp	x20, x19, [sp, #0x10]
   21b0c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
   21b10: d50323bf     	autiasp
   21b14: d65f03c0     	ret
   21b18: 90000008     	adrp	x8, 0x21000 <tpd_get_singlefpgesture+0x14>
		0000000000021b18:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x3d
   21b1c: 91000108     	add	x8, x8, #0x0
		0000000000021b1c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x3d
   21b20: 90000002     	adrp	x2, 0x21000 <tpd_get_singlefpgesture+0x14>
		0000000000021b20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xf91
   21b24: 91000042     	add	x2, x2, #0x0
		0000000000021b24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xf91
   21b28: 2a0003f4     	mov	w20, w0
   21b2c: aa0803e0     	mov	x0, x8
   21b30: 52904501     	mov	w1, #0x8228             // =33320
   21b34: 52800163     	mov	w3, #0xb                // =11
   21b38: 94000000     	bl	0x21b38 <tpd_reset_gpio_output+0x84>
		0000000000021b38:  R_AARCH64_CALL26	_printk
   21b3c: 2a1403e0     	mov	w0, w20
   21b40: 17ffffea     	b	0x21ae8 <tpd_reset_gpio_output+0x34>
