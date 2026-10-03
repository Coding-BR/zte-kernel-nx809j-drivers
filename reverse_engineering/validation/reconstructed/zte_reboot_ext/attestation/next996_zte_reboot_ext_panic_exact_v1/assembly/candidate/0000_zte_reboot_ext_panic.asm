
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

00000000000004ec <zte_reboot_ext_panic>:
     4ec: d503233f     	paciasp
     4f0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     4f4: f9000bf3     	str	x19, [sp, #0x10]
     4f8: 910003fd     	mov	x29, sp
     4fc: d101a013     	sub	x19, x0, #0x68
     500: 94000000     	bl	0x500 <zte_reboot_ext_panic+0x14>
		0000000000000500:  R_AARCH64_CALL26	get_ss_panic_buf_byte
     504: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000504:  R_AARCH64_ADR_PREL_PG_HI21	saved_nvmem_buf
     508: 39000100     	strb	w0, [x8]
		0000000000000508:  R_AARCH64_LDST8_ABS_LO12_NC	saved_nvmem_buf
     50c: aa1303e0     	mov	x0, x19
     510: 97ffff83     	bl	0x31c <save_panic_buf_data_to_nvmem+0x134>
		0000000000000510:  R_AARCH64_CALL26	save_panic_buf_data_to_nvmem
     514: 52800020     	mov	w0, #0x1                // =1
     518: f9400bf3     	ldr	x19, [sp, #0x10]
     51c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     520: d50323bf     	autiasp
     524: d65f03c0     	ret
