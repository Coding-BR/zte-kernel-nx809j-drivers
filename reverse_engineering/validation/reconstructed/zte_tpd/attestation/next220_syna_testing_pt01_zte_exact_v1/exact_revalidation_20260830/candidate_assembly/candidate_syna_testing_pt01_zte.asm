
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bddc <syna_testing_pt01_zte>:
    bddc: d503233f     	paciasp
    bde0: d10283ff     	sub	sp, sp, #0xa0
    bde4: a9067bfd     	stp	x29, x30, [sp, #0x60]
    bde8: f9003bf7     	str	x23, [sp, #0x70]
    bdec: a90857f6     	stp	x22, x21, [sp, #0x80]
    bdf0: a9094ff4     	stp	x20, x19, [sp, #0x90]
    bdf4: 910183fd     	add	x29, sp, #0x60
    bdf8: d5384108     	mrs	x8, SP_EL0
    bdfc: aa0003f4     	mov	x20, x0
    be00: f9438908     	ldr	x8, [x8, #0x710]
    be04: f81f83a8     	stur	x8, [x29, #-0x8]
    be08: f90007ff     	str	xzr, [sp, #0x8]
    be0c: a904ffff     	stp	xzr, xzr, [sp, #0x48]
    be10: a903ffff     	stp	xzr, xzr, [sp, #0x38]
    be14: a902ffff     	stp	xzr, xzr, [sp, #0x28]
    be18: f90013ff     	str	xzr, [sp, #0x20]
    be1c: d503201f     	nop
    be20: 90000008     	adrp	x8, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000be20:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
    be24: 5281b801     	mov	w1, #0xdc0              // =3520
    be28: 52820002     	mov	w2, #0x1000             // =4096
    be2c: f9400100     	ldr	x0, [x8]
		000000000000be2c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
    be30: 94000000     	bl	0xbe30 <syna_testing_pt01_zte+0x54>
		000000000000be30:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    be34: aa0003f3     	mov	x19, x0
    be38: b40011f3     	cbz	x19, 0xc074 <syna_testing_pt01_zte+0x298>
    be3c: 94000000     	bl	0xbe3c <syna_testing_pt01_zte+0x60>
		000000000000be3c:  R_AARCH64_CALL26	syna_tcm_get_testing_0100
    be40: b4000ac0     	cbz	x0, 0xbf98 <syna_testing_pt01_zte+0x1bc>
    be44: 910043f6     	add	x22, sp, #0x10
    be48: aa0003f5     	mov	x21, x0
    be4c: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000be4c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1beea
    be50: 91000021     	add	x1, x1, #0x0
		000000000000be50:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1beea
    be54: 90000002     	adrp	x2, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000be54:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x26de
    be58: 91000042     	add	x2, x2, #0x0
		000000000000be58:  R_AARCH64_ADD_ABS_LO12_NC	.bss+0x26de
    be5c: 910042c0     	add	x0, x22, #0x10
    be60: 390143ff     	strb	wzr, [sp, #0x50]
    be64: a9017fff     	stp	xzr, xzr, [sp, #0x10]
    be68: 94000000     	bl	0xbe68 <syna_testing_pt01_zte+0x8c>
		000000000000be68:  R_AARCH64_CALL26	__mutex_init
    be6c: 910003e9     	mov	x9, sp
    be70: f9006eb6     	str	x22, [x21, #0xd8]
    be74: 90000008     	adrp	x8, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000be74:  R_AARCH64_ADR_PREL_PG_HI21	pt01_limits
    be78: 91000108     	add	x8, x8, #0x0
		000000000000be78:  R_AARCH64_ADD_ABS_LO12_NC	pt01_limits
    be7c: f9001ea9     	str	x9, [x21, #0x38]
    be80: f9400ea9     	ldr	x9, [x21, #0x18]
    be84: f9400280     	ldr	x0, [x20]
    be88: f90003e8     	str	x8, [sp]
    be8c: 52800208     	mov	w8, #0x10               // =16
    be90: aa1503e1     	mov	x1, x21
    be94: 2a1f03e2     	mov	w2, wzr
    be98: b9000be8     	str	w8, [sp, #0x8]
    be9c: b85fc130     	ldur	w16, [x9, #-0x4]
    bea0: 72895251     	movk	w17, #0x4a92
    bea4: 72b03811     	movk	w17, #0x81c0, lsl #16
    bea8: 6b11021f     	cmp	w16, w17
    beac: 54000040     	b.eq	0xbeb4 <syna_testing_pt01_zte+0xd8>
    beb0: d4304520     	brk	#0x8229
    beb4: d63f0120     	blr	x9
    beb8: 37f80980     	tbnz	w0, #0x1f, 0xbfe8 <syna_testing_pt01_zte+0x20c>
    bebc: 394042a8     	ldrb	w8, [x21, #0x10]
    bec0: 90000009     	adrp	x9, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bec0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6fa
    bec4: 91000129     	add	x9, x9, #0x0
		000000000000bec4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6fa
    bec8: 7100011f     	cmp	w8, #0x0
    becc: 90000008     	adrp	x8, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000becc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af66
    bed0: 91000108     	add	x8, x8, #0x0
		000000000000bed0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af66
    bed4: 9a891105     	csel	x5, x8, x9, ne
    bed8: f94006a3     	ldr	x3, [x21, #0x8]
    bedc: b94002a4     	ldr	w4, [x21]
    bee0: 90000002     	adrp	x2, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bee0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17eac
    bee4: 91000042     	add	x2, x2, #0x0
		000000000000bee4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17eac
    bee8: aa1303e0     	mov	x0, x19
    beec: 52820001     	mov	w1, #0x1000             // =4096
    bef0: 94000000     	bl	0xbef0 <syna_testing_pt01_zte+0x114>
		000000000000bef0:  R_AARCH64_CALL26	scnprintf
    bef4: b9401fe8     	ldr	w8, [sp, #0x1c]
    bef8: 2a0003f4     	mov	w20, w0
    befc: 34000308     	cbz	w8, 0xbf5c <syna_testing_pt01_zte+0x180>
    bf00: 2a1f03f6     	mov	w22, wzr
    bf04: 52820017     	mov	w23, #0x1000            // =4096
    bf08: 90000015     	adrp	x21, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bf08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1af6b
    bf0c: 910002b5     	add	x21, x21, #0x0
		000000000000bf0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1af6b
    bf10: f9400be8     	ldr	x8, [sp, #0x10]
    bf14: 2a1403e9     	mov	w9, w20
    bf18: aa1503e2     	mov	x2, x21
    bf1c: cb0902e1     	sub	x1, x23, x9
    bf20: 8b090260     	add	x0, x19, x9
    bf24: 3876c903     	ldrb	w3, [x8, w22, sxtw]
    bf28: 94000000     	bl	0xbf28 <syna_testing_pt01_zte+0x14c>
		000000000000bf28:  R_AARCH64_CALL26	scnprintf
    bf2c: b9401fe8     	ldr	w8, [sp, #0x1c]
    bf30: 110006d6     	add	w22, w22, #0x1
    bf34: 0b140014     	add	w20, w0, w20
    bf38: 6b0802df     	cmp	w22, w8
    bf3c: 54fffea3     	b.lo	0xbf10 <syna_testing_pt01_zte+0x134>
    bf40: 52820008     	mov	w8, #0x1000             // =4096
    bf44: 90000002     	adrp	x2, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bf44:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a9ab
    bf48: 91000042     	add	x2, x2, #0x0
		000000000000bf48:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a9ab
    bf4c: cb140101     	sub	x1, x8, x20
    bf50: 8b140260     	add	x0, x19, x20
    bf54: 94000000     	bl	0xbf54 <syna_testing_pt01_zte+0x178>
		000000000000bf54:  R_AARCH64_CALL26	scnprintf
    bf58: 0b140014     	add	w20, w0, w20
    bf5c: aa1303e0     	mov	x0, x19
    bf60: 94000000     	bl	0xbf60 <syna_testing_pt01_zte+0x184>
		000000000000bf60:  R_AARCH64_CALL26	tpd_copy_to_tp_firmware_data
    bf64: 394143e2     	ldrb	w2, [sp, #0x50]
    bf68: 35000522     	cbnz	w2, 0xc00c <syna_testing_pt01_zte+0x230>
    bf6c: f9400bf5     	ldr	x21, [sp, #0x10]
    bf70: 94000000     	bl	0xbf70 <syna_testing_pt01_zte+0x194>
		000000000000bf70:  R_AARCH64_CALL26	syna_request_managed_device
    bf74: b4000580     	cbz	x0, 0xc024 <syna_testing_pt01_zte+0x248>
    bf78: b4000075     	cbz	x21, 0xbf84 <syna_testing_pt01_zte+0x1a8>
    bf7c: aa1503e1     	mov	x1, x21
    bf80: 94000000     	bl	0xbf80 <syna_testing_pt01_zte+0x1a4>
		000000000000bf80:  R_AARCH64_CALL26	devm_kfree
    bf84: aa1303e0     	mov	x0, x19
    bf88: f9000fff     	str	xzr, [sp, #0x18]
    bf8c: 390143ff     	strb	wzr, [sp, #0x50]
    bf90: 94000000     	bl	0xbf90 <syna_testing_pt01_zte+0x1b4>
		000000000000bf90:  R_AARCH64_CALL26	kfree
    bf94: 14000008     	b	0xbfb4 <syna_testing_pt01_zte+0x1d8>
    bf98: 90000002     	adrp	x2, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bf98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bcf7
    bf9c: 91000042     	add	x2, x2, #0x0
		000000000000bf9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bcf7
    bfa0: aa1303e0     	mov	x0, x19
    bfa4: 52820001     	mov	w1, #0x1000             // =4096
    bfa8: 52802003     	mov	w3, #0x100              // =256
    bfac: 94000000     	bl	0xbfac <syna_testing_pt01_zte+0x1d0>
		000000000000bfac:  R_AARCH64_CALL26	scnprintf
    bfb0: 2a0003f4     	mov	w20, w0
    bfb4: d5384108     	mrs	x8, SP_EL0
    bfb8: f9438908     	ldr	x8, [x8, #0x710]
    bfbc: f85f83a9     	ldur	x9, [x29, #-0x8]
    bfc0: eb09011f     	cmp	x8, x9
    bfc4: 540003c1     	b.ne	0xc03c <syna_testing_pt01_zte+0x260>
    bfc8: 2a1403e0     	mov	w0, w20
    bfcc: a9494ff4     	ldp	x20, x19, [sp, #0x90]
    bfd0: f9403bf7     	ldr	x23, [sp, #0x70]
    bfd4: a94857f6     	ldp	x22, x21, [sp, #0x80]
    bfd8: a9467bfd     	ldp	x29, x30, [sp, #0x60]
    bfdc: 910283ff     	add	sp, sp, #0xa0
    bfe0: d50323bf     	autiasp
    bfe4: d65f03c0     	ret
    bfe8: f94006a2     	ldr	x2, [x21, #0x8]
    bfec: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bfec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c704
    bff0: 91000000     	add	x0, x0, #0x0
		000000000000bff0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c704
    bff4: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bff4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1762f
    bff8: 91000021     	add	x1, x1, #0x0
		000000000000bff8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1762f
    bffc: 94000000     	bl	0xbffc <syna_testing_pt01_zte+0x220>
		000000000000bffc:  R_AARCH64_CALL26	_printk
    c000: 90000005     	adrp	x5, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a6fa
    c004: 910000a5     	add	x5, x5, #0x0
		000000000000c004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a6fa
    c008: 17ffffb4     	b	0xbed8 <syna_testing_pt01_zte+0xfc>
    c00c: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c00c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x188c5
    c010: 91000000     	add	x0, x0, #0x0
		000000000000c010:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x188c5
    c014: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c014:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a114
    c018: 91000021     	add	x1, x1, #0x0
		000000000000c018:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a114
    c01c: 94000000     	bl	0xc01c <syna_testing_pt01_zte+0x240>
		000000000000c01c:  R_AARCH64_CALL26	_printk
    c020: 17ffffd3     	b	0xbf6c <syna_testing_pt01_zte+0x190>
    c024: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c024:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1befe
    c028: 91000000     	add	x0, x0, #0x0
		000000000000c028:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1befe
    c02c: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c02c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b917
    c030: 91000021     	add	x1, x1, #0x0
		000000000000c030:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b917
    c034: 94000000     	bl	0xc034 <syna_testing_pt01_zte+0x258>
		000000000000c034:  R_AARCH64_CALL26	_printk
    c038: 17ffffd3     	b	0xbf84 <syna_testing_pt01_zte+0x1a8>
    c03c: 94000000     	bl	0xc03c <syna_testing_pt01_zte+0x260>
		000000000000c03c:  R_AARCH64_CALL26	__stack_chk_fail
    c040: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c040:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
    c044: 91000108     	add	x8, x8, #0x0
		000000000000c044:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
    c048: d5384115     	mrs	x21, SP_EL0
    c04c: f9402ab6     	ldr	x22, [x21, #0x50]
    c050: f9002aa8     	str	x8, [x21, #0x50]
    c054: 90000008     	adrp	x8, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c054:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
    c058: f9400100     	ldr	x0, [x8]
		000000000000c058:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
    c05c: 5281b801     	mov	w1, #0xdc0              // =3520
    c060: 52820002     	mov	w2, #0x1000             // =4096
    c064: 94000000     	bl	0xc064 <syna_testing_pt01_zte+0x288>
		000000000000c064:  R_AARCH64_CALL26	__kmalloc_cache_noprof
    c068: aa0003f3     	mov	x19, x0
    c06c: f9002ab6     	str	x22, [x21, #0x50]
    c070: b5ffee73     	cbnz	x19, 0xbe3c <syna_testing_pt01_zte+0x60>
    c074: 90000000     	adrp	x0, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c074:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bf86
    c078: 91000000     	add	x0, x0, #0x0
		000000000000c078:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bf86
    c07c: 90000001     	adrp	x1, 0xc000 <syna_testing_pt01_zte+0x224>
		000000000000c07c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1762f
    c080: 91000021     	add	x1, x1, #0x0
		000000000000c080:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1762f
    c084: 94000000     	bl	0xc084 <syna_testing_pt01_zte+0x2a8>
		000000000000c084:  R_AARCH64_CALL26	_printk
    c088: 12800174     	mov	w20, #-0xc              // =-12
    c08c: 17ffffca     	b	0xbfb4 <syna_testing_pt01_zte+0x1d8>
