
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bc0c <syna_tcm_v1_check_max_rw_size>:
    bc0c: d503233f     	paciasp
    bc10: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    bc14: 910003fd     	mov	x29, sp
    bc18: b4000320     	cbz	x0, 0xbc7c <syna_tcm_v1_check_max_rw_size+0x70>
    bc1c: 39420008     	ldrb	w8, [x0, #0x80]
    bc20: 7100051f     	cmp	w8, #0x1
    bc24: 54000321     	b.ne	0xbc88 <syna_tcm_v1_check_max_rw_size+0x7c>
    bc28: 79412c09     	ldrh	w9, [x0, #0x96]
    bc2c: 34000349     	cbz	w9, 0xbc94 <syna_tcm_v1_check_max_rw_size+0x88>
    bc30: b9404008     	ldr	w8, [x0, #0x40]
    bc34: b940380b     	ldr	w11, [x0, #0x38]
    bc38: 6b08013f     	cmp	w9, w8
    bc3c: 1a88312a     	csel	w10, w9, w8, lo
    bc40: 7100011f     	cmp	w8, #0x0
    bc44: 1a8a0129     	csel	w9, w9, w10, eq
    bc48: 6b09017f     	cmp	w11, w9
    bc4c: 54000040     	b.eq	0xbc54 <syna_tcm_v1_check_max_rw_size+0x48>
    bc50: b9003809     	str	w9, [x0, #0x38]
    bc54: 340000c8     	cbz	w8, 0xbc6c <syna_tcm_v1_check_max_rw_size+0x60>
    bc58: b9403c09     	ldr	w9, [x0, #0x3c]
    bc5c: b9404408     	ldr	w8, [x0, #0x44]
    bc60: 6b08013f     	cmp	w9, w8
    bc64: 54000049     	b.ls	0xbc6c <syna_tcm_v1_check_max_rw_size+0x60>
    bc68: b9003c08     	str	w8, [x0, #0x3c]
    bc6c: 2a1f03e0     	mov	w0, wzr
    bc70: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    bc74: d50323bf     	autiasp
    bc78: d65f03c0     	ret
    bc7c: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bc7c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x18171
    bc80: 91000000     	add	x0, x0, #0x0
		000000000000bc80:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x18171
    bc84: 14000006     	b	0xbc9c <syna_tcm_v1_check_max_rw_size+0x90>
    bc88: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bc88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x199c0
    bc8c: 91000000     	add	x0, x0, #0x0
		000000000000bc8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x199c0
    bc90: 14000003     	b	0xbc9c <syna_tcm_v1_check_max_rw_size+0x90>
    bc94: 90000000     	adrp	x0, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bc94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x19b44
    bc98: 91000000     	add	x0, x0, #0x0
		000000000000bc98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x19b44
    bc9c: 90000001     	adrp	x1, 0xb000 <syna_spi_hw_reset+0x24>
		000000000000bc9c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x17bf6
    bca0: 91000021     	add	x1, x1, #0x0
		000000000000bca0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x17bf6
    bca4: 94000000     	bl	0xbca4 <syna_tcm_v1_check_max_rw_size+0x98>
		000000000000bca4:  R_AARCH64_CALL26	_printk
    bca8: 12801e00     	mov	w0, #-0xf1              // =-241
    bcac: 17fffff1     	b	0xbc70 <syna_tcm_v1_check_max_rw_size+0x64>
