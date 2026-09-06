
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000038bc <aw22xxx_fw_timer_func>:
    38bc: d503233f     	paciasp
    38c0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    38c4: f9000bf3     	str	x19, [sp, #0x10]
    38c8: 910003fd     	mov	x29, sp
    38cc: aa0003f3     	mov	x19, x0
    38d0: 90000000     	adrp	x0, 0x3000 <aw22xxx_play+0x84>
		00000000000038d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1518
    38d4: 91000000     	add	x0, x0, #0x0
		00000000000038d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1518
    38d8: 90000001     	adrp	x1, 0x3000 <aw22xxx_play+0x84>
		00000000000038d8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa2
    38dc: 91000021     	add	x1, x1, #0x0
		00000000000038dc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa2
    38e0: 94000000     	bl	0x38e0 <aw22xxx_fw_timer_func+0x24>
		00000000000038e0:  R_AARCH64_CALL26	_printk
    38e4: 90000008     	adrp	x8, 0x3000 <aw22xxx_play+0x84>
		00000000000038e4:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    38e8: d1018262     	sub	x2, x19, #0x60
    38ec: 52800400     	mov	w0, #0x20               // =32
    38f0: f9400101     	ldr	x1, [x8]
		00000000000038f0:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    38f4: 94000000     	bl	0x38f4 <aw22xxx_fw_timer_func+0x38>
		00000000000038f4:  R_AARCH64_CALL26	queue_work_on
    38f8: 2a1f03e0     	mov	w0, wzr
    38fc: f9400bf3     	ldr	x19, [sp, #0x10]
    3900: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    3904: d50323bf     	autiasp
    3908: d65f03c0     	ret
