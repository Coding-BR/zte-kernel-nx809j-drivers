
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001cbb0 <syna_mmap>:
   1cbb0: d503233f     	paciasp
   1cbb4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1cbb8: 910003fd     	mov	x29, sp
   1cbbc: a9402428     	ldp	x8, x9, [x1]
   1cbc0: cb080123     	sub	x3, x9, x8
   1cbc4: f140c87f     	cmp	x3, #0x32, lsl #12      // =0x32000
   1cbc8: 54000388     	b.hi	0x1cc38 <syna_mmap+0x88>
   1cbcc: f9401009     	ldr	x9, [x0, #0x20]
   1cbd0: f940282a     	ldr	x10, [x1, #0x50]
   1cbd4: 9000000b     	adrp	x11, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cbd4:  R_AARCH64_ADR_PREL_PG_HI21	memstart_addr
   1cbd8: f940016b     	ldr	x11, [x11]
		000000000001cbd8:  R_AARCH64_LDST64_ABS_LO12_NC	memstart_addr
   1cbdc: f9400c24     	ldr	x4, [x1, #0x18]
   1cbe0: aa0103e0     	mov	x0, x1
   1cbe4: f9423129     	ldr	x9, [x9, #0x460]
   1cbe8: d36cad4a     	lsl	x10, x10, #20
   1cbec: aa0803e1     	mov	x1, x8
   1cbf0: 934cfd6b     	asr	x11, x11, #12
   1cbf4: 8b092149     	add	x9, x10, x9, lsl #8
   1cbf8: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
   1cbfc: d37ae56b     	lsl	x11, x11, #6
   1cc00: 8b892149     	add	x9, x10, x9, asr #8
   1cc04: b25f7bea     	mov	x10, #-0x200000000      // =-8589934592
   1cc08: f2b8000a     	movk	x10, #0xc000, lsl #16
   1cc0c: cb0a016b     	sub	x11, x11, x10
   1cc10: 8b491969     	add	x9, x11, x9, lsr #6
   1cc14: 8b0a0129     	add	x9, x9, x10
   1cc18: 9346fd22     	asr	x2, x9, #6
   1cc1c: 94000000     	bl	0x1cc1c <syna_mmap+0x6c>
		000000000001cc1c:  R_AARCH64_CALL26	remap_pfn_range
   1cc20: 12800148     	mov	w8, #-0xb               // =-11
   1cc24: 7100001f     	cmp	w0, #0x0
   1cc28: 1a8803e0     	csel	w0, wzr, w8, eq
   1cc2c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1cc30: d50323bf     	autiasp
   1cc34: d65f03c0     	ret
   1cc38: 2a0303e2     	mov	w2, w3
   1cc3c: 52840003     	mov	w3, #0x2000             // =8192
   1cc40: 90000000     	adrp	x0, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cc40:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88d2
   1cc44: 91000000     	add	x0, x0, #0x0
		000000000001cc44:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88d2
   1cc48: 90000001     	adrp	x1, 0x1c000 <report_ufp_uevent+0xe0>
		000000000001cc48:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88fc
   1cc4c: 91000021     	add	x1, x1, #0x0
		000000000001cc4c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88fc
   1cc50: 72a00063     	movk	w3, #0x3, lsl #16
   1cc54: 94000000     	bl	0x1cc54 <syna_mmap+0xa4>
		000000000001cc54:  R_AARCH64_CALL26	_printk
   1cc58: 128002a0     	mov	w0, #-0x16              // =-22
   1cc5c: 17fffff4     	b	0x1cc2c <syna_mmap+0x7c>
