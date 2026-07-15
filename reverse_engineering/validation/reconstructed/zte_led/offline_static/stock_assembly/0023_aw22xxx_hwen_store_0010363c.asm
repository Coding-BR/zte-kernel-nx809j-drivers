
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

000000000000215c <aw22xxx_hwen_store>:
    215c: d503233f     	paciasp
    2160: d10103ff     	sub	sp, sp, #0x40
    2164: a9017bfd     	stp	x29, x30, [sp, #0x10]
    2168: f90013f5     	str	x21, [sp, #0x20]
    216c: a9034ff4     	stp	x20, x19, [sp, #0x30]
    2170: 910043fd     	add	x29, sp, #0x10
    2174: d5384109     	mrs	x9, SP_EL0
    2178: aa0203e8     	mov	x8, x2
    217c: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		000000000000217c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x542
    2180: 91000021     	add	x1, x1, #0x0
		0000000000002180:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x542
    2184: f9438929     	ldr	x9, [x9, #0x710]
    2188: 910013e2     	add	x2, sp, #0x4
    218c: aa0303f3     	mov	x19, x3
    2190: f90007e9     	str	x9, [sp, #0x8]
    2194: f9404c14     	ldr	x20, [x0, #0x98]
    2198: aa0803e0     	mov	x0, x8
    219c: b90007ff     	str	wzr, [sp, #0x4]
    21a0: 94000000     	bl	0x21a0 <aw22xxx_hwen_store+0x44>
		00000000000021a0:  R_AARCH64_CALL26	sscanf
    21a4: 7100041f     	cmp	w0, #0x1
    21a8: 54000281     	b.ne	0x21f8 <aw22xxx_hwen_store+0x9c>
    21ac: b94007e8     	ldr	w8, [sp, #0x4]
    21b0: 7100091f     	cmp	w8, #0x2
    21b4: 54000222     	b.hs	0x21f8 <aw22xxx_hwen_store+0x9c>
    21b8: 7100051f     	cmp	w8, #0x1
    21bc: d1004280     	sub	x0, x20, #0x10
    21c0: 540002c1     	b.ne	0x2218 <aw22xxx_hwen_store+0xbc>
    21c4: 97fffb09     	bl	0xde8 <aw22xxx_hw_reset>
    21c8: d5384108     	mrs	x8, SP_EL0
    21cc: f9438908     	ldr	x8, [x8, #0x710]
    21d0: f94007e9     	ldr	x9, [sp, #0x8]
    21d4: eb09011f     	cmp	x8, x9
    21d8: 54000521     	b.ne	0x227c <aw22xxx_hwen_store+0x120>
    21dc: aa1303e0     	mov	x0, x19
    21e0: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    21e4: f94013f5     	ldr	x21, [sp, #0x20]
    21e8: a9417bfd     	ldp	x29, x30, [sp, #0x10]
    21ec: 910103ff     	add	sp, sp, #0x40
    21f0: d50323bf     	autiasp
    21f4: d65f03c0     	ret
    21f8: 90000000     	adrp	x0, 0x2000 <aw22xxx_reg_show+0xcc>
		00000000000021f8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x508
    21fc: 91000000     	add	x0, x0, #0x0
		00000000000021fc:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x508
    2200: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002200:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x1502
    2204: 91000021     	add	x1, x1, #0x0
		0000000000002204:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x1502
    2208: 5280f722     	mov	w2, #0x7b9              // =1977
    220c: 94000000     	bl	0x220c <aw22xxx_hwen_store+0xb0>
		000000000000220c:  R_AARCH64_CALL26	_printk
    2210: 928002b3     	mov	x19, #-0x16             // =-22
    2214: 17ffffed     	b	0x21c8 <aw22xxx_hwen_store+0x6c>
    2218: 90000008     	adrp	x8, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002218:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x8dd
    221c: 91000108     	add	x8, x8, #0x0
		000000000000221c:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x8dd
    2220: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002220:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c1
    2224: 91000021     	add	x1, x1, #0x0
		0000000000002224:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c1
    2228: aa0003f5     	mov	x21, x0
    222c: aa0803e0     	mov	x0, x8
    2230: 94000000     	bl	0x2230 <aw22xxx_hwen_store+0xd4>
		0000000000002230:  R_AARCH64_CALL26	_printk
    2234: b4000175     	cbz	x21, 0x2260 <aw22xxx_hwen_store+0x104>
    2238: b942d280     	ldr	w0, [x20, #0x2d0]
    223c: 37f80120     	tbnz	w0, #0x1f, 0x2260 <aw22xxx_hwen_store+0x104>
    2240: 94000000     	bl	0x2240 <aw22xxx_hwen_store+0xe4>
		0000000000002240:  R_AARCH64_CALL26	gpio_to_desc
    2244: 2a1f03e1     	mov	w1, wzr
    2248: 94000000     	bl	0x2248 <aw22xxx_hwen_store+0xec>
		0000000000002248:  R_AARCH64_CALL26	gpiod_set_raw_value_cansleep
    224c: 52807d00     	mov	w0, #0x3e8              // =1000
    2250: 5280bb81     	mov	w1, #0x5dc              // =1500
    2254: 52800042     	mov	w2, #0x2                // =2
    2258: 94000000     	bl	0x2258 <aw22xxx_hwen_store+0xfc>
		0000000000002258:  R_AARCH64_CALL26	usleep_range_state
    225c: 17ffffdb     	b	0x21c8 <aw22xxx_hwen_store+0x6c>
    2260: f85f8280     	ldur	x0, [x20, #-0x8]
    2264: 90000001     	adrp	x1, 0x2000 <aw22xxx_reg_show+0xcc>
		0000000000002264:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x833
    2268: 91000021     	add	x1, x1, #0x0
		0000000000002268:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x833
    226c: 90000002     	adrp	x2, 0x2000 <aw22xxx_reg_show+0xcc>
		000000000000226c:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x5c1
    2270: 91000042     	add	x2, x2, #0x0
		0000000000002270:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x5c1
    2274: 94000000     	bl	0x2274 <aw22xxx_hwen_store+0x118>
		0000000000002274:  R_AARCH64_CALL26	_dev_err
    2278: 17ffffd4     	b	0x21c8 <aw22xxx_hwen_store+0x6c>
    227c: 94000000     	bl	0x227c <aw22xxx_hwen_store+0x120>
		000000000000227c:  R_AARCH64_CALL26	__stack_chk_fail
