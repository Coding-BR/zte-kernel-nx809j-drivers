
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000aef4 <syna_mmap>:
    aef4: d503233f     	paciasp
    aef8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    aefc: 910003fd     	mov	x29, sp
    af00: a9402428     	ldp	x8, x9, [x1]
    af04: cb080123     	sub	x3, x9, x8
    af08: f140c87f     	cmp	x3, #0x32, lsl #12      // =0x32000
    af0c: 54000308     	b.hi	0xaf6c <syna_mmap+0x78>
    af10: f9401009     	ldr	x9, [x0, #0x20]
    af14: f940282a     	ldr	x10, [x1, #0x50]
    af18: d2c0100b     	mov	x11, #0x8000000000      // =549755813888
    af1c: f9400c24     	ldr	x4, [x1, #0x18]
    af20: aa0103e0     	mov	x0, x1
    af24: aa0803e1     	mov	x1, x8
    af28: f9423129     	ldr	x9, [x9, #0x460]
    af2c: d36cad4a     	lsl	x10, x10, #20
    af30: 8b092149     	add	x9, x10, x9, lsl #8
    af34: 9000000a     	adrp	x10, 0xa000 <syna_dev_set_screen_on_fp_mode+0x88>
		000000000000af34:  R_AARCH64_ADR_PREL_PG_HI21	memstart_addr
    af38: f940014a     	ldr	x10, [x10]
		000000000000af38:  R_AARCH64_LDST64_ABS_LO12_NC	memstart_addr
    af3c: 8b892169     	add	x9, x11, x9, asr #8
    af40: 934cfd4a     	asr	x10, x10, #12
    af44: 9346fd29     	asr	x9, x9, #6
    af48: 8b0a1929     	add	x9, x9, x10, lsl #6
    af4c: 9346fd22     	asr	x2, x9, #6
    af50: 94000000     	bl	0xaf50 <syna_mmap+0x5c>
		000000000000af50:  R_AARCH64_CALL26	remap_pfn_range
    af54: 12800148     	mov	w8, #-0xb               // =-11
    af58: 7100001f     	cmp	w0, #0x0
    af5c: 1a8803e0     	csel	w0, wzr, w8, eq
    af60: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    af64: d50323bf     	autiasp
    af68: d65f03c0     	ret
    af6c: 2a0303e2     	mov	w2, w3
    af70: 52840003     	mov	w3, #0x2000             // =8192
    af74: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x88>
		000000000000af74:  R_AARCH64_ADR_PREL_PG_HI21	unk_3990A
    af78: 91000000     	add	x0, x0, #0x0
		000000000000af78:  R_AARCH64_ADD_ABS_LO12_NC	unk_3990A
    af7c: 90000001     	adrp	x1, 0xa000 <syna_dev_set_screen_on_fp_mode+0x88>
		000000000000af7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ce3
    af80: 91000021     	add	x1, x1, #0x0
		000000000000af80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ce3
    af84: 72a00063     	movk	w3, #0x3, lsl #16
    af88: 94000000     	bl	0xaf88 <syna_mmap+0x94>
		000000000000af88:  R_AARCH64_CALL26	_printk
    af8c: 128002a0     	mov	w0, #-0x16              // =-22
    af90: 17fffff4     	b	0xaf60 <syna_mmap+0x6c>
