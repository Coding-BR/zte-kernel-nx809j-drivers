
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a324 <aw9620x_sensy_config_get>:
    a324: d503233f     	paciasp
    a328: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    a32c: 910003fd     	mov	x29, sp
    a330: f9404c08     	ldr	x8, [x0, #0x98]
    a334: aa0203e0     	mov	x0, x2
    a338: 90000002     	adrp	x2, 0xa000 <aw9620x_parasitic_data_get>
		000000000000a338:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xe59
    a33c: 91000042     	add	x2, x2, #0x0
		000000000000a33c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xe59
    a340: 52820001     	mov	w1, #0x1000             // =4096
    a344: 3949a103     	ldrb	w3, [x8, #0x268]
    a348: 94000000     	bl	0xa348 <aw9620x_sensy_config_get+0x24>
		000000000000a348:  R_AARCH64_CALL26	snprintf
    a34c: 93407c00     	sxtw	x0, w0
    a350: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    a354: d50323bf     	autiasp
    a358: d65f03c0     	ret
