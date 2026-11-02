
/input/zte_power_supply_cycle_1.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000e14 <zte_power_supply_uevent>:
     e14: d503233f     	paciasp
     e18: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
     e1c: f9000bfb     	str	x27, [sp, #0x10]
     e20: a90267fa     	stp	x26, x25, [sp, #0x20]
     e24: a9035ff8     	stp	x24, x23, [sp, #0x30]
     e28: a90457f6     	stp	x22, x21, [sp, #0x40]
     e2c: a9054ff4     	stp	x20, x19, [sp, #0x50]
     e30: 910003fd     	mov	x29, sp
     e34: f9404c17     	ldr	x23, [x0, #0x98]
     e38: b4000377     	cbz	x23, 0xea4 <zte_power_supply_uevent+0x90>
     e3c: f94002e8     	ldr	x8, [x23]
     e40: b4000328     	cbz	x8, 0xea4 <zte_power_supply_uevent+0x90>
     e44: aa0103f4     	mov	x20, x1
     e48: f9400102     	ldr	x2, [x8]
     e4c: aa0003f3     	mov	x19, x0
     e50: 90000001     	adrp	x1, 0x0 <.text>
		0000000000000e50:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x667
     e54: 91000021     	add	x1, x1, #0x0
		0000000000000e54:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x667
     e58: aa1403e0     	mov	x0, x20
     e5c: 94000000     	bl	0xe5c <zte_power_supply_uevent+0x48>
		0000000000000e5c:  R_AARCH64_CALL26	add_uevent_var
     e60: 35000240     	cbnz	w0, 0xea8 <zte_power_supply_uevent+0x94>
     e64: d503201f     	nop
     e68: 52819800     	mov	w0, #0xcc0              // =3264
     e6c: 94000000     	bl	0xe6c <zte_power_supply_uevent+0x58>
		0000000000000e6c:  R_AARCH64_CALL26	get_zeroed_page_noprof
     e70: aa0003f5     	mov	x21, x0
     e74: b40008d5     	cbz	x21, 0xf8c <zte_power_supply_uevent+0x178>
     e78: f94002e8     	ldr	x8, [x23]
     e7c: f9401509     	ldr	x9, [x8, #0x28]
     e80: b4000629     	cbz	x9, 0xf44 <zte_power_supply_uevent+0x130>
     e84: aa1f03e9     	mov	x9, xzr
     e88: 52800038     	mov	w24, #0x1               // =1
     e8c: 90000019     	adrp	x25, 0x0 <.text>
		0000000000000e8c:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x10
     e90: 91000339     	add	x25, x25, #0x0
		0000000000000e90:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x10
     e94: 52800b1a     	mov	w26, #0x58              // =88
     e98: 90000016     	adrp	x22, 0x0 <.text>
		0000000000000e98:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1aa
     e9c: 910002d6     	add	x22, x22, #0x0
		0000000000000e9c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1aa
     ea0: 14000016     	b	0xef8 <zte_power_supply_uevent+0xe4>
     ea4: 2a1f03e0     	mov	w0, wzr
     ea8: a9454ff4     	ldp	x20, x19, [sp, #0x50]
     eac: f9400bfb     	ldr	x27, [sp, #0x10]
     eb0: a94457f6     	ldp	x22, x21, [sp, #0x40]
     eb4: a9435ff8     	ldp	x24, x23, [sp, #0x30]
     eb8: a94267fa     	ldp	x26, x25, [sp, #0x20]
     ebc: a8c67bfd     	ldp	x29, x30, [sp], #0x60
     ec0: d50323bf     	autiasp
     ec4: d65f03c0     	ret
     ec8: f9400362     	ldr	x2, [x27]
     ecc: aa1403e0     	mov	x0, x20
     ed0: aa1603e1     	mov	x1, x22
     ed4: aa1503e3     	mov	x3, x21
     ed8: 94000000     	bl	0xed8 <zte_power_supply_uevent+0xc4>
		0000000000000ed8:  R_AARCH64_CALL26	add_uevent_var
     edc: 35000360     	cbnz	w0, 0xf48 <zte_power_supply_uevent+0x134>
     ee0: f94002e8     	ldr	x8, [x23]
     ee4: 93407f09     	sxtw	x9, w24
     ee8: 11000718     	add	w24, w24, #0x1
     eec: f940150a     	ldr	x10, [x8, #0x28]
     ef0: eb09015f     	cmp	x10, x9
     ef4: 54000289     	b.ls	0xf44 <zte_power_supply_uevent+0x130>
     ef8: f9401108     	ldr	x8, [x8, #0x20]
     efc: b8697908     	ldr	w8, [x8, x9, lsl #2]
     f00: 71004d1f     	cmp	w8, #0x13
     f04: 540002e2     	b.hs	0xf60 <zte_power_supply_uevent+0x14c>
     f08: 9bba651b     	umaddl	x27, w8, w26, x25
     f0c: aa1303e0     	mov	x0, x19
     f10: aa1503e2     	mov	x2, x21
     f14: 9100a361     	add	x1, x27, #0x28
     f18: 97fffcd1     	bl	0x25c <zte_power_supply_show_property>
     f1c: 3100f41f     	cmn	w0, #0x3d
     f20: 3a531804     	ccmn	w0, #0x13, #0x4, ne
     f24: 54fffde0     	b.eq	0xee0 <zte_power_supply_uevent+0xcc>
     f28: 37f80100     	tbnz	w0, #0x1f, 0xf48 <zte_power_supply_uevent+0x134>
     f2c: aa1503e0     	mov	x0, x21
     f30: 52800141     	mov	w1, #0xa                // =10
     f34: 94000000     	bl	0xf34 <zte_power_supply_uevent+0x120>
		0000000000000f34:  R_AARCH64_CALL26	strchr
     f38: b4fffc80     	cbz	x0, 0xec8 <zte_power_supply_uevent+0xb4>
     f3c: 3900001f     	strb	wzr, [x0]
     f40: 17ffffe2     	b	0xec8 <zte_power_supply_uevent+0xb4>
     f44: 2a1f03e0     	mov	w0, wzr
     f48: aa0003f3     	mov	x19, x0
     f4c: aa1503e0     	mov	x0, x21
     f50: 2a1f03e1     	mov	w1, wzr
     f54: 94000000     	bl	0xf54 <zte_power_supply_uevent+0x140>
		0000000000000f54:  R_AARCH64_CALL26	free_pages
     f58: aa1303e0     	mov	x0, x19
     f5c: 17ffffd3     	b	0xea8 <zte_power_supply_uevent+0x94>
     f60: d4210000     	brk	#0x800
     f64: d5384116     	mrs	x22, SP_EL0
     f68: f9402ad8     	ldr	x24, [x22, #0x50]
     f6c: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000f6c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags
     f70: 91000108     	add	x8, x8, #0x0
		0000000000000f70:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags
     f74: 52819800     	mov	w0, #0xcc0              // =3264
     f78: f9002ac8     	str	x8, [x22, #0x50]
     f7c: 94000000     	bl	0xf7c <zte_power_supply_uevent+0x168>
		0000000000000f7c:  R_AARCH64_CALL26	get_zeroed_page_noprof
     f80: aa0003f5     	mov	x21, x0
     f84: f9002ad8     	str	x24, [x22, #0x50]
     f88: b5fff795     	cbnz	x21, 0xe78 <zte_power_supply_uevent+0x64>
     f8c: 12800160     	mov	w0, #-0xc               // =-12
     f90: 17ffffc6     	b	0xea8 <zte_power_supply_uevent+0x94>
