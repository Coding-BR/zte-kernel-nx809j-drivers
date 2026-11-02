
/input/zte_power_supply.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001f1c <zte_power_supply_uevent>:
    1f1c: d503233f     	paciasp
    1f20: a9ba7bfd     	stp	x29, x30, [sp, #-0x60]!
    1f24: a9016ffc     	stp	x28, x27, [sp, #0x10]
    1f28: a90267fa     	stp	x26, x25, [sp, #0x20]
    1f2c: a9035ff8     	stp	x24, x23, [sp, #0x30]
    1f30: a90457f6     	stp	x22, x21, [sp, #0x40]
    1f34: a9054ff4     	stp	x20, x19, [sp, #0x50]
    1f38: 910003fd     	mov	x29, sp
    1f3c: f9404c17     	ldr	x23, [x0, #0x98]
    1f40: b4000797     	cbz	x23, 0x2030 <zte_power_supply_uevent+0x114>
    1f44: f94002e8     	ldr	x8, [x23]
    1f48: b4000748     	cbz	x8, 0x2030 <zte_power_supply_uevent+0x114>
    1f4c: aa0103f4     	mov	x20, x1
    1f50: f9400102     	ldr	x2, [x8]
    1f54: aa0003f3     	mov	x19, x0
    1f58: 90000001     	adrp	x1, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001f58:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5e4
    1f5c: 91000021     	add	x1, x1, #0x0
		0000000000001f5c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5e4
    1f60: aa1403e0     	mov	x0, x20
    1f64: 94000000     	bl	0x1f64 <zte_power_supply_uevent+0x48>
		0000000000001f64:  R_AARCH64_CALL26	add_uevent_var
    1f68: 35000660     	cbnz	w0, 0x2034 <zte_power_supply_uevent+0x118>
    1f6c: d503201f     	nop
    1f70: 52819800     	mov	w0, #0xcc0              // =3264
    1f74: 94000000     	bl	0x1f74 <zte_power_supply_uevent+0x58>
		0000000000001f74:  R_AARCH64_CALL26	get_zeroed_page_noprof
    1f78: aa0003f5     	mov	x21, x0
    1f7c: b4000935     	cbz	x21, 0x20a0 <zte_power_supply_uevent+0x184>
    1f80: f94002e8     	ldr	x8, [x23]
    1f84: f9401509     	ldr	x9, [x8, #0x28]
    1f88: b4000669     	cbz	x9, 0x2054 <zte_power_supply_uevent+0x138>
    1f8c: aa1f03e9     	mov	x9, xzr
    1f90: 52800038     	mov	w24, #0x1               // =1
    1f94: 90000019     	adrp	x25, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001f94:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x38
    1f98: 91000339     	add	x25, x25, #0x0
		0000000000001f98:  R_AARCH64_ADD_ABS_LO12_NC	.data+0x38
    1f9c: 52800b1a     	mov	w26, #0x58              // =88
    1fa0: 90000016     	adrp	x22, 0x1000 <zte_power_supply_powers+0x8>
		0000000000001fa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x122
    1fa4: 910002d6     	add	x22, x22, #0x0
		0000000000001fa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x122
    1fa8: 14000007     	b	0x1fc4 <zte_power_supply_uevent+0xa8>
    1fac: f94002e8     	ldr	x8, [x23]
    1fb0: 93407f09     	sxtw	x9, w24
    1fb4: 11000718     	add	w24, w24, #0x1
    1fb8: f940150a     	ldr	x10, [x8, #0x28]
    1fbc: eb09015f     	cmp	x10, x9
    1fc0: 540004a9     	b.ls	0x2054 <zte_power_supply_uevent+0x138>
    1fc4: f9401108     	ldr	x8, [x8, #0x20]
    1fc8: b869791b     	ldr	w27, [x8, x9, lsl #2]
    1fcc: 7100537f     	cmp	w27, #0x14
    1fd0: 54000502     	b.hs	0x2070 <zte_power_supply_uevent+0x154>
    1fd4: 9bba677c     	umaddl	x28, w27, w26, x25
    1fd8: aa1303e0     	mov	x0, x19
    1fdc: aa1503e2     	mov	x2, x21
    1fe0: 9100a381     	add	x1, x28, #0x28
    1fe4: 97ffff37     	bl	0x1cc0 <zte_power_supply_show_property>
    1fe8: 3100f41f     	cmn	w0, #0x3d
    1fec: 3a531804     	ccmn	w0, #0x13, #0x4, ne
    1ff0: 54fffde0     	b.eq	0x1fac <zte_power_supply_uevent+0x90>
    1ff4: 37f80320     	tbnz	w0, #0x1f, 0x2058 <zte_power_supply_uevent+0x13c>
    1ff8: aa1503e0     	mov	x0, x21
    1ffc: 52800141     	mov	w1, #0xa                // =10
    2000: 94000000     	bl	0x2000 <zte_power_supply_uevent+0xe4>
		0000000000002000:  R_AARCH64_CALL26	strchr
    2004: b4000040     	cbz	x0, 0x200c <zte_power_supply_uevent+0xf0>
    2008: 3900001f     	strb	wzr, [x0]
    200c: 71004f7f     	cmp	w27, #0x13
    2010: 54000320     	b.eq	0x2074 <zte_power_supply_uevent+0x158>
    2014: f9400382     	ldr	x2, [x28]
    2018: aa1403e0     	mov	x0, x20
    201c: aa1603e1     	mov	x1, x22
    2020: aa1503e3     	mov	x3, x21
    2024: 94000000     	bl	0x2024 <zte_power_supply_uevent+0x108>
		0000000000002024:  R_AARCH64_CALL26	add_uevent_var
    2028: 34fffc20     	cbz	w0, 0x1fac <zte_power_supply_uevent+0x90>
    202c: 1400000b     	b	0x2058 <zte_power_supply_uevent+0x13c>
    2030: 2a1f03e0     	mov	w0, wzr
    2034: a9454ff4     	ldp	x20, x19, [sp, #0x50]
    2038: a94457f6     	ldp	x22, x21, [sp, #0x40]
    203c: a9435ff8     	ldp	x24, x23, [sp, #0x30]
    2040: a94267fa     	ldp	x26, x25, [sp, #0x20]
    2044: a9416ffc     	ldp	x28, x27, [sp, #0x10]
    2048: a8c67bfd     	ldp	x29, x30, [sp], #0x60
    204c: d50323bf     	autiasp
    2050: d65f03c0     	ret
    2054: 2a1f03e0     	mov	w0, wzr
    2058: aa0003f3     	mov	x19, x0
    205c: aa1503e0     	mov	x0, x21
    2060: 2a1f03e1     	mov	w1, wzr
    2064: 94000000     	bl	0x2064 <zte_power_supply_uevent+0x148>
		0000000000002064:  R_AARCH64_CALL26	free_pages
    2068: aa1303e0     	mov	x0, x19
    206c: 17fffff2     	b	0x2034 <zte_power_supply_uevent+0x118>
    2070: d42aa240     	brk	#0x5512
    2074: d4200020     	brk	#0x1
    2078: d5384116     	mrs	x22, SP_EL0
    207c: f9402ad8     	ldr	x24, [x22, #0x50]
    2080: 90000008     	adrp	x8, 0x2000 <zte_power_supply_uevent+0xe4>
		0000000000002080:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x28
    2084: 91000108     	add	x8, x8, #0x0
		0000000000002084:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x28
    2088: 52819800     	mov	w0, #0xcc0              // =3264
    208c: f9002ac8     	str	x8, [x22, #0x50]
    2090: 94000000     	bl	0x2090 <zte_power_supply_uevent+0x174>
		0000000000002090:  R_AARCH64_CALL26	get_zeroed_page_noprof
    2094: aa0003f5     	mov	x21, x0
    2098: f9002ad8     	str	x24, [x22, #0x50]
    209c: b5fff735     	cbnz	x21, 0x1f80 <zte_power_supply_uevent+0x64>
    20a0: 12800160     	mov	w0, #-0xc               // =-12
    20a4: 17ffffe4     	b	0x2034 <zte_power_supply_uevent+0x118>
