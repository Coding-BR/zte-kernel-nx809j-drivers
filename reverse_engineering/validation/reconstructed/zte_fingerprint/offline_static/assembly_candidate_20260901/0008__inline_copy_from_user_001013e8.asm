
/input/zte_fingerprint_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fe0 <_inline_copy_from_user>:
     fe0: d503233f     	paciasp
     fe4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     fe8: f9000bf5     	str	x21, [sp, #0x10]
     fec: a9024ff4     	stp	x20, x19, [sp, #0x20]
     ff0: 910003fd     	mov	x29, sp
     ff4: d5384108     	mrs	x8, SP_EL0
     ff8: 39411909     	ldrb	w9, [x8, #0x46]
     ffc: aa0203f3     	mov	x19, x2
    1000: aa0003f4     	mov	x20, x0
    1004: 37280089     	tbnz	w9, #0x5, 0x1014 <_inline_copy_from_user+0x34>
    1008: f940010a     	ldr	x10, [x8]
    100c: aa0103e9     	mov	x9, x1
    1010: 36d0006a     	tbz	w10, #0x1a, 0x101c <_inline_copy_from_user+0x3c>
    1014: d378dc29     	lsl	x9, x1, #8
    1018: 8a892029     	and	x9, x1, x9, asr #8
    101c: d2c0100a     	mov	x10, #0x8000000000      // =549755813888
    1020: aa1303f5     	mov	x21, x19
    1024: cb13014a     	sub	x10, x10, x19
    1028: eb09015f     	cmp	x10, x9
    102c: 540000e2     	b.hs	0x1048 <_inline_copy_from_user+0x68>
    1030: cb150268     	sub	x8, x19, x21
    1034: 2a1f03e1     	mov	w1, wzr
    1038: aa1503e2     	mov	x2, x21
    103c: 8b080280     	add	x0, x20, x8
    1040: 94000000     	bl	0x1040 <_inline_copy_from_user+0x60>
		0000000000001040:  R_AARCH64_CALL26	memset
    1044: 1400001c     	b	0x10b4 <_inline_copy_from_user+0xd4>
    1048: d503201f     	nop
    104c: d53b4229     	mrs	x9, DAIF
    1050: d50343df     	msr	DAIFSet, #0x3
    1054: f9400508     	ldr	x8, [x8, #0x8]
    1058: d538202a     	mrs	x10, TTBR1_EL1
    105c: aa0803eb     	mov	x11, x8
    1060: b340bd4b     	bfxil	x11, x10, #0, #48
    1064: d518202b     	msr	TTBR1_EL1, x11
    1068: d5182008     	msr	TTBR0_EL1, x8
    106c: d5033fdf     	isb
    1070: d51b4229     	msr	DAIF, x9
    1074: 9248f821     	and	x1, x1, #0xff7fffffffffffff
    1078: aa1403e0     	mov	x0, x20
    107c: aa1303e2     	mov	x2, x19
    1080: 94000000     	bl	0x1080 <_inline_copy_from_user+0xa0>
		0000000000001080:  R_AARCH64_CALL26	__arch_copy_from_user
    1084: aa0003f5     	mov	x21, x0
    1088: d503201f     	nop
    108c: d53b4228     	mrs	x8, DAIF
    1090: d50343df     	msr	DAIFSet, #0x3
    1094: d5382029     	mrs	x9, TTBR1_EL1
    1098: 9240bd29     	and	x9, x9, #0xffffffffffff
    109c: d140052a     	sub	x10, x9, #0x1, lsl #12  // =0x1000
    10a0: d518200a     	msr	TTBR0_EL1, x10
    10a4: d5182029     	msr	TTBR1_EL1, x9
    10a8: d5033fdf     	isb
    10ac: d51b4228     	msr	DAIF, x8
    10b0: b5fffc15     	cbnz	x21, 0x1030 <_inline_copy_from_user+0x50>
    10b4: aa1503e0     	mov	x0, x21
    10b8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    10bc: f9400bf5     	ldr	x21, [sp, #0x10]
    10c0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    10c4: d50323bf     	autiasp
    10c8: d65f03c0     	ret
