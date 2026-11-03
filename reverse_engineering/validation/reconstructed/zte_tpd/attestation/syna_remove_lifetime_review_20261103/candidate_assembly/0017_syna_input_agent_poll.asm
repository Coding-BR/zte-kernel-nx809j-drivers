
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bd78 <syna_input_agent_poll>:
    bd78: d503233f     	paciasp
    bd7c: d10103ff     	sub	sp, sp, #0x40
    bd80: a9017bfd     	stp	x29, x30, [sp, #0x10]
    bd84: f90013f5     	str	x21, [sp, #0x20]
    bd88: a9034ff4     	stp	x20, x19, [sp, #0x30]
    bd8c: 910043fd     	add	x29, sp, #0x10
    bd90: d5384108     	mrs	x8, SP_EL0
    bd94: f9438908     	ldr	x8, [x8, #0x710]
    bd98: f90007e8     	str	x8, [sp, #0x8]
    bd9c: b4000200     	cbz	x0, 0xbddc <syna_input_agent_poll+0x64>
    bda0: f9401015     	ldr	x21, [x0, #0x20]
    bda4: b40001d5     	cbz	x21, 0xbddc <syna_input_agent_poll+0x64>
    bda8: aa0003f3     	mov	x19, x0
    bdac: f94006a0     	ldr	x0, [x21, #0x8]
    bdb0: aa0103f4     	mov	x20, x1
    bdb4: 910003e1     	mov	x1, sp
    bdb8: f90003ff     	str	xzr, [sp]
    bdbc: 94000000     	bl	0xbdbc <syna_input_agent_poll+0x44>
		000000000000bdbc:  R_AARCH64_CALL26	syna_cdev_operation_begin
    bdc0: 360000e0     	tbz	w0, #0x0, 0xbddc <syna_input_agent_poll+0x64>
    bdc4: f94003e8     	ldr	x8, [sp]
    bdc8: f94002a9     	ldr	x9, [x21]
    bdcc: eb09011f     	cmp	x8, x9
    bdd0: 540001e0     	b.eq	0xbe0c <syna_input_agent_poll+0x94>
    bdd4: 52800313     	mov	w19, #0x18              // =24
    bdd8: 14000025     	b	0xbe6c <syna_input_agent_poll+0xf4>
    bddc: 52800300     	mov	w0, #0x18               // =24
    bde0: d5384108     	mrs	x8, SP_EL0
    bde4: f9438908     	ldr	x8, [x8, #0x710]
    bde8: f94007e9     	ldr	x9, [sp, #0x8]
    bdec: eb09011f     	cmp	x8, x9
    bdf0: 54000441     	b.ne	0xbe78 <syna_input_agent_poll+0x100>
    bdf4: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    bdf8: f94013f5     	ldr	x21, [sp, #0x20]
    bdfc: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    be00: 910103ff     	add	sp, sp, #0x40
    be04: d50323bf     	autiasp
    be08: d65f03c0     	ret
    be0c: b4000214     	cbz	x20, 0xbe4c <syna_input_agent_poll+0xd4>
    be10: f9400289     	ldr	x9, [x20]
    be14: b40001c9     	cbz	x9, 0xbe4c <syna_input_agent_poll+0xd4>
    be18: 90000001     	adrp	x1, 0xb000 <syna_dev_process_unexpected_reset+0x84>
		000000000000be18:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x306d8
    be1c: 91000021     	add	x1, x1, #0x0
		000000000000be1c:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x306d8
    be20: aa1303e0     	mov	x0, x19
    be24: aa1403e2     	mov	x2, x20
    be28: b85fc130     	ldur	w16, [x9, #-0x4]
    be2c: 72822471     	movk	w17, #0x1123
    be30: 72bcb431     	movk	w17, #0xe5a1, lsl #16
    be34: 6b11021f     	cmp	w16, w17
    be38: 54000040     	b.eq	0xbe40 <syna_input_agent_poll+0xc8>
    be3c: d4304520     	brk	#0x8229
    be40: d63f0120     	blr	x9
    be44: d5033bbf     	dmb	ish
    be48: f94003e8     	ldr	x8, [sp]
    be4c: b9446908     	ldr	w8, [x8, #0x468]
    be50: 7100011f     	cmp	w8, #0x0
    be54: 52800828     	mov	w8, #0x41               // =65
    be58: 1a8803f3     	csel	w19, wzr, w8, eq
    be5c: 94000000     	bl	0xbe5c <syna_input_agent_poll+0xe4>
		000000000000be5c:  R_AARCH64_CALL26	syna_cdev_lifecycle_is_online
    be60: 52800308     	mov	w8, #0x18               // =24
    be64: 7200001f     	tst	w0, #0x1
    be68: 1a881273     	csel	w19, w19, w8, ne
    be6c: 94000000     	bl	0xbe6c <syna_input_agent_poll+0xf4>
		000000000000be6c:  R_AARCH64_CALL26	syna_cdev_operation_end
    be70: 2a1303e0     	mov	w0, w19
    be74: 17ffffdb     	b	0xbde0 <syna_input_agent_poll+0x68>
    be78: 94000000     	bl	0xbe78 <syna_input_agent_poll+0x100>
		000000000000be78:  R_AARCH64_CALL26	__stack_chk_fail
