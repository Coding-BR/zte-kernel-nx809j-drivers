
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001998 <aw22xxx_set_brightness>:
    1998: d503233f     	paciasp
    199c: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    19a0: 910003fd     	mov	x29, sp
    19a4: 90000008     	adrp	x8, 0x1000 <aw22xxx_parse_led_cdev+0x1e4>
		00000000000019a4:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    19a8: b9000801     	str	w1, [x0, #0x8]
    19ac: 91070002     	add	x2, x0, #0x1c0
    19b0: f9400108     	ldr	x8, [x8]
		00000000000019b0:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    19b4: 52800400     	mov	w0, #0x20               // =32
    19b8: aa0803e1     	mov	x1, x8
    19bc: 94000000     	bl	0x19bc <aw22xxx_set_brightness+0x24>
		00000000000019bc:  R_AARCH64_CALL26	queue_work_on
    19c0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    19c4: d50323bf     	autiasp
    19c8: d65f03c0     	ret
