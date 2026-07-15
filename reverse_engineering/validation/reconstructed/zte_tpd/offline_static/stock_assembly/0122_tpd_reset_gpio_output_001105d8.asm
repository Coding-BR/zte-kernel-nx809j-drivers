
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009d50 <tpd_reset_gpio_output>:
    9d50: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009d50:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    9d54: f9400108     	ldr	x8, [x8]
		0000000000009d54:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9d58: f9475908     	ldr	x8, [x8, #0xeb0]
    9d5c: b40001c8     	cbz	x8, 0x9d94 <tpd_reset_gpio_output+0x44>
    9d60: d503233f     	paciasp
    9d64: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9d68: 910003fd     	mov	x29, sp
    9d6c: 12000000     	and	w0, w0, #0x1
    9d70: b85fc110     	ldur	w16, [x8, #-0x4]
    9d74: 729d2f31     	movk	w17, #0xe979
    9d78: 72b45f91     	movk	w17, #0xa2fc, lsl #16
    9d7c: 6b11021f     	cmp	w16, w17
    9d80: 54000040     	b.eq	0x9d88 <tpd_reset_gpio_output+0x38>
    9d84: d4304500     	brk	#0x8228
    9d88: d63f0100     	blr	x8
    9d8c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9d90: d50323bf     	autiasp
    9d94: d65f03c0     	ret
