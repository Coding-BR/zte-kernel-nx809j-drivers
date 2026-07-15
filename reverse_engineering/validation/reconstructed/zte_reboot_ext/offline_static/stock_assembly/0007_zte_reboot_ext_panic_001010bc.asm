
/input/zte_reboot_ext.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000b6c <zte_reboot_ext_panic>:
     b6c: d503233f     	paciasp
     b70: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     b74: f9000bf3     	str	x19, [sp, #0x10]
     b78: 910003fd     	mov	x29, sp
     b7c: d101a013     	sub	x19, x0, #0x68
     b80: 94000000     	bl	0xb80 <zte_reboot_ext_panic+0x14>
		0000000000000b80:  R_AARCH64_CALL26	get_ss_panic_buf_byte
     b84: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000b84:  R_AARCH64_ADR_PREL_PG_HI21	saved_nvmem_buf
     b88: 39000100     	strb	w0, [x8]
		0000000000000b88:  R_AARCH64_LDST8_ABS_LO12_NC	saved_nvmem_buf
     b8c: aa1303e0     	mov	x0, x19
     b90: 97ffff83     	bl	0x99c <save_panic_buf_data_to_nvmem>
     b94: 52800020     	mov	w0, #0x1                // =1
     b98: f9400bf3     	ldr	x19, [sp, #0x10]
     b9c: a8c27bfd     	ldp	x29, x30, [sp], #0x20
     ba0: d50323bf     	autiasp
     ba4: d65f03c0     	ret
