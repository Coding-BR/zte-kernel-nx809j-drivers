
/input/haptic_86938.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000bb0c <richtap_file_mmap>:
    bb0c: d503233f     	paciasp
    bb10: a9bd7bfd     	stp	x29, x30, [sp, #-0x30]!
    bb14: f9000bf5     	str	x21, [sp, #0x10]
    bb18: a9024ff4     	stp	x20, x19, [sp, #0x20]
    bb1c: 910003fd     	mov	x29, sp
    bb20: f9401014     	ldr	x20, [x0, #0x20]
    bb24: 14000037     	b	0xbc00 <richtap_file_mmap+0xf4>
    bb28: d503201f     	nop
    bb2c: d503201f     	nop
    bb30: d503201f     	nop
    bb34: aa0103f3     	mov	x19, x1
    bb38: b4000621     	cbz	x1, 0xbbfc <richtap_file_mmap+0xf0>
    bb3c: d5384108     	mrs	x8, SP_EL0
    bb40: 52801f69     	mov	w9, #0xfb               // =251
    bb44: f9400e75     	ldr	x21, [x19, #0x18]
    bb48: f9434508     	ldr	x8, [x8, #0x688]
    bb4c: f9409508     	ldr	x8, [x8, #0x128]
    bb50: aa090100     	orr	x0, x8, x9
    bb54: 94000000     	bl	0xbb54 <richtap_file_mmap+0x48>
		000000000000bb54:  R_AARCH64_CALL26	vm_get_page_prot
    bb58: eb0002bf     	cmp	x21, x0
    bb5c: 54000401     	b.ne	0xbbdc <richtap_file_mmap+0xd0>
    bb60: a9402261     	ldp	x1, x8, [x19]
    bb64: cb010108     	sub	x8, x8, x1
    bb68: f140111f     	cmp	x8, #0x4, lsl #12       // =0x4000
    bb6c: 540003c1     	b.ne	0xbbe4 <richtap_file_mmap+0xd8>
    bb70: f9430a88     	ldr	x8, [x20, #0x610]
    bb74: d2c01009     	mov	x9, #0x8000000000       // =549755813888
    bb78: 9000000a     	adrp	x10, 0xb000 <audio_work_routine+0xd0>
		000000000000bb78:  R_AARCH64_ADR_PREL_PG_HI21	memstart_addr
    bb7c: 9000000b     	adrp	x11, 0xb000 <audio_work_routine+0xd0>
		000000000000bb7c:  R_AARCH64_ADR_PREL_PG_HI21	kimage_voffset
    bb80: f940014a     	ldr	x10, [x10]
		000000000000bb80:  R_AARCH64_LDST64_ABS_LO12_NC	memstart_addr
    bb84: f9400e64     	ldr	x4, [x19, #0x18]
    bb88: 9340dd08     	sbfx	x8, x8, #0, #56
    bb8c: f940016b     	ldr	x11, [x11]
		000000000000bb8c:  R_AARCH64_LDST64_ABS_LO12_NC	kimage_voffset
    bb90: aa1303e0     	mov	x0, x19
    bb94: 52880003     	mov	w3, #0x4000             // =16384
    bb98: 8b090109     	add	x9, x8, x9
    bb9c: cb0b0108     	sub	x8, x8, x11
    bba0: d366fd2c     	lsr	x12, x9, #38
    bba4: 8b0a0129     	add	x9, x9, x10
    bba8: f100019f     	cmp	x12, #0x0
    bbac: 9a880128     	csel	x8, x9, x8, eq
    bbb0: d34cfd02     	lsr	x2, x8, #12
    bbb4: 94000000     	bl	0xbbb4 <richtap_file_mmap+0xa8>
		000000000000bbb4:  R_AARCH64_CALL26	remap_pfn_range
    bbb8: 34000180     	cbz	w0, 0xbbe8 <richtap_file_mmap+0xdc>
    bbbc: f9419288     	ldr	x8, [x20, #0x320]
    bbc0: 90000001     	adrp	x1, 0xb000 <audio_work_routine+0xd0>
		000000000000bbc0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1ba5
    bbc4: 91000021     	add	x1, x1, #0x0
		000000000000bbc4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1ba5
    bbc8: 2a0003f3     	mov	w19, w0
    bbcc: aa0803e0     	mov	x0, x8
    bbd0: 94000000     	bl	0xbbd0 <richtap_file_mmap+0xc4>
		000000000000bbd0:  R_AARCH64_CALL26	_dev_err
    bbd4: 2a1303e0     	mov	w0, w19
    bbd8: 14000004     	b	0xbbe8 <richtap_file_mmap+0xdc>
    bbdc: 12800000     	mov	w0, #-0x1               // =-1
    bbe0: 14000002     	b	0xbbe8 <richtap_file_mmap+0xdc>
    bbe4: 12800160     	mov	w0, #-0xc               // =-12
    bbe8: a9424ff4     	ldp	x20, x19, [sp, #0x20]
    bbec: f9400bf5     	ldr	x21, [sp, #0x10]
    bbf0: a8c37bfd     	ldp	x29, x30, [sp], #0x30
    bbf4: d50323bf     	autiasp
    bbf8: d65f03c0     	ret
    bbfc: d4200020     	brk	#0x1
    bc00: d4210000     	brk	#0x800
