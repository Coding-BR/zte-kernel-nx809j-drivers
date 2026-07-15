
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000009cbc <set_lcd_reset_processing>:
    9cbc: d503233f     	paciasp
    9cc0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    9cc4: 910003fd     	mov	x29, sp
    9cc8: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009cc8:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
    9ccc: 12000001     	and	w1, w0, #0x1
    9cd0: f9400108     	ldr	x8, [x8]
		0000000000009cd0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
    9cd4: 39006100     	strb	w0, [x8, #0x18]
    9cd8: 90000008     	adrp	x8, 0x9000 <tp_ghost_check+0x488>
		0000000000009cd8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7a97
    9cdc: 91000108     	add	x8, x8, #0x0
		0000000000009cdc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7a97
    9ce0: aa0803e0     	mov	x0, x8
    9ce4: 94000000     	bl	0x9ce4 <set_lcd_reset_processing+0x28>
		0000000000009ce4:  R_AARCH64_CALL26	_printk
    9ce8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    9cec: d50323bf     	autiasp
    9cf0: d65f03c0     	ret
