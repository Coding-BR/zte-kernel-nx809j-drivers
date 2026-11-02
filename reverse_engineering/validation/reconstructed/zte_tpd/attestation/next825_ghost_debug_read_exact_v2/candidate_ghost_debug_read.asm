
/input/zte_tpd.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000001cf8c <ghost_debug_read>:
   1cf8c: d503233f     	paciasp
   1cf90: a9bb7bfd     	stp	x29, x30, [sp, #-0x50]!
   1cf94: f9000bf9     	str	x25, [sp, #0x10]
   1cf98: a9025ff8     	stp	x24, x23, [sp, #0x20]
   1cf9c: a90357f6     	stp	x22, x21, [sp, #0x30]
   1cfa0: a9044ff4     	stp	x20, x19, [sp, #0x40]
   1cfa4: 910003fd     	mov	x29, sp
   1cfa8: f9400068     	ldr	x8, [x3]
   1cfac: b4000128     	cbz	x8, 0x1cfd0 <ghost_debug_read+0x44>
   1cfb0: aa1f03e0     	mov	x0, xzr
   1cfb4: a9444ff4     	ldp	x20, x19, [sp, #0x40]
   1cfb8: f9400bf9     	ldr	x25, [sp, #0x10]
   1cfbc: a94357f6     	ldp	x22, x21, [sp, #0x30]
   1cfc0: a9425ff8     	ldp	x24, x23, [sp, #0x20]
   1cfc4: a8c57bfd     	ldp	x29, x30, [sp], #0x50
   1cfc8: d50323bf     	autiasp
   1cfcc: d65f03c0     	ret
   1cfd0: 90000008     	adrp	x8, 0x1c000 <tp_sensibility_level_write+0x28>
		000000000001cfd0:  R_AARCH64_ADR_PREL_PG_HI21	tpd_cdev
   1cfd4: aa0103f5     	mov	x21, x1
   1cfd8: aa0203f4     	mov	x20, x2
   1cfdc: f9400117     	ldr	x23, [x8]
		000000000001cfdc:  R_AARCH64_LDST64_ABS_LO12_NC	tpd_cdev
   1cfe0: aa0303f3     	mov	x19, x3
   1cfe4: d503201f     	nop
   1cfe8: 90000008     	adrp	x8, 0x1c000 <tp_sensibility_level_write+0x28>
		000000000001cfe8:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1cfec: 5281b801     	mov	w1, #0xdc0              // =3520
   1cff0: 52820002     	mov	w2, #0x1000             // =4096
   1cff4: f9400100     	ldr	x0, [x8]
		000000000001cff4:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1cff8: 94000000     	bl	0x1cff8 <ghost_debug_read+0x6c>
		000000000001cff8:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1cffc: b5000240     	cbnz	x0, 0x1d044 <ghost_debug_read+0xb8>
   1d000: 90000000     	adrp	x0, 0x1d000 <ghost_debug_read+0x74>
		000000000001d000:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e6a
   1d004: 91000000     	add	x0, x0, #0x0
		000000000001d004:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e6a
   1d008: 94000000     	bl	0x1d008 <ghost_debug_read+0x7c>
		000000000001d008:  R_AARCH64_CALL26	_printk
   1d00c: 92800160     	mov	x0, #-0xc               // =-12
   1d010: 17ffffe9     	b	0x1cfb4 <ghost_debug_read+0x28>
   1d014: 90000008     	adrp	x8, 0x1d000 <ghost_debug_read+0x74>
		000000000001d014:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x380
   1d018: 91000108     	add	x8, x8, #0x0
		000000000001d018:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x380
   1d01c: d5384116     	mrs	x22, SP_EL0
   1d020: f9402ad8     	ldr	x24, [x22, #0x50]
   1d024: f9002ac8     	str	x8, [x22, #0x50]
   1d028: 90000008     	adrp	x8, 0x1d000 <ghost_debug_read+0x74>
		000000000001d028:  R_AARCH64_ADR_PREL_PG_HI21	kmalloc_caches+0x60
   1d02c: f9400100     	ldr	x0, [x8]
		000000000001d02c:  R_AARCH64_LDST64_ABS_LO12_NC	kmalloc_caches+0x60
   1d030: 5281b801     	mov	w1, #0xdc0              // =3520
   1d034: 52820002     	mov	w2, #0x1000             // =4096
   1d038: 94000000     	bl	0x1d038 <ghost_debug_read+0xac>
		000000000001d038:  R_AARCH64_CALL26	__kmalloc_cache_noprof
   1d03c: f9002ad8     	str	x24, [x22, #0x50]
   1d040: b4fffe00     	cbz	x0, 0x1d000 <ghost_debug_read+0x74>
   1d044: 395246e1     	ldrb	w1, [x23, #0x491]
   1d048: 90000008     	adrp	x8, 0x1d000 <ghost_debug_read+0x74>
		000000000001d048:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e1e
   1d04c: 91000108     	add	x8, x8, #0x0
		000000000001d04c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e1e
   1d050: aa0003f6     	mov	x22, x0
   1d054: aa0803e0     	mov	x0, x8
   1d058: 94000000     	bl	0x1d058 <ghost_debug_read+0xcc>
		000000000001d058:  R_AARCH64_CALL26	_printk
   1d05c: 39524ae1     	ldrb	w1, [x23, #0x492]
   1d060: 90000000     	adrp	x0, 0x1d000 <ghost_debug_read+0x74>
		000000000001d060:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x4aac
   1d064: 91000000     	add	x0, x0, #0x0
		000000000001d064:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x4aac
   1d068: 94000000     	bl	0x1d068 <ghost_debug_read+0xdc>
		000000000001d068:  R_AARCH64_CALL26	_printk
   1d06c: 39524ee1     	ldrb	w1, [x23, #0x493]
   1d070: 90000000     	adrp	x0, 0x1d000 <ghost_debug_read+0x74>
		000000000001d070:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e44
   1d074: 91000000     	add	x0, x0, #0x0
		000000000001d074:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e44
   1d078: 94000000     	bl	0x1d078 <ghost_debug_read+0xec>
		000000000001d078:  R_AARCH64_CALL26	_printk
   1d07c: 395252e1     	ldrb	w1, [x23, #0x494]
   1d080: 90000000     	adrp	x0, 0x1d000 <ghost_debug_read+0x74>
		000000000001d080:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x250e
   1d084: 91000000     	add	x0, x0, #0x0
		000000000001d084:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x250e
   1d088: 94000000     	bl	0x1d088 <ghost_debug_read+0xfc>
		000000000001d088:  R_AARCH64_CALL26	_printk
   1d08c: 395256e1     	ldrb	w1, [x23, #0x495]
   1d090: 90000000     	adrp	x0, 0x1d000 <ghost_debug_read+0x74>
		000000000001d090:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x86b6
   1d094: 91000000     	add	x0, x0, #0x0
		000000000001d094:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x86b6
   1d098: 94000000     	bl	0x1d098 <ghost_debug_read+0x10c>
		000000000001d098:  R_AARCH64_CALL26	_printk
   1d09c: b9449ae1     	ldr	w1, [x23, #0x498]
   1d0a0: 90000000     	adrp	x0, 0x1d000 <ghost_debug_read+0x74>
		000000000001d0a0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7b8c
   1d0a4: 91000000     	add	x0, x0, #0x0
		000000000001d0a4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7b8c
   1d0a8: 94000000     	bl	0x1d0a8 <ghost_debug_read+0x11c>
		000000000001d0a8:  R_AARCH64_CALL26	_printk
   1d0ac: b9449ee1     	ldr	w1, [x23, #0x49c]
   1d0b0: 90000000     	adrp	x0, 0x1d000 <ghost_debug_read+0x74>
		000000000001d0b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x51b6
   1d0b4: 91000000     	add	x0, x0, #0x0
		000000000001d0b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x51b6
   1d0b8: 94000000     	bl	0x1d0b8 <ghost_debug_read+0x12c>
		000000000001d0b8:  R_AARCH64_CALL26	_printk
   1d0bc: b944a2e1     	ldr	w1, [x23, #0x4a0]
   1d0c0: 90000000     	adrp	x0, 0x1d000 <ghost_debug_read+0x74>
		000000000001d0c0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x626
   1d0c4: 91000000     	add	x0, x0, #0x0
		000000000001d0c4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x626
   1d0c8: 94000000     	bl	0x1d0c8 <ghost_debug_read+0x13c>
		000000000001d0c8:  R_AARCH64_CALL26	_printk
   1d0cc: b944a6e1     	ldr	w1, [x23, #0x4a4]
   1d0d0: 90000000     	adrp	x0, 0x1d000 <ghost_debug_read+0x74>
		000000000001d0d0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x2534
   1d0d4: 91000000     	add	x0, x0, #0x0
		000000000001d0d4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x2534
   1d0d8: 94000000     	bl	0x1d0d8 <ghost_debug_read+0x14c>
		000000000001d0d8:  R_AARCH64_CALL26	_printk
   1d0dc: 90000009     	adrp	x9, 0x1d000 <ghost_debug_read+0x74>
		000000000001d0dc:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x56d8
   1d0e0: 91000129     	add	x9, x9, #0x0
		000000000001d0e0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x56d8
   1d0e4: 52800148     	mov	w8, #0xa                // =10
   1d0e8: a945b12b     	ldp	x11, x12, [x9, #0x58]
   1d0ec: 790052c8     	strh	w8, [x22, #0x28]
   1d0f0: a940352a     	ldp	x10, x13, [x9]
   1d0f4: f9400930     	ldr	x16, [x9, #0x10]
   1d0f8: 9000000f     	adrp	x15, 0x1d000 <ghost_debug_read+0x74>
		000000000001d0f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa030
   1d0fc: 910001ef     	add	x15, x15, #0x0
		000000000001d0fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa030
   1d100: 7901a2c8     	strh	w8, [x22, #0xd0]
   1d104: f80812cb     	stur	x11, [x22, #0x81]
   1d108: f940352b     	ldr	x11, [x9, #0x68]
   1d10c: 90000002     	adrp	x2, 0x1d000 <ghost_debug_read+0x74>
		000000000001d10c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8734
   1d110: 91000042     	add	x2, x2, #0x0
		000000000001d110:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8734
   1d114: f80892cc     	stur	x12, [x22, #0x89]
   1d118: 9103eac0     	add	x0, x22, #0xfa
   1d11c: f80912cb     	stur	x11, [x22, #0x91]
   1d120: a943ad2c     	ldp	x12, x11, [x9, #0x38]
   1d124: f80292ca     	stur	x10, [x22, #0x29]
   1d128: 52820001     	mov	w1, #0x1000             // =4096
   1d12c: 52820018     	mov	w24, #0x1000            // =4096
   1d130: f80312cd     	stur	x13, [x22, #0x31]
   1d134: f80612cc     	stur	x12, [x22, #0x61]
   1d138: a944a92c     	ldp	x12, x10, [x9, #0x48]
   1d13c: f80692cb     	stur	x11, [x22, #0x69]
   1d140: f80392d0     	stur	x16, [x22, #0x39]
   1d144: f80792ca     	stur	x10, [x22, #0x79]
   1d148: a941a92b     	ldp	x11, x10, [x9, #0x18]
   1d14c: f80712cc     	stur	x12, [x22, #0x71]
   1d150: 780f92c8     	sturh	w8, [x22, #0xf9]
   1d154: f80412cb     	stur	x11, [x22, #0x41]
   1d158: a942b92b     	ldp	x11, x14, [x9, #0x28]
   1d15c: f846f129     	ldur	x9, [x9, #0x6f]
   1d160: f80492ca     	stur	x10, [x22, #0x49]
   1d164: a94129ec     	ldp	x12, x10, [x15, #0x10]
   1d168: f80512cb     	stur	x11, [x22, #0x51]
   1d16c: 9000000b     	adrp	x11, 0x1d000 <ghost_debug_read+0x74>
		000000000001d16c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x7674
   1d170: 9100016b     	add	x11, x11, #0x0
		000000000001d170:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x7674
   1d174: f80592ce     	stur	x14, [x22, #0x59]
   1d178: a941b96d     	ldp	x13, x14, [x11, #0x18]
   1d17c: f9401570     	ldr	x16, [x11, #0x28]
   1d180: a9012acc     	stp	x12, x10, [x22, #0x10]
   1d184: f80e12cc     	stur	x12, [x22, #0xe1]
   1d188: a90bbacd     	stp	x13, x14, [x22, #0xb8]
   1d18c: f94011ee     	ldr	x14, [x15, #0x20]
   1d190: f90066d0     	str	x16, [x22, #0xc8]
   1d194: a940416d     	ldp	x13, x16, [x11]
   1d198: f940096b     	ldr	x11, [x11, #0x10]
   1d19c: f90012ce     	str	x14, [x22, #0x20]
   1d1a0: f80e92ca     	stur	x10, [x22, #0xe9]
   1d1a4: a909b6c9     	stp	x9, x13, [x22, #0x98]
   1d1a8: a94025ed     	ldp	x13, x9, [x15]
   1d1ac: a90aaed0     	stp	x16, x11, [x22, #0xa8]
   1d1b0: f80f12ce     	stur	x14, [x22, #0xf1]
   1d1b4: a90026cd     	stp	x13, x9, [x22]
   1d1b8: f80d92c9     	stur	x9, [x22, #0xd9]
   1d1bc: f80d12cd     	stur	x13, [x22, #0xd1]
   1d1c0: 395246e3     	ldrb	w3, [x23, #0x491]
   1d1c4: 94000000     	bl	0x1d1c4 <ghost_debug_read+0x238>
		000000000001d1c4:  R_AARCH64_CALL26	snprintf
   1d1c8: 93407c08     	sxtw	x8, w0
   1d1cc: 5281e0c9     	mov	w9, #0xf06              // =3846
   1d1d0: 39524ae3     	ldrb	w3, [x23, #0x492]
   1d1d4: 90000002     	adrp	x2, 0x1d000 <ghost_debug_read+0x74>
		000000000001d1d4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8754
   1d1d8: 91000042     	add	x2, x2, #0x0
		000000000001d1d8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8754
   1d1dc: 9103e919     	add	x25, x8, #0xfa
   1d1e0: cb080121     	sub	x1, x9, x8
   1d1e4: 8b1902c0     	add	x0, x22, x25
   1d1e8: 94000000     	bl	0x1d1e8 <ghost_debug_read+0x25c>
		000000000001d1e8:  R_AARCH64_CALL26	snprintf
   1d1ec: 8b20c339     	add	x25, x25, w0, sxtw
   1d1f0: 39524ee3     	ldrb	w3, [x23, #0x493]
   1d1f4: 90000002     	adrp	x2, 0x1d000 <ghost_debug_read+0x74>
		000000000001d1f4:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x12ba
   1d1f8: 91000042     	add	x2, x2, #0x0
		000000000001d1f8:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x12ba
   1d1fc: cb190301     	sub	x1, x24, x25
   1d200: 8b1902c0     	add	x0, x22, x25
   1d204: 94000000     	bl	0x1d204 <ghost_debug_read+0x278>
		000000000001d204:  R_AARCH64_CALL26	snprintf
   1d208: 8b20c339     	add	x25, x25, w0, sxtw
   1d20c: 395252e3     	ldrb	w3, [x23, #0x494]
   1d210: 90000002     	adrp	x2, 0x1d000 <ghost_debug_read+0x74>
		000000000001d210:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ee2
   1d214: 91000042     	add	x2, x2, #0x0
		000000000001d214:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ee2
   1d218: cb190301     	sub	x1, x24, x25
   1d21c: 8b1902c0     	add	x0, x22, x25
   1d220: 94000000     	bl	0x1d220 <ghost_debug_read+0x294>
		000000000001d220:  R_AARCH64_CALL26	snprintf
   1d224: 8b20c339     	add	x25, x25, w0, sxtw
   1d228: 395256e3     	ldrb	w3, [x23, #0x495]
   1d22c: 90000002     	adrp	x2, 0x1d000 <ghost_debug_read+0x74>
		000000000001d22c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x97d6
   1d230: 91000042     	add	x2, x2, #0x0
		000000000001d230:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x97d6
   1d234: cb190301     	sub	x1, x24, x25
   1d238: 8b1902c0     	add	x0, x22, x25
   1d23c: 94000000     	bl	0x1d23c <ghost_debug_read+0x2b0>
		000000000001d23c:  R_AARCH64_CALL26	snprintf
   1d240: 8b20c339     	add	x25, x25, w0, sxtw
   1d244: b9449ae3     	ldr	w3, [x23, #0x498]
   1d248: 90000002     	adrp	x2, 0x1d000 <ghost_debug_read+0x74>
		000000000001d248:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xa7ea
   1d24c: 91000042     	add	x2, x2, #0x0
		000000000001d24c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xa7ea
   1d250: cb190301     	sub	x1, x24, x25
   1d254: 8b1902c0     	add	x0, x22, x25
   1d258: 94000000     	bl	0x1d258 <ghost_debug_read+0x2cc>
		000000000001d258:  R_AARCH64_CALL26	snprintf
   1d25c: 8b20c339     	add	x25, x25, w0, sxtw
   1d260: b9449ee3     	ldr	w3, [x23, #0x49c]
   1d264: 90000002     	adrp	x2, 0x1d000 <ghost_debug_read+0x74>
		000000000001d264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xbca4
   1d268: 91000042     	add	x2, x2, #0x0
		000000000001d268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xbca4
   1d26c: cb190301     	sub	x1, x24, x25
   1d270: 8b1902c0     	add	x0, x22, x25
   1d274: 94000000     	bl	0x1d274 <ghost_debug_read+0x2e8>
		000000000001d274:  R_AARCH64_CALL26	snprintf
   1d278: 8b20c339     	add	x25, x25, w0, sxtw
   1d27c: b944a2e3     	ldr	w3, [x23, #0x4a0]
   1d280: 90000002     	adrp	x2, 0x1d000 <ghost_debug_read+0x74>
		000000000001d280:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1f02
   1d284: 91000042     	add	x2, x2, #0x0
		000000000001d284:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1f02
   1d288: cb190301     	sub	x1, x24, x25
   1d28c: 8b1902c0     	add	x0, x22, x25
   1d290: 94000000     	bl	0x1d290 <ghost_debug_read+0x304>
		000000000001d290:  R_AARCH64_CALL26	snprintf
   1d294: 8b20c339     	add	x25, x25, w0, sxtw
   1d298: b944a6e3     	ldr	w3, [x23, #0x4a4]
   1d29c: 90000002     	adrp	x2, 0x1d000 <ghost_debug_read+0x74>
		000000000001d29c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xc27e
   1d2a0: 91000042     	add	x2, x2, #0x0
		000000000001d2a0:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xc27e
   1d2a4: cb190301     	sub	x1, x24, x25
   1d2a8: 8b1902c0     	add	x0, x22, x25
   1d2ac: 94000000     	bl	0x1d2ac <ghost_debug_read+0x320>
		000000000001d2ac:  R_AARCH64_CALL26	snprintf
   1d2b0: 8b20c337     	add	x23, x25, w0, sxtw
   1d2b4: aa1503e0     	mov	x0, x21
   1d2b8: aa1403e1     	mov	x1, x20
   1d2bc: aa1303e2     	mov	x2, x19
   1d2c0: aa1603e3     	mov	x3, x22
   1d2c4: aa1703e4     	mov	x4, x23
   1d2c8: 94000000     	bl	0x1d2c8 <ghost_debug_read+0x33c>
		000000000001d2c8:  R_AARCH64_CALL26	simple_read_from_buffer
   1d2cc: aa1603e0     	mov	x0, x22
   1d2d0: 94000000     	bl	0x1d2d0 <ghost_debug_read+0x344>
		000000000001d2d0:  R_AARCH64_CALL26	kfree
   1d2d4: aa1703e0     	mov	x0, x23
   1d2d8: 17ffff37     	b	0x1cfb4 <ghost_debug_read+0x28>
