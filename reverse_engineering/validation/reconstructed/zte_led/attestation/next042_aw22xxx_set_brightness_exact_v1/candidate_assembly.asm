
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000035ac <aw22xxx_set_brightness>:
    35ac: d503233f     	paciasp
    35b0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    35b4: 910003fd     	mov	x29, sp
    35b8: 90000008     	adrp	x8, 0x3000 <aw22xxx_recover_work_routine+0x1c>
		00000000000035b8:  R_AARCH64_ADR_PREL_PG_HI21	system_wq
    35bc: b9000801     	str	w1, [x0, #0x8]
    35c0: 91070002     	add	x2, x0, #0x1c0
    35c4: f9400108     	ldr	x8, [x8]
		00000000000035c4:  R_AARCH64_LDST64_ABS_LO12_NC	system_wq
    35c8: 52800400     	mov	w0, #0x20               // =32
    35cc: aa0803e1     	mov	x1, x8
    35d0: 94000000     	bl	0x35d0 <aw22xxx_set_brightness+0x24>
		00000000000035d0:  R_AARCH64_CALL26	queue_work_on
    35d4: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    35d8: d50323bf     	autiasp
    35dc: d65f03c0     	ret
