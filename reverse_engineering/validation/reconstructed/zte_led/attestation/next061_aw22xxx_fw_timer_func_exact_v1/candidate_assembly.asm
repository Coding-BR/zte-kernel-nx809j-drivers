
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000005214 <aw22xxx_fw_timer_func>:
    5214: d503233f     	paciasp
    5218: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    521c: f9000bf3     	str	x19, [sp, #0x10]
    5220: 910003fd     	mov	x29, sp
    5224: aa0003f3     	mov	x19, x0
    5228: 90000000     	adrp	x0, 0x5000 <aw22xxx_fw_store+0x2c>
		0000000000005228:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x8dd
    522c: 91000000     	add	x0, x0, #0x0
		000000000000522c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x8dd
    5230: 90000001     	adrp	x1, 0x5000 <aw22xxx_fw_store+0x2c>
		0000000000005230:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x80
    5234: 91000021     	add	x1, x1, #0x0
		0000000000005234:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x80
    5238: 94000000     	bl	0x5238 <aw22xxx_fw_timer_func+0x24>
		0000000000005238:  R_AARCH64_CALL26	_printk
    523c: 90000008     	adrp	x8, 0x5000 <aw22xxx_fw_store+0x2c>
		000000000000523c:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    5240: d1018262     	sub	x2, x19, #0x60
    5244: 52800400     	mov	w0, #0x20               // =32
    5248: f9400101     	ldr	x1, [x8]
		0000000000005248:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    524c: 94000000     	bl	0x524c <aw22xxx_fw_timer_func+0x38>
		000000000000524c:  R_AARCH64_CALL26	queue_work_on
    5250: 2a1f03e0     	mov	w0, wzr
    5254: f9400bf3     	ldr	x19, [sp, #0x10]
    5258: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    525c: d50323bf     	autiasp
    5260: d65f03c0     	ret
