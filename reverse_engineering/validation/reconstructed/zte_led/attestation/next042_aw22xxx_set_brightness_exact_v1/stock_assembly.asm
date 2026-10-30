
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001efc <aw22xxx_set_brightness>:
    1efc: d503233f     	paciasp
    1f00: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    1f04: 910003fd     	mov	x29, sp
    1f08: 90000008     	adrp	x8, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001f08:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    1f0c: b9000801     	str	w1, [x0, #0x8]
    1f10: 91070002     	add	x2, x0, #0x1c0
    1f14: f9400108     	ldr	x8, [x8]
		0000000000001f14:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    1f18: 52800400     	mov	w0, #0x20               // =32
    1f1c: aa0803e1     	mov	x1, x8
    1f20: 94000000     	bl	0x1f20 <aw22xxx_set_brightness+0x24>
		0000000000001f20:  R_AARCH64_CALL26	queue_work_on
    1f24: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    1f28: d50323bf     	autiasp
    1f2c: d65f03c0     	ret
