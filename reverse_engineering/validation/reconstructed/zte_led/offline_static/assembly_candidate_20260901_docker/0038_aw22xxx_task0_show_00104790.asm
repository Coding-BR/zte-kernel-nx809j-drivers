
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000035cc <aw22xxx_task0_show>:
    35cc: d503233f     	paciasp
    35d0: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    35d4: 910003fd     	mov	x29, sp
    35d8: f9404c08     	ldr	x8, [x0, #0x98]
    35dc: aa0203e0     	mov	x0, x2
    35e0: 90000002     	adrp	x2, 0x3000 <aw22xxx_play+0x84>
		00000000000035e0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xcb3
    35e4: 91000042     	add	x2, x2, #0x0
		00000000000035e4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xcb3
    35e8: 52820001     	mov	w1, #0x1000             // =4096
    35ec: 394bb103     	ldrb	w3, [x8, #0x2ec]
    35f0: 94000000     	bl	0x35f0 <aw22xxx_task0_show+0x24>
		00000000000035f0:  R_AARCH64_CALL26	snprintf
    35f4: 93407c00     	sxtw	x0, w0
    35f8: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    35fc: d50323bf     	autiasp
    3600: d65f03c0     	ret
