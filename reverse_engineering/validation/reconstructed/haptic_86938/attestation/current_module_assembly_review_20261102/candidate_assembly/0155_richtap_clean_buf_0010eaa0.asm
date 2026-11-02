
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000ad0 <richtap_clean_buf>:
     ad0: d503233f     	paciasp
     ad4: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
     ad8: f9000bf5     	str	x21, [sp, #0x10]
     adc: a9024ff4     	stp	x20, x19, [sp, #0x20]
     ae0: 910003fd     	mov	x29, sp
     ae4: f9430814     	ldr	x20, [x0, #0x610]
     ae8: 2a1f03e1     	mov	w1, wzr
     aec: 52807d02     	mov	w2, #0x3e8              // =1000
     af0: 91006280     	add	x0, x20, #0x18
     af4: 94000000     	bl	0xaf4 <richtap_clean_buf+0x24>
		0000000000000af4:  R_AARCH64_CALL26	memset
     af8: f9400695     	ldr	x21, [x20, #0x8]
     afc: 52801ff3     	mov	w19, #0xff              // =255
     b00: 2a1f03e1     	mov	w1, wzr
     b04: 52807d02     	mov	w2, #0x3e8              // =1000
     b08: 39000293     	strb	w19, [x20]
     b0c: 910062a0     	add	x0, x21, #0x18
     b10: 94000000     	bl	0xb10 <richtap_clean_buf+0x40>
		0000000000000b10:  R_AARCH64_CALL26	memset
     b14: f94006b4     	ldr	x20, [x21, #0x8]
     b18: 2a1f03e1     	mov	w1, wzr
     b1c: 52807d02     	mov	w2, #0x3e8              // =1000
     b20: 390002b3     	strb	w19, [x21]
     b24: 91006280     	add	x0, x20, #0x18
     b28: 94000000     	bl	0xb28 <richtap_clean_buf+0x58>
		0000000000000b28:  R_AARCH64_CALL26	memset
     b2c: f9400695     	ldr	x21, [x20, #0x8]
     b30: 2a1f03e1     	mov	w1, wzr
     b34: 52807d02     	mov	w2, #0x3e8              // =1000
     b38: 39000293     	strb	w19, [x20]
     b3c: 910062a0     	add	x0, x21, #0x18
     b40: 94000000     	bl	0xb40 <richtap_clean_buf+0x70>
		0000000000000b40:  R_AARCH64_CALL26	memset
     b44: f94006b4     	ldr	x20, [x21, #0x8]
     b48: 2a1f03e1     	mov	w1, wzr
     b4c: 52807d02     	mov	w2, #0x3e8              // =1000
     b50: 390002b3     	strb	w19, [x21]
     b54: 91006280     	add	x0, x20, #0x18
     b58: 94000000     	bl	0xb58 <richtap_clean_buf+0x88>
		0000000000000b58:  R_AARCH64_CALL26	memset
     b5c: f9400695     	ldr	x21, [x20, #0x8]
     b60: 2a1f03e1     	mov	w1, wzr
     b64: 52807d02     	mov	w2, #0x3e8              // =1000
     b68: 39000293     	strb	w19, [x20]
     b6c: 910062a0     	add	x0, x21, #0x18
     b70: 94000000     	bl	0xb70 <richtap_clean_buf+0xa0>
		0000000000000b70:  R_AARCH64_CALL26	memset
     b74: f94006b4     	ldr	x20, [x21, #0x8]
     b78: 2a1f03e1     	mov	w1, wzr
     b7c: 52807d02     	mov	w2, #0x3e8              // =1000
     b80: 390002b3     	strb	w19, [x21]
     b84: 91006280     	add	x0, x20, #0x18
     b88: 94000000     	bl	0xb88 <richtap_clean_buf+0xb8>
		0000000000000b88:  R_AARCH64_CALL26	memset
     b8c: f9400695     	ldr	x21, [x20, #0x8]
     b90: 2a1f03e1     	mov	w1, wzr
     b94: 52807d02     	mov	w2, #0x3e8              // =1000
     b98: 39000293     	strb	w19, [x20]
     b9c: 910062a0     	add	x0, x21, #0x18
     ba0: 94000000     	bl	0xba0 <richtap_clean_buf+0xd0>
		0000000000000ba0:  R_AARCH64_CALL26	memset
     ba4: f94006b4     	ldr	x20, [x21, #0x8]
     ba8: 2a1f03e1     	mov	w1, wzr
     bac: 52807d02     	mov	w2, #0x3e8              // =1000
     bb0: 390002b3     	strb	w19, [x21]
     bb4: 91006280     	add	x0, x20, #0x18
     bb8: 94000000     	bl	0xbb8 <richtap_clean_buf+0xe8>
		0000000000000bb8:  R_AARCH64_CALL26	memset
     bbc: f9400695     	ldr	x21, [x20, #0x8]
     bc0: 2a1f03e1     	mov	w1, wzr
     bc4: 52807d02     	mov	w2, #0x3e8              // =1000
     bc8: 39000293     	strb	w19, [x20]
     bcc: 910062a0     	add	x0, x21, #0x18
     bd0: 94000000     	bl	0xbd0 <richtap_clean_buf+0x100>
		0000000000000bd0:  R_AARCH64_CALL26	memset
     bd4: f94006b4     	ldr	x20, [x21, #0x8]
     bd8: 2a1f03e1     	mov	w1, wzr
     bdc: 52807d02     	mov	w2, #0x3e8              // =1000
     be0: 390002b3     	strb	w19, [x21]
     be4: 91006280     	add	x0, x20, #0x18
     be8: 94000000     	bl	0xbe8 <richtap_clean_buf+0x118>
		0000000000000be8:  R_AARCH64_CALL26	memset
     bec: f9400695     	ldr	x21, [x20, #0x8]
     bf0: 2a1f03e1     	mov	w1, wzr
     bf4: 52807d02     	mov	w2, #0x3e8              // =1000
     bf8: 39000293     	strb	w19, [x20]
     bfc: 910062a0     	add	x0, x21, #0x18
     c00: 94000000     	bl	0xc00 <richtap_clean_buf+0x130>
		0000000000000c00:  R_AARCH64_CALL26	memset
     c04: f94006b4     	ldr	x20, [x21, #0x8]
     c08: 2a1f03e1     	mov	w1, wzr
     c0c: 52807d02     	mov	w2, #0x3e8              // =1000
     c10: 390002b3     	strb	w19, [x21]
     c14: 91006280     	add	x0, x20, #0x18
     c18: 94000000     	bl	0xc18 <richtap_clean_buf+0x148>
		0000000000000c18:  R_AARCH64_CALL26	memset
     c1c: f9400695     	ldr	x21, [x20, #0x8]
     c20: 2a1f03e1     	mov	w1, wzr
     c24: 52807d02     	mov	w2, #0x3e8              // =1000
     c28: 39000293     	strb	w19, [x20]
     c2c: 910062a0     	add	x0, x21, #0x18
     c30: 94000000     	bl	0xc30 <richtap_clean_buf+0x160>
		0000000000000c30:  R_AARCH64_CALL26	memset
     c34: f94006b4     	ldr	x20, [x21, #0x8]
     c38: 2a1f03e1     	mov	w1, wzr
     c3c: 52807d02     	mov	w2, #0x3e8              // =1000
     c40: 390002b3     	strb	w19, [x21]
     c44: 91006280     	add	x0, x20, #0x18
     c48: 94000000     	bl	0xc48 <richtap_clean_buf+0x178>
		0000000000000c48:  R_AARCH64_CALL26	memset
     c4c: f9400695     	ldr	x21, [x20, #0x8]
     c50: 2a1f03e1     	mov	w1, wzr
     c54: 52807d02     	mov	w2, #0x3e8              // =1000
     c58: 39000293     	strb	w19, [x20]
     c5c: 910062a0     	add	x0, x21, #0x18
     c60: 94000000     	bl	0xc60 <richtap_clean_buf+0x190>
		0000000000000c60:  R_AARCH64_CALL26	memset
     c64: 390002b3     	strb	w19, [x21]
     c68: a9424ff4     	ldp	x20, x19, [sp, #0x20]
     c6c: f9400bf5     	ldr	x21, [sp, #0x10]
     c70: a8c37bfd     	ldp	x29, x30, [sp], #0x30
     c74: d50323bf     	autiasp
     c78: d65f03c0     	ret
