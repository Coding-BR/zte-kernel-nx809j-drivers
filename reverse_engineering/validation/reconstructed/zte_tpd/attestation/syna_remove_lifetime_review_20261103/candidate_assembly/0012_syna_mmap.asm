
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001eaf4 <syna_mmap>:
   1eaf4: d503233f     	paciasp
   1eaf8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
   1eafc: 910003fd     	mov	x29, sp
   1eb00: a9402428     	ldp	x8, x9, [x1]
   1eb04: cb080123     	sub	x3, x9, x8
   1eb08: f140c87f     	cmp	x3, #0x32, lsl #12      // =0x32000
   1eb0c: 54000388     	b.hi	0x1eb7c <syna_mmap+0x88>
   1eb10: f9401009     	ldr	x9, [x0, #0x20]
   1eb14: f940282a     	ldr	x10, [x1, #0x50]
   1eb18: 9000000b     	adrp	x11, 0x1e000 <report_ufp_uevent+0x19c>
		000000000001eb18:  R_AARCH64_ADR_PREL_PG_HI21	memstart_addr
   1eb1c: f940016b     	ldr	x11, [x11]
		000000000001eb1c:  R_AARCH64_LDST64_ABS_LO12_NC	memstart_addr
   1eb20: f9400c24     	ldr	x4, [x1, #0x18]
   1eb24: aa0103e0     	mov	x0, x1
   1eb28: f9423129     	ldr	x9, [x9, #0x460]
   1eb2c: d36cad4a     	lsl	x10, x10, #20
   1eb30: aa0803e1     	mov	x1, x8
   1eb34: 934cfd6b     	asr	x11, x11, #12
   1eb38: 8b092149     	add	x9, x10, x9, lsl #8
   1eb3c: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
   1eb40: d37ae56b     	lsl	x11, x11, #6
   1eb44: 8b892149     	add	x9, x10, x9, asr #8
   1eb48: b25f7bea     	mov	x10, #-0x200000000      // =-8589934592
   1eb4c: f2b8000a     	movk	x10, #0xc000, lsl #16
   1eb50: cb0a016b     	sub	x11, x11, x10
   1eb54: 8b491969     	add	x9, x11, x9, lsr #6
   1eb58: 8b0a0129     	add	x9, x9, x10
   1eb5c: 9346fd22     	asr	x2, x9, #6
   1eb60: 94000000     	bl	0x1eb60 <syna_mmap+0x6c>
		000000000001eb60:  R_AARCH64_CALL26	remap_pfn_range
   1eb64: 12800148     	mov	w8, #-0xb               // =-11
   1eb68: 7100001f     	cmp	w0, #0x0
   1eb6c: 1a8803e0     	csel	w0, wzr, w8, eq
   1eb70: a8c17bfd     	ldp	x29, x30, [sp], #0x10
   1eb74: d50323bf     	autiasp
   1eb78: d65f03c0     	ret
   1eb7c: 2a0303e2     	mov	w2, w3
   1eb80: 52840003     	mov	w3, #0x2000             // =8192
   1eb84: 90000000     	adrp	x0, 0x1e000 <report_ufp_uevent+0x19c>
		000000000001eb84:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88d2
   1eb88: 91000000     	add	x0, x0, #0x0
		000000000001eb88:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88d2
   1eb8c: 90000001     	adrp	x1, 0x1e000 <report_ufp_uevent+0x19c>
		000000000001eb8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x88fc
   1eb90: 91000021     	add	x1, x1, #0x0
		000000000001eb90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x88fc
   1eb94: 72a00063     	movk	w3, #0x3, lsl #16
   1eb98: 94000000     	bl	0x1eb98 <syna_mmap+0xa4>
		000000000001eb98:  R_AARCH64_CALL26	_printk
   1eb9c: 128002a0     	mov	w0, #-0x16              // =-22
   1eba0: 17fffff4     	b	0x1eb70 <syna_mmap+0x7c>
