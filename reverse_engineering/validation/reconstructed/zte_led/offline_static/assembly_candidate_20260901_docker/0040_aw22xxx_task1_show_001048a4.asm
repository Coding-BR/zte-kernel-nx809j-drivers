
/input/zte_led_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000036d4 <aw22xxx_task1_show>:
    36d4: d503233f     	paciasp
    36d8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    36dc: 910003fd     	mov	x29, sp
    36e0: f9404c08     	ldr	x8, [x0, #0x98]
    36e4: aa0203e0     	mov	x0, x2
    36e8: 90000002     	adrp	x2, 0x3000 <aw22xxx_play+0x84>
		00000000000036e8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x73b
    36ec: 91000042     	add	x2, x2, #0x0
		00000000000036ec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x73b
    36f0: 52820001     	mov	w1, #0x1000             // =4096
    36f4: 394bb503     	ldrb	w3, [x8, #0x2ed]
    36f8: 94000000     	bl	0x36f8 <aw22xxx_task1_show+0x24>
		00000000000036f8:  R_AARCH64_CALL26	snprintf
    36fc: 93407c00     	sxtw	x0, w0
    3700: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    3704: d50323bf     	autiasp
    3708: d65f03c0     	ret
