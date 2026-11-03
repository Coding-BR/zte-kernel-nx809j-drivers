
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000ada4 <cont_save_show>:
    ada4: d503233f     	paciasp
    ada8: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
    adac: 910003fd     	mov	x29, sp
    adb0: f9404c08     	ldr	x8, [x0, #0x98]
    adb4: aa0203e0     	mov	x0, x2
    adb8: 90000002     	adrp	x2, 0xa000 <haptic_audio_store+0x84>
		000000000000adb8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1225
    adbc: 91000042     	add	x2, x2, #0x0
		000000000000adbc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1225
    adc0: 52820001     	mov	w1, #0x1000             // =4096
    adc4: b85c8103     	ldur	w3, [x8, #-0x38]
    adc8: 94000000     	bl	0xadc8 <cont_save_show+0x24>
		000000000000adc8:  R_AARCH64_CALL26	snprintf
    adcc: 93407c00     	sxtw	x0, w0
    add0: a8c17bfd     	ldp	x29, x30, [sp], #0x10
    add4: d50323bf     	autiasp
    add8: d65f03c0     	ret
