
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000049ec <aw22xxx_fw_timer_func>:
    49ec: d503233f     	paciasp
    49f0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    49f4: f9000bf3     	str	x19, [sp, #0x10]
    49f8: 910003fd     	mov	x29, sp
    49fc: aa0003f3     	mov	x19, x0
    4a00: 90000000     	adrp	x0, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004a00:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    4a04: 91000000     	add	x0, x0, #0x0
		0000000000004a04:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    4a08: 90000001     	adrp	x1, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004a08:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x80
    4a0c: 91000021     	add	x1, x1, #0x0
		0000000000004a0c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x80
    4a10: 94000000     	bl	0x4a10 <aw22xxx_fw_timer_func+0x24>
		0000000000004a10:  R_AARCH64_CALL26	_printk
    4a14: 90000008     	adrp	x8, 0x4000 <aw22xxx_effect_store+0x80>
		0000000000004a14:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    4a18: d1018262     	sub	x2, x19, #0x60
    4a1c: 52800400     	mov	w0, #0x20               // =32
    4a20: f9400101     	ldr	x1, [x8]
		0000000000004a20:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    4a24: 94000000     	bl	0x4a24 <aw22xxx_fw_timer_func+0x38>
		0000000000004a24:  R_AARCH64_CALL26	queue_work_on
    4a28: 2a1f03e0     	mov	w0, wzr
    4a2c: f9400bf3     	ldr	x19, [sp, #0x10]
    4a30: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    4a34: d50323bf     	autiasp
    4a38: d65f03c0     	ret
