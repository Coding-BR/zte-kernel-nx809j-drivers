
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a550 <gun_type_show>:
    a550: d503233f     	paciasp
    a554: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    a558: 910003fd     	mov	x29, sp
    a55c: f9404c08     	ldr	x8, [x0, #0x98]
    a560: aa0203e0     	mov	x0, x2
    a564: 90000002     	adrp	x2, 0xa000 <haptic_audio_store+0x84>
		000000000000a564:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2365
    a568: 91000042     	add	x2, x2, #0x0
		000000000000a568:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2365
    a56c: 52820001     	mov	w1, #0x1000             // =4096
    a570: b85d4103     	ldur	w3, [x8, #-0x2c]
    a574: 94000000     	bl	0xa574 <gun_type_show+0x24>
		000000000000a574:  R_AARCH64_CALL26	snprintf
    a578: 93407c00     	sxtw	x0, w0
    a57c: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    a580: d50323bf     	autiasp
    a584: d65f03c0     	ret
