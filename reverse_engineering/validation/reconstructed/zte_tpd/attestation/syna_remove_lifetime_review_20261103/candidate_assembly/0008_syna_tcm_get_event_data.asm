
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000cdb4 <syna_tcm_get_event_data>:
    cdb4: d503233f     	paciasp
    cdb8: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    cdbc: f9000bf5     	str	x21, [sp, #0x10]
    cdc0: a9024ff4     	stp	x20, x19, [sp, #0x20]
    cdc4: 910003fd     	mov	x29, sp
    cdc8: b40004e0     	cbz	x0, 0xce64 <syna_tcm_get_event_data+0xb0>
    cdcc: aa0103f3     	mov	x19, x1
    cdd0: b4000501     	cbz	x1, 0xce70 <syna_tcm_get_event_data+0xbc>
    cdd4: f941c808     	ldr	x8, [x0, #0x390]
    cdd8: aa1303e1     	mov	x1, x19
    cddc: aa0203f4     	mov	x20, x2
    cde0: aa0003f5     	mov	x21, x0
    cde4: b85fc110     	ldur	w16, [x8, #-0x4]
    cde8: 729b4431     	movk	w17, #0xda21
    cdec: 72bc21b1     	movk	w17, #0xe10d, lsl #16
    cdf0: 6b11021f     	cmp	w16, w17
    cdf4: 54000040     	b.eq	0xcdfc <syna_tcm_get_event_data+0x48>
    cdf8: d4304500     	brk	#0x8228
    cdfc: d63f0100     	blr	x8
    ce00: 37f80460     	tbnz	w0, #0x1f, 0xce8c <syna_tcm_get_event_data+0xd8>
    ce04: b40006d4     	cbz	x20, 0xcedc <syna_tcm_get_event_data+0x128>
    ce08: 39400262     	ldrb	w2, [x19]
    ce0c: 5103fc48     	sub	w8, w2, #0xff
    ce10: 3103bd1f     	cmn	w8, #0xef
    ce14: 54000123     	b.lo	0xce38 <syna_tcm_get_event_data+0x84>
    ce18: b9410ea8     	ldr	w8, [x21, #0x10c]
    ce1c: 34000608     	cbz	w8, 0xcedc <syna_tcm_get_event_data+0x128>
    ce20: 910402a1     	add	x1, x21, #0x100
    ce24: aa1403e0     	mov	x0, x20
    ce28: 94000000     	bl	0xce28 <syna_tcm_get_event_data+0x74>
		000000000000ce28:  R_AARCH64_CALL26	syna_tcm_buf_copy
    ce2c: 39400262     	ldrb	w2, [x19]
    ce30: 37f803e0     	tbnz	w0, #0x1f, 0xceac <syna_tcm_get_event_data+0xf8>
    ce34: 2a1f03e0     	mov	w0, wzr
    ce38: 51000448     	sub	w8, w2, #0x1
    ce3c: 7100391f     	cmp	w8, #0xe
    ce40: 540004e8     	b.hi	0xcedc <syna_tcm_get_event_data+0x128>
    ce44: b94156a8     	ldr	w8, [x21, #0x154]
    ce48: 340004a8     	cbz	w8, 0xcedc <syna_tcm_get_event_data+0x128>
    ce4c: 910522a1     	add	x1, x21, #0x148
    ce50: aa1403e0     	mov	x0, x20
    ce54: 94000000     	bl	0xce54 <syna_tcm_get_event_data+0xa0>
		000000000000ce54:  R_AARCH64_CALL26	syna_tcm_buf_copy
    ce58: 37f80300     	tbnz	w0, #0x1f, 0xceb8 <syna_tcm_get_event_data+0x104>
    ce5c: 2a1f03e0     	mov	w0, wzr
    ce60: 1400001f     	b	0xcedc <syna_tcm_get_event_data+0x128>
    ce64: 90000000     	adrp	x0, 0xc000 <syna_input_agent_mmap+0x88>
		000000000000ce64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1812a
    ce68: 91000000     	add	x0, x0, #0x0
		000000000000ce68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1812a
    ce6c: 14000003     	b	0xce78 <syna_tcm_get_event_data+0xc4>
    ce70: 90000000     	adrp	x0, 0xc000 <syna_input_agent_mmap+0x88>
		000000000000ce70:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a355
    ce74: 91000000     	add	x0, x0, #0x0
		000000000000ce74:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a355
    ce78: 90000001     	adrp	x1, 0xc000 <syna_input_agent_mmap+0x88>
		000000000000ce78:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a5ea
    ce7c: 91000021     	add	x1, x1, #0x0
		000000000000ce7c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a5ea
    ce80: 94000000     	bl	0xce80 <syna_tcm_get_event_data+0xcc>
		000000000000ce80:  R_AARCH64_CALL26	_printk
    ce84: 12801e00     	mov	w0, #-0xf1              // =-241
    ce88: 14000015     	b	0xcedc <syna_tcm_get_event_data+0x128>
    ce8c: 90000008     	adrp	x8, 0xc000 <syna_input_agent_mmap+0x88>
		000000000000ce8c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b518
    ce90: 91000108     	add	x8, x8, #0x0
		000000000000ce90:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b518
    ce94: 90000001     	adrp	x1, 0xc000 <syna_input_agent_mmap+0x88>
		000000000000ce94:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a5ea
    ce98: 91000021     	add	x1, x1, #0x0
		000000000000ce98:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a5ea
    ce9c: 2a0003f3     	mov	w19, w0
    cea0: aa0803e0     	mov	x0, x8
    cea4: 94000000     	bl	0xcea4 <syna_tcm_get_event_data+0xf0>
		000000000000cea4:  R_AARCH64_CALL26	_printk
    cea8: 1400000c     	b	0xced8 <syna_tcm_get_event_data+0x124>
    ceac: 90000008     	adrp	x8, 0xc000 <syna_input_agent_mmap+0x88>
		000000000000ceac:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1bba2
    ceb0: 91000108     	add	x8, x8, #0x0
		000000000000ceb0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1bba2
    ceb4: 14000004     	b	0xcec4 <syna_tcm_get_event_data+0x110>
    ceb8: 39400262     	ldrb	w2, [x19]
    cebc: 90000008     	adrp	x8, 0xc000 <syna_input_agent_mmap+0x88>
		000000000000cebc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1c3a4
    cec0: 91000108     	add	x8, x8, #0x0
		000000000000cec0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1c3a4
    cec4: 90000001     	adrp	x1, 0xc000 <syna_input_agent_mmap+0x88>
		000000000000cec4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1a5ea
    cec8: 91000021     	add	x1, x1, #0x0
		000000000000cec8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1a5ea
    cecc: 2a0003f3     	mov	w19, w0
    ced0: aa0803e0     	mov	x0, x8
    ced4: 94000000     	bl	0xced4 <syna_tcm_get_event_data+0x120>
		000000000000ced4:  R_AARCH64_CALL26	_printk
    ced8: 2a1303e0     	mov	w0, w19
    cedc: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    cee0: f9400bf5     	ldr	x21, [sp, #0x10]
    cee4: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    cee8: d50323bf     	autiasp
    ceec: d65f03c0     	ret
