
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000df64 <syna_mmap>:
    df64: d503233f     	paciasp
    df68: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    df6c: 910003fd     	mov	x29, sp
    df70: a9402428     	ldp	x8, x9, [x1]
    df74: cb080123     	sub	x3, x9, x8
    df78: f140c87f     	cmp	x3, #0x32, lsl #12      // =0x32000
    df7c: 54000388     	b.hi	0xdfec <syna_mmap+0x88>
    df80: f9401009     	ldr	x9, [x0, #0x20]
    df84: f940282a     	ldr	x10, [x1, #0x50]
    df88: 9000000b     	adrp	x11, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000df88:  R_AARCH64_ADR_PREL_PG_HI21	memstart_addr
    df8c: f940016b     	ldr	x11, [x11]
		000000000000df8c:  R_AARCH64_LDST64_ABS_LO12_NC	memstart_addr
    df90: f9400c24     	ldr	x4, [x1, #0x18]
    df94: aa0103e0     	mov	x0, x1
    df98: f9423129     	ldr	x9, [x9, #0x460]
    df9c: d36cad4a     	lsl	x10, x10, #20
    dfa0: aa0803e1     	mov	x1, x8
    dfa4: 934cfd6b     	asr	x11, x11, #12
    dfa8: 8b092149     	add	x9, x10, x9, lsl #8
    dfac: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
    dfb0: d37ae56b     	lsl	x11, x11, #6
    dfb4: 8b892149     	add	x9, x10, x9, asr #8
    dfb8: b25f7bea     	mov	x10, #-0x200000000      // =-8589934592
    dfbc: f2b8000a     	movk	x10, #0xc000, lsl #16
    dfc0: cb0a016b     	sub	x11, x11, x10
    dfc4: 8b491969     	add	x9, x11, x9, lsr #6
    dfc8: 8b0a0129     	add	x9, x9, x10
    dfcc: 9346fd22     	asr	x2, x9, #6
    dfd0: 94000000     	bl	0xdfd0 <syna_mmap+0x6c>
		000000000000dfd0:  R_AARCH64_CALL26	remap_pfn_range
    dfd4: 12800148     	mov	w8, #-0xb               // =-11
    dfd8: 7100001f     	cmp	w0, #0x0
    dfdc: 1a8803e0     	csel	w0, wzr, w8, eq
    dfe0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    dfe4: d50323bf     	autiasp
    dfe8: d65f03c0     	ret
    dfec: 2a0303e2     	mov	w2, w3
    dff0: 52840003     	mov	w3, #0x2000             // =8192
    dff4: 90000000     	adrp	x0, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000dff4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86ad
    dff8: 91000000     	add	x0, x0, #0x0
		000000000000dff8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86ad
    dffc: 90000001     	adrp	x1, 0xd000 <syna_dev_set_up_input_device+0x1c4>
		000000000000dffc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86d7
    e000: 91000021     	add	x1, x1, #0x0
		000000000000e000:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86d7
    e004: 72a00063     	movk	w3, #0x3, lsl #16
    e008: 94000000     	bl	0xe008 <syna_mmap+0xa4>
		000000000000e008:  R_AARCH64_CALL26	_printk
    e00c: 128002a0     	mov	w0, #-0x16              // =-22
    e010: 17fffff4     	b	0xdfe0 <syna_mmap+0x7c>
