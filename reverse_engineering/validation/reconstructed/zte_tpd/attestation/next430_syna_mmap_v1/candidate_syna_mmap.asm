
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000af88 <syna_mmap>:
    af88: d503233f     	paciasp
    af8c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    af90: 910003fd     	mov	x29, sp
    af94: a9402428     	ldp	x8, x9, [x1]
    af98: cb080123     	sub	x3, x9, x8
    af9c: f140c87f     	cmp	x3, #0x32, lsl #12      // =0x32000
    afa0: 54000288     	b.hi	0xaff0 <syna_mmap+0x68>
    afa4: f9401009     	ldr	x9, [x0, #0x20]
    afa8: 9000000a     	adrp	x10, 0xa000 <syna_dev_set_screen_on_fp_mode+0x20>
		000000000000afa8:  R_AARCH64_ADR_PREL_PG_HI21	memstart_addr
    afac: d2c0100b     	mov	x11, #0x8000000000      // =549755813888
    afb0: f940014a     	ldr	x10, [x10]
		000000000000afb0:  R_AARCH64_LDST64_ABS_LO12_NC	memstart_addr
    afb4: f9400c24     	ldr	x4, [x1, #0x18]
    afb8: aa0103e0     	mov	x0, x1
    afbc: f9423129     	ldr	x9, [x9, #0x460]
    afc0: 8b0b014a     	add	x10, x10, x11
    afc4: f940282b     	ldr	x11, [x1, #0x50]
    afc8: aa0803e1     	mov	x1, x8
    afcc: 8b0a0129     	add	x9, x9, x10
    afd0: 8b493162     	add	x2, x11, x9, lsr #12
    afd4: 94000000     	bl	0xafd4 <syna_mmap+0x4c>
		000000000000afd4:  R_AARCH64_CALL26	remap_pfn_range
    afd8: 12800148     	mov	w8, #-0xb               // =-11
    afdc: 7100001f     	cmp	w0, #0x0
    afe0: 1a8803e0     	csel	w0, wzr, w8, eq
    afe4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    afe8: d50323bf     	autiasp
    afec: d65f03c0     	ret
    aff0: 2a0303e2     	mov	w2, w3
    aff4: 52840003     	mov	w3, #0x2000             // =8192
    aff8: 90000000     	adrp	x0, 0xa000 <syna_dev_set_screen_on_fp_mode+0x20>
		000000000000aff8:  R_AARCH64_ADR_PREL_PG_HI21	unk_3990A
    affc: 91000000     	add	x0, x0, #0x0
		000000000000affc:  R_AARCH64_ADD_ABS_LO12_NC	unk_3990A
    b000: 90000001     	adrp	x1, 0xb000 <syna_mmap+0x78>
		000000000000b000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4ce3
    b004: 91000021     	add	x1, x1, #0x0
		000000000000b004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4ce3
    b008: 72a00063     	movk	w3, #0x3, lsl #16
    b00c: 94000000     	bl	0xb00c <syna_mmap+0x84>
		000000000000b00c:  R_AARCH64_CALL26	_printk
    b010: 128002a0     	mov	w0, #-0x16              // =-22
    b014: 17fffff4     	b	0xafe4 <syna_mmap+0x5c>
