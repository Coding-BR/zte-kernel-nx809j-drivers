
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000002ac8 <aw22xxx_set_cfg_run_state>:
    2ac8: d503233f     	paciasp
    2acc: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    2ad0: a90157f6     	stp	x22, x21, [sp, #0x10]
    2ad4: a9024ff4     	stp	x20, x19, [sp, #0x20]
    2ad8: 910003fd     	mov	x29, sp
    2adc: 53187c13     	lsr	w19, w0, #24
    2ae0: 90000016     	adrp	x22, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002ae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x111c
    2ae4: 910002d6     	add	x22, x22, #0x0
		0000000000002ae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x111c
    2ae8: 2a0003f5     	mov	w21, w0
    2aec: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002aec:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x921
    2af0: 91000000     	add	x0, x0, #0x0
		0000000000002af0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x921
    2af4: aa1603e1     	mov	x1, x22
    2af8: 5280e9a2     	mov	w2, #0x74d              // =1869
    2afc: 2a1303e3     	mov	w3, w19
    2b00: 94000000     	bl	0x2b00 <aw22xxx_set_cfg_run_state+0x38>
		0000000000002b00:  R_AARCH64_CALL26	_printk
    2b04: 530c5eb4     	ubfx	w20, w21, #12, #12
    2b08: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002b08:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x22c
    2b0c: 91000000     	add	x0, x0, #0x0
		0000000000002b0c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x22c
    2b10: aa1603e1     	mov	x1, x22
    2b14: 5280e9e2     	mov	w2, #0x74f              // =1871
    2b18: 2a1403e3     	mov	w3, w20
    2b1c: 94000000     	bl	0x2b1c <aw22xxx_set_cfg_run_state+0x54>
		0000000000002b1c:  R_AARCH64_CALL26	_printk
    2b20: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002b20:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1965
    2b24: 91000000     	add	x0, x0, #0x0
		0000000000002b24:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1965
    2b28: 12002ea3     	and	w3, w21, #0xfff
    2b2c: aa1603e1     	mov	x1, x22
    2b30: 5280ea22     	mov	w2, #0x751              // =1873
    2b34: 94000000     	bl	0x2b34 <aw22xxx_set_cfg_run_state+0x6c>
		0000000000002b34:  R_AARCH64_CALL26	_printk
    2b38: 7100067f     	cmp	w19, #0x1
    2b3c: 90000008     	adrp	x8, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002b3c:  R_AARCH64_ADR_PREL_PG_HI21	.bss+0x621c
    2b40: 540000a1     	b.ne	0x2b54 <aw22xxx_set_cfg_run_state+0x8c>
    2b44: 35000094     	cbnz	w20, 0x2b54 <aw22xxx_set_cfg_run_state+0x8c>
    2b48: b9400109     	ldr	w9, [x8]
		0000000000002b48:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x621c
    2b4c: 121e7929     	and	w9, w9, #0xfffffffd
    2b50: 14000020     	b	0x2bd0 <aw22xxx_set_cfg_run_state+0x108>
    2b54: 71000e7f     	cmp	w19, #0x3
    2b58: 540000a1     	b.ne	0x2b6c <aw22xxx_set_cfg_run_state+0xa4>
    2b5c: 35000094     	cbnz	w20, 0x2b6c <aw22xxx_set_cfg_run_state+0xa4>
    2b60: b9400109     	ldr	w9, [x8]
		0000000000002b60:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x621c
    2b64: 121f7929     	and	w9, w9, #0xfffffffe
    2b68: 1400001a     	b	0x2bd0 <aw22xxx_set_cfg_run_state+0x108>
    2b6c: 71000e7f     	cmp	w19, #0x3
    2b70: 540000c1     	b.ne	0x2b88 <aw22xxx_set_cfg_run_state+0xc0>
    2b74: 71000a9f     	cmp	w20, #0x2
    2b78: 54000081     	b.ne	0x2b88 <aw22xxx_set_cfg_run_state+0xc0>
    2b7c: b9400109     	ldr	w9, [x8]
		0000000000002b7c:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x621c
    2b80: 32000129     	orr	w9, w9, #0x1
    2b84: 14000013     	b	0x2bd0 <aw22xxx_set_cfg_run_state+0x108>
    2b88: 71000a7f     	cmp	w19, #0x2
    2b8c: 540000a1     	b.ne	0x2ba0 <aw22xxx_set_cfg_run_state+0xd8>
    2b90: 35000094     	cbnz	w20, 0x2ba0 <aw22xxx_set_cfg_run_state+0xd8>
    2b94: b9400109     	ldr	w9, [x8]
		0000000000002b94:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x621c
    2b98: 121d7929     	and	w9, w9, #0xfffffffb
    2b9c: 1400000d     	b	0x2bd0 <aw22xxx_set_cfg_run_state+0x108>
    2ba0: b9400109     	ldr	w9, [x8]
		0000000000002ba0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x621c
    2ba4: 71000a7f     	cmp	w19, #0x2
    2ba8: 540000c1     	b.ne	0x2bc0 <aw22xxx_set_cfg_run_state+0xf8>
    2bac: 5104068a     	sub	w10, w20, #0x101
    2bb0: 71000d5f     	cmp	w10, #0x3
    2bb4: 54000068     	b.hi	0x2bc0 <aw22xxx_set_cfg_run_state+0xf8>
    2bb8: 321e0129     	orr	w9, w9, #0x4
    2bbc: 14000005     	b	0x2bd0 <aw22xxx_set_cfg_run_state+0x108>
    2bc0: 71000e7f     	cmp	w19, #0x3
    2bc4: 5280002a     	mov	w10, #0x1               // =1
    2bc8: 1a8a054a     	cinc	w10, w10, ne
    2bcc: 2a0a0129     	orr	w9, w9, w10
    2bd0: b9000109     	str	w9, [x8]
		0000000000002bd0:  R_AARCH64_LDST32_ABS_LO12_NC	.bss+0x621c
    2bd4: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    2bd8: a94157f6     	ldp	x22, x21, [sp, #0x10]
    2bdc: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    2be0: d50323bf     	autiasp
    2be4: d65f03c0     	ret
