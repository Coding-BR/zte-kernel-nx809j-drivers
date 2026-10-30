
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fbc <zlog_register_work>:
     fbc: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000fbc:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
     fc0: f9400100     	ldr	x0, [x8]
		0000000000000fc0:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
     fc4: 396fc008     	ldrb	w8, [x0, #0xbf0]
     fc8: 370000e8     	tbnz	w8, #0x0, 0xfe4 <zlog_register_work+0x28>
     fcc: d503233f     	paciasp
     fd0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
     fd4: 910003fd     	mov	x29, sp
     fd8: 94000000     	bl	0xfd8 <zlog_register_work+0x1c>
		0000000000000fd8:  R_AARCH64_CALL26	tpd_zlog_register
     fdc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
     fe0: d50323bf     	autiasp
     fe4: d65f03c0     	ret
