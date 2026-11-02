
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000a800 <awrw_store>:
    a800: d503233f     	paciasp
    a804: d10243ff     	sub	sp, sp, #0x90
    a808: a9057bfd     	stp	x29, x30, [sp, #0x50]
    a80c: a9065ff8     	stp	x24, x23, [sp, #0x60]
    a810: a90757f6     	stp	x22, x21, [sp, #0x70]
    a814: a9084ff4     	stp	x20, x19, [sp, #0x80]
    a818: 910143fd     	add	x29, sp, #0x50
    a81c: d5384108     	mrs	x8, SP_EL0
    a820: aa0203f4     	mov	x20, x2
    a824: aa0303f3     	mov	x19, x3
    a828: f9438908     	ldr	x8, [x8, #0x710]
    a82c: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000a82c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x485
    a830: 91000021     	add	x1, x1, #0x0
		000000000000a830:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x485
    a834: 910053e2     	add	x2, sp, #0x14
    a838: 910043e3     	add	x3, sp, #0x10
    a83c: 910033e4     	add	x4, sp, #0xc
    a840: f81f83a8     	stur	x8, [x29, #-0x8]
    a844: f9404c16     	ldr	x22, [x0, #0x98]
    a848: aa1403e0     	mov	x0, x20
    a84c: 390063ff     	strb	wzr, [sp, #0x18]
    a850: 390093ff     	strb	wzr, [sp, #0x24]
    a854: b90023ff     	str	wzr, [sp, #0x20]
    a858: f9000bff     	str	xzr, [sp, #0x10]
    a85c: b9000fff     	str	wzr, [sp, #0xc]
    a860: 94000000     	bl	0xa860 <awrw_store+0x60>
		000000000000a860:  R_AARCH64_CALL26	sscanf
    a864: 71000c1f     	cmp	w0, #0x3
    a868: 54000fa1     	b.ne	0xaa5c <awrw_store+0x25c>
    a86c: b94013e8     	ldr	w8, [sp, #0x10]
    a870: 34001088     	cbz	w8, 0xaa80 <awrw_store+0x280>
    a874: b94017e9     	ldr	w9, [sp, #0x14]
    a878: f9429ac0     	ldr	x0, [x22, #0x530]
    a87c: b9052ec8     	str	w8, [x22, #0x52c]
    a880: b9052ac9     	str	w9, [x22, #0x528]
    a884: b4000040     	cbz	x0, 0xa88c <awrw_store+0x8c>
    a888: 94000000     	bl	0xa888 <awrw_store+0x88>
		000000000000a888:  R_AARCH64_CALL26	kfree
    a88c: d102a2d5     	sub	x21, x22, #0xa8
    a890: d503201f     	nop
    a894: b94013e0     	ldr	w0, [sp, #0x10]
    a898: 52819801     	mov	w1, #0xcc0              // =3264
    a89c: 94000000     	bl	0xa89c <awrw_store+0x9c>
		000000000000a89c:  R_AARCH64_CALL26	__kmalloc_noprof
    a8a0: b94017e8     	ldr	w8, [sp, #0x14]
    a8a4: f9029ac0     	str	x0, [x22, #0x530]
    a8a8: 7100051f     	cmp	w8, #0x1
    a8ac: 54000460     	b.eq	0xa938 <awrw_store+0x138>
    a8b0: 35000bc8     	cbnz	w8, 0xaa28 <awrw_store+0x228>
    a8b4: b94013f7     	ldr	w23, [sp, #0x10]
    a8b8: aa1403e0     	mov	x0, x20
    a8bc: 0b170af8     	add	w24, w23, w23, lsl #2
    a8c0: 94000000     	bl	0xa8c0 <awrw_store+0xc0>
		000000000000a8c0:  R_AARCH64_CALL26	strlen
    a8c4: d1003c08     	sub	x8, x0, #0xf
    a8c8: eb18011f     	cmp	x8, x24
    a8cc: 54000ea1     	b.ne	0xaaa0 <awrw_store+0x2a0>
    a8d0: 34000277     	cbz	w23, 0xa91c <awrw_store+0x11c>
    a8d4: 2a1f03f7     	mov	w23, wzr
    a8d8: 528001f8     	mov	w24, #0xf               // =15
    a8dc: b878ca88     	ldr	w8, [x20, w24, sxtw]
    a8e0: 910083e0     	add	x0, sp, #0x20
    a8e4: 910063e2     	add	x2, sp, #0x18
    a8e8: 2a1f03e1     	mov	w1, wzr
    a8ec: 390093ff     	strb	wzr, [sp, #0x24]
    a8f0: b90023e8     	str	w8, [sp, #0x20]
    a8f4: 94000000     	bl	0xa8f4 <awrw_store+0xf4>
		000000000000a8f4:  R_AARCH64_CALL26	kstrtou8
    a8f8: 37f81060     	tbnz	w0, #0x1f, 0xab04 <awrw_store+0x304>
    a8fc: f9429ac8     	ldr	x8, [x22, #0x530]
    a900: 394063e9     	ldrb	w9, [sp, #0x18]
    a904: 11001718     	add	w24, w24, #0x5
    a908: 3837c909     	strb	w9, [x8, w23, sxtw]
    a90c: 110006f7     	add	w23, w23, #0x1
    a910: b94013e8     	ldr	w8, [sp, #0x10]
    a914: 6b0802ff     	cmp	w23, w8
    a918: 54fffe23     	b.lo	0xa8dc <awrw_store+0xdc>
    a91c: 910922c0     	add	x0, x22, #0x248
    a920: 94000000     	bl	0xa920 <awrw_store+0x120>
		000000000000a920:  R_AARCH64_CALL26	mutex_lock
    a924: 29418fe1     	ldp	w1, w3, [sp, #0xc]
    a928: f9429ac2     	ldr	x2, [x22, #0x530]
    a92c: aa1503e0     	mov	x0, x21
    a930: 94000000     	bl	0xa930 <awrw_store+0x130>
		000000000000a930:  R_AARCH64_CALL26	i2c_w_bytes
    a934: 1400003b     	b	0xaa20 <awrw_store+0x220>
    a938: 910922c0     	add	x0, x22, #0x248
    a93c: 94000000     	bl	0xa93c <awrw_store+0x13c>
		000000000000a93c:  R_AARCH64_CALL26	mutex_lock
    a940: f94292c8     	ldr	x8, [x22, #0x520]
    a944: aa1503e0     	mov	x0, x21
    a948: f9401d08     	ldr	x8, [x8, #0x38]
    a94c: b85fc110     	ldur	w16, [x8, #-0x4]
    a950: 72810611     	movk	w17, #0x830
    a954: 72b08f51     	movk	w17, #0x847a, lsl #16
    a958: 6b11021f     	cmp	w16, w17
    a95c: 54000040     	b.eq	0xa964 <awrw_store+0x164>
    a960: d4304500     	brk	#0x8228
    a964: d63f0100     	blr	x8
    a968: f94292c8     	ldr	x8, [x22, #0x520]
    a96c: aa1503e0     	mov	x0, x21
    a970: 2a1f03e1     	mov	w1, wzr
    a974: f9408908     	ldr	x8, [x8, #0x110]
    a978: b85fc110     	ldur	w16, [x8, #-0x4]
    a97c: 729bedd1     	movk	w17, #0xdf6e
    a980: 72a3a151     	movk	w17, #0x1d0a, lsl #16
    a984: 6b11021f     	cmp	w16, w17
    a988: 54000040     	b.eq	0xa990 <awrw_store+0x190>
    a98c: d4304500     	brk	#0x8228
    a990: d63f0100     	blr	x8
    a994: f94292c8     	ldr	x8, [x22, #0x520]
    a998: aa1503e0     	mov	x0, x21
    a99c: f9407908     	ldr	x8, [x8, #0xf0]
    a9a0: b85fc110     	ldur	w16, [x8, #-0x4]
    a9a4: 72810611     	movk	w17, #0x830
    a9a8: 72b08f51     	movk	w17, #0x847a, lsl #16
    a9ac: 6b11021f     	cmp	w16, w17
    a9b0: 54000040     	b.eq	0xa9b8 <awrw_store+0x1b8>
    a9b4: d4304500     	brk	#0x8228
    a9b8: d63f0100     	blr	x8
    a9bc: b9400fe8     	ldr	w8, [sp, #0xc]
    a9c0: f94142c9     	ldr	x9, [x22, #0x280]
    a9c4: 52a0002a     	mov	w10, #0x10000           // =65536
    a9c8: 9100a3e1     	add	x1, sp, #0x28
    a9cc: 52800042     	mov	w2, #0x2                // =2
    a9d0: 390073e8     	strb	w8, [sp, #0x1c]
    a9d4: f9429ac8     	ldr	x8, [x22, #0x530]
    a9d8: 7940052b     	ldrh	w11, [x9, #0x2]
    a9dc: b802a3ea     	stur	w10, [sp, #0x2a]
    a9e0: 910073ea     	add	x10, sp, #0x1c
    a9e4: f90023e8     	str	x8, [sp, #0x40]
    a9e8: 790053eb     	strh	w11, [sp, #0x28]
    a9ec: f9400d20     	ldr	x0, [x9, #0x18]
    a9f0: 790073eb     	strh	w11, [sp, #0x38]
    a9f4: b94013eb     	ldr	w11, [sp, #0x10]
    a9f8: f9001bea     	str	x10, [sp, #0x30]
    a9fc: 5280002a     	mov	w10, #0x1               // =1
    aa00: 79005fff     	strh	wzr, [sp, #0x2e]
    aa04: 790077ea     	strh	w10, [sp, #0x3a]
    aa08: 79007beb     	strh	w11, [sp, #0x3c]
    aa0c: 79007fff     	strh	wzr, [sp, #0x3e]
    aa10: 94000000     	bl	0xaa10 <awrw_store+0x210>
		000000000000aa10:  R_AARCH64_CALL26	i2c_transfer
    aa14: 37f80560     	tbnz	w0, #0x1f, 0xaac0 <awrw_store+0x2c0>
    aa18: 7100081f     	cmp	w0, #0x2
    aa1c: 54000621     	b.ne	0xaae0 <awrw_store+0x2e0>
    aa20: 910922c0     	add	x0, x22, #0x248
    aa24: 94000000     	bl	0xaa24 <awrw_store+0x224>
		000000000000aa24:  R_AARCH64_CALL26	mutex_unlock
    aa28: d5384108     	mrs	x8, SP_EL0
    aa2c: f9438908     	ldr	x8, [x8, #0x710]
    aa30: f85f83a9     	ldur	x9, [x29, #-0x8]
    aa34: eb09011f     	cmp	x8, x9
    aa38: 540007a1     	b.ne	0xab2c <awrw_store+0x32c>
    aa3c: aa1303e0     	mov	x0, x19
    aa40: a9484ff4     	ldp	x20, x19, [sp, #0x80]
    aa44: a94757f6     	ldp	x22, x21, [sp, #0x70]
    aa48: a9465ff8     	ldp	x24, x23, [sp, #0x60]
    aa4c: a9457bfd     	ldp	x29, x30, [sp, #0x50]
    aa50: 910243ff     	add	sp, sp, #0x90
    aa54: d50323bf     	autiasp
    aa58: d65f03c0     	ret
    aa5c: 90000000     	adrp	x0, 0xa000 <haptic_audio_store+0x84>
		000000000000aa5c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e92
    aa60: 91000000     	add	x0, x0, #0x0
		000000000000aa60:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e92
    aa64: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000aa64:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    aa68: 91000021     	add	x1, x1, #0x0
		000000000000aa68:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    aa6c: 90000003     	adrp	x3, 0xa000 <haptic_audio_store+0x84>
		000000000000aa6c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b9a
    aa70: 91000063     	add	x3, x3, #0x0
		000000000000aa70:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b9a
    aa74: 52819282     	mov	w2, #0xc94              // =3220
    aa78: 94000000     	bl	0xaa78 <awrw_store+0x278>
		000000000000aa78:  R_AARCH64_CALL26	_printk
    aa7c: 17ffffeb     	b	0xaa28 <awrw_store+0x228>
    aa80: 90000000     	adrp	x0, 0xa000 <haptic_audio_store+0x84>
		000000000000aa80:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e92
    aa84: 91000000     	add	x0, x0, #0x0
		000000000000aa84:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e92
    aa88: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000aa88:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    aa8c: 91000021     	add	x1, x1, #0x0
		000000000000aa8c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    aa90: 90000003     	adrp	x3, 0xa000 <haptic_audio_store+0x84>
		000000000000aa90:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b9a
    aa94: 91000063     	add	x3, x3, #0x0
		000000000000aa94:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b9a
    aa98: 52818de2     	mov	w2, #0xc6f              // =3183
    aa9c: 14000021     	b	0xab20 <awrw_store+0x320>
    aaa0: 90000000     	adrp	x0, 0xa000 <haptic_audio_store+0x84>
		000000000000aaa0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e92
    aaa4: 91000000     	add	x0, x0, #0x0
		000000000000aaa4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e92
    aaa8: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000aaa8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    aaac: 91000021     	add	x1, x1, #0x0
		000000000000aaac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    aab0: 90000003     	adrp	x3, 0xa000 <haptic_audio_store+0x84>
		000000000000aab0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b9a
    aab4: 91000063     	add	x3, x3, #0x0
		000000000000aab4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b9a
    aab8: 52818f22     	mov	w2, #0xc79              // =3193
    aabc: 14000019     	b	0xab20 <awrw_store+0x320>
    aac0: 90000000     	adrp	x0, 0xa000 <haptic_audio_store+0x84>
		000000000000aac0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x905
    aac4: 91000000     	add	x0, x0, #0x0
		000000000000aac4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x905
    aac8: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000aac8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    aacc: 91000021     	add	x1, x1, #0x0
		000000000000aacc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    aad0: 90000003     	adrp	x3, 0xa000 <haptic_audio_store+0x84>
		000000000000aad0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaaa
    aad4: 91000063     	add	x3, x3, #0x0
		000000000000aad4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaaa
    aad8: 52800ca2     	mov	w2, #0x65               // =101
    aadc: 14000008     	b	0xaafc <awrw_store+0x2fc>
    aae0: 90000000     	adrp	x0, 0xa000 <haptic_audio_store+0x84>
		000000000000aae0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x162e
    aae4: 91000000     	add	x0, x0, #0x0
		000000000000aae4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x162e
    aae8: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000aae8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    aaec: 91000021     	add	x1, x1, #0x0
		000000000000aaec:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    aaf0: 90000003     	adrp	x3, 0xa000 <haptic_audio_store+0x84>
		000000000000aaf0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xaaa
    aaf4: 91000063     	add	x3, x3, #0x0
		000000000000aaf4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xaaa
    aaf8: 52800d02     	mov	w2, #0x68               // =104
    aafc: 94000000     	bl	0xaafc <awrw_store+0x2fc>
		000000000000aafc:  R_AARCH64_CALL26	_printk
    ab00: 17ffffc8     	b	0xaa20 <awrw_store+0x220>
    ab04: 90000000     	adrp	x0, 0xa000 <haptic_audio_store+0x84>
		000000000000ab04:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1e92
    ab08: 91000000     	add	x0, x0, #0x0
		000000000000ab08:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1e92
    ab0c: 90000001     	adrp	x1, 0xa000 <haptic_audio_store+0x84>
		000000000000ab0c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1
    ab10: 91000021     	add	x1, x1, #0x0
		000000000000ab10:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1
    ab14: 90000003     	adrp	x3, 0xa000 <haptic_audio_store+0x84>
		000000000000ab14:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1b9a
    ab18: 91000063     	add	x3, x3, #0x0
		000000000000ab18:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1b9a
    ab1c: 52819022     	mov	w2, #0xc81              // =3201
    ab20: 94000000     	bl	0xab20 <awrw_store+0x320>
		000000000000ab20:  R_AARCH64_CALL26	_printk
    ab24: 92800433     	mov	x19, #-0x22             // =-34
    ab28: 17ffffc0     	b	0xaa28 <awrw_store+0x228>
    ab2c: 94000000     	bl	0xab2c <awrw_store+0x32c>
		000000000000ab2c:  R_AARCH64_CALL26	__stack_chk_fail
    ab30: b94013e0     	ldr	w0, [sp, #0x10]
    ab34: d5384117     	mrs	x23, SP_EL0
    ab38: f9402af8     	ldr	x24, [x23, #0x50]
    ab3c: 90000008     	adrp	x8, 0xa000 <haptic_audio_store+0x84>
		000000000000ab3c:  R_AARCH64_ADR_PREL_PG_HI21	.codetag.alloc_tags+0x118
    ab40: 91000108     	add	x8, x8, #0x0
		000000000000ab40:  R_AARCH64_ADD_ABS_LO12_NC	.codetag.alloc_tags+0x118
    ab44: 52819801     	mov	w1, #0xcc0              // =3264
    ab48: f9002ae8     	str	x8, [x23, #0x50]
    ab4c: 94000000     	bl	0xab4c <awrw_store+0x34c>
		000000000000ab4c:  R_AARCH64_CALL26	__kmalloc_noprof
    ab50: f9002af8     	str	x24, [x23, #0x50]
    ab54: 17ffff53     	b	0xa8a0 <awrw_store+0xa0>
