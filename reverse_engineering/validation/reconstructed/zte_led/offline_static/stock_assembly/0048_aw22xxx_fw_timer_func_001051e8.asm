
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000003d08 <aw22xxx_fw_timer_func>:
    3d08: d503233f     	paciasp
    3d0c: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    3d10: f9000bf3     	str	x19, [sp, #0x10]
    3d14: 910003fd     	mov	x29, sp
    3d18: aa0003f3     	mov	x19, x0
    3d1c: 90000000     	adrp	x0, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003d1c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8dd
    3d20: 91000000     	add	x0, x0, #0x0
		0000000000003d20:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8dd
    3d24: 90000001     	adrp	x1, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003d24:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x80
    3d28: 91000021     	add	x1, x1, #0x0
		0000000000003d28:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x80
    3d2c: 94000000     	bl	0x3d2c <aw22xxx_fw_timer_func+0x24>
		0000000000003d2c:  R_AARCH64_CALL26	_printk
    3d30: 90000008     	adrp	x8, 0x3000 <aw22xxx_imax_store+0x48>
		0000000000003d30:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    3d34: d1018262     	sub	x2, x19, #0x60
    3d38: 52800400     	mov	w0, #0x20               // =32
    3d3c: f9400101     	ldr	x1, [x8]
		0000000000003d3c:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    3d40: 94000000     	bl	0x3d40 <aw22xxx_fw_timer_func+0x38>
		0000000000003d40:  R_AARCH64_CALL26	queue_work_on
    3d44: 2a1f03e0     	mov	w0, wzr
    3d48: f9400bf3     	ldr	x19, [sp, #0x10]
    3d4c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    3d50: d50323bf     	autiasp
    3d54: d65f03c0     	ret
