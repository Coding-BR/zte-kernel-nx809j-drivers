
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bc80 <richtap_clean_buf>:
    bc80: d503233f     	paciasp
    bc84: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    bc88: f9000bf5     	str	x21, [sp, #0x10]
    bc8c: a9024ff4     	stp	x20, x19, [sp, #0x20]
    bc90: 910003fd     	mov	x29, sp
    bc94: f9430814     	ldr	x20, [x0, #0x610]
    bc98: 2a1f03e1     	mov	w1, wzr
    bc9c: 52807d02     	mov	w2, #0x3e8              // =1000
    bca0: 91006280     	add	x0, x20, #0x18
    bca4: 94000000     	bl	0xbca4 <richtap_clean_buf+0x24>
		000000000000bca4:  R_AARCH64_CALL26	memset
    bca8: f9400695     	ldr	x21, [x20, #0x8]
    bcac: 52801ff3     	mov	w19, #0xff              // =255
    bcb0: 2a1f03e1     	mov	w1, wzr
    bcb4: 52807d02     	mov	w2, #0x3e8              // =1000
    bcb8: 39000293     	strb	w19, [x20]
    bcbc: 910062a0     	add	x0, x21, #0x18
    bcc0: 94000000     	bl	0xbcc0 <richtap_clean_buf+0x40>
		000000000000bcc0:  R_AARCH64_CALL26	memset
    bcc4: f94006b4     	ldr	x20, [x21, #0x8]
    bcc8: 2a1f03e1     	mov	w1, wzr
    bccc: 52807d02     	mov	w2, #0x3e8              // =1000
    bcd0: 390002b3     	strb	w19, [x21]
    bcd4: 91006280     	add	x0, x20, #0x18
    bcd8: 94000000     	bl	0xbcd8 <richtap_clean_buf+0x58>
		000000000000bcd8:  R_AARCH64_CALL26	memset
    bcdc: f9400695     	ldr	x21, [x20, #0x8]
    bce0: 2a1f03e1     	mov	w1, wzr
    bce4: 52807d02     	mov	w2, #0x3e8              // =1000
    bce8: 39000293     	strb	w19, [x20]
    bcec: 910062a0     	add	x0, x21, #0x18
    bcf0: 94000000     	bl	0xbcf0 <richtap_clean_buf+0x70>
		000000000000bcf0:  R_AARCH64_CALL26	memset
    bcf4: f94006b4     	ldr	x20, [x21, #0x8]
    bcf8: 2a1f03e1     	mov	w1, wzr
    bcfc: 52807d02     	mov	w2, #0x3e8              // =1000
    bd00: 390002b3     	strb	w19, [x21]
    bd04: 91006280     	add	x0, x20, #0x18
    bd08: 94000000     	bl	0xbd08 <richtap_clean_buf+0x88>
		000000000000bd08:  R_AARCH64_CALL26	memset
    bd0c: f9400695     	ldr	x21, [x20, #0x8]
    bd10: 2a1f03e1     	mov	w1, wzr
    bd14: 52807d02     	mov	w2, #0x3e8              // =1000
    bd18: 39000293     	strb	w19, [x20]
    bd1c: 910062a0     	add	x0, x21, #0x18
    bd20: 94000000     	bl	0xbd20 <richtap_clean_buf+0xa0>
		000000000000bd20:  R_AARCH64_CALL26	memset
    bd24: f94006b4     	ldr	x20, [x21, #0x8]
    bd28: 2a1f03e1     	mov	w1, wzr
    bd2c: 52807d02     	mov	w2, #0x3e8              // =1000
    bd30: 390002b3     	strb	w19, [x21]
    bd34: 91006280     	add	x0, x20, #0x18
    bd38: 94000000     	bl	0xbd38 <richtap_clean_buf+0xb8>
		000000000000bd38:  R_AARCH64_CALL26	memset
    bd3c: f9400695     	ldr	x21, [x20, #0x8]
    bd40: 2a1f03e1     	mov	w1, wzr
    bd44: 52807d02     	mov	w2, #0x3e8              // =1000
    bd48: 39000293     	strb	w19, [x20]
    bd4c: 910062a0     	add	x0, x21, #0x18
    bd50: 94000000     	bl	0xbd50 <richtap_clean_buf+0xd0>
		000000000000bd50:  R_AARCH64_CALL26	memset
    bd54: f94006b4     	ldr	x20, [x21, #0x8]
    bd58: 2a1f03e1     	mov	w1, wzr
    bd5c: 52807d02     	mov	w2, #0x3e8              // =1000
    bd60: 390002b3     	strb	w19, [x21]
    bd64: 91006280     	add	x0, x20, #0x18
    bd68: 94000000     	bl	0xbd68 <richtap_clean_buf+0xe8>
		000000000000bd68:  R_AARCH64_CALL26	memset
    bd6c: f9400695     	ldr	x21, [x20, #0x8]
    bd70: 2a1f03e1     	mov	w1, wzr
    bd74: 52807d02     	mov	w2, #0x3e8              // =1000
    bd78: 39000293     	strb	w19, [x20]
    bd7c: 910062a0     	add	x0, x21, #0x18
    bd80: 94000000     	bl	0xbd80 <richtap_clean_buf+0x100>
		000000000000bd80:  R_AARCH64_CALL26	memset
    bd84: f94006b4     	ldr	x20, [x21, #0x8]
    bd88: 2a1f03e1     	mov	w1, wzr
    bd8c: 52807d02     	mov	w2, #0x3e8              // =1000
    bd90: 390002b3     	strb	w19, [x21]
    bd94: 91006280     	add	x0, x20, #0x18
    bd98: 94000000     	bl	0xbd98 <richtap_clean_buf+0x118>
		000000000000bd98:  R_AARCH64_CALL26	memset
    bd9c: f9400695     	ldr	x21, [x20, #0x8]
    bda0: 2a1f03e1     	mov	w1, wzr
    bda4: 52807d02     	mov	w2, #0x3e8              // =1000
    bda8: 39000293     	strb	w19, [x20]
    bdac: 910062a0     	add	x0, x21, #0x18
    bdb0: 94000000     	bl	0xbdb0 <richtap_clean_buf+0x130>
		000000000000bdb0:  R_AARCH64_CALL26	memset
    bdb4: f94006b4     	ldr	x20, [x21, #0x8]
    bdb8: 2a1f03e1     	mov	w1, wzr
    bdbc: 52807d02     	mov	w2, #0x3e8              // =1000
    bdc0: 390002b3     	strb	w19, [x21]
    bdc4: 91006280     	add	x0, x20, #0x18
    bdc8: 94000000     	bl	0xbdc8 <richtap_clean_buf+0x148>
		000000000000bdc8:  R_AARCH64_CALL26	memset
    bdcc: f9400695     	ldr	x21, [x20, #0x8]
    bdd0: 2a1f03e1     	mov	w1, wzr
    bdd4: 52807d02     	mov	w2, #0x3e8              // =1000
    bdd8: 39000293     	strb	w19, [x20]
    bddc: 910062a0     	add	x0, x21, #0x18
    bde0: 94000000     	bl	0xbde0 <richtap_clean_buf+0x160>
		000000000000bde0:  R_AARCH64_CALL26	memset
    bde4: f94006b4     	ldr	x20, [x21, #0x8]
    bde8: 2a1f03e1     	mov	w1, wzr
    bdec: 52807d02     	mov	w2, #0x3e8              // =1000
    bdf0: 390002b3     	strb	w19, [x21]
    bdf4: 91006280     	add	x0, x20, #0x18
    bdf8: 94000000     	bl	0xbdf8 <richtap_clean_buf+0x178>
		000000000000bdf8:  R_AARCH64_CALL26	memset
    bdfc: f9400695     	ldr	x21, [x20, #0x8]
    be00: 2a1f03e1     	mov	w1, wzr
    be04: 52807d02     	mov	w2, #0x3e8              // =1000
    be08: 39000293     	strb	w19, [x20]
    be0c: 910062a0     	add	x0, x21, #0x18
    be10: 94000000     	bl	0xbe10 <richtap_clean_buf+0x190>
		000000000000be10:  R_AARCH64_CALL26	memset
    be14: 390002b3     	strb	w19, [x21]
    be18: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    be1c: f9400bf5     	ldr	x21, [sp, #0x10]
    be20: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    be24: d50323bf     	autiasp
    be28: d65f03c0     	ret
