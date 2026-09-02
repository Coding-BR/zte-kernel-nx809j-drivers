
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001910 <aw22xxx_fw_init>:
    1910: d503233f     	paciasp
    1914: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
    1918: f9000bf3     	str	x19, [sp, #0x10]
    191c: 910003fd     	mov	x29, sp
    1920: aa0003f3     	mov	x19, x0
    1924: 9109c000     	add	x0, x0, #0x270
    1928: 52800021     	mov	w1, #0x1                // =1
    192c: 52800022     	mov	w2, #0x1                // =1
    1930: 94000000     	bl	0x1930 <aw22xxx_fw_init+0x20>
		0000000000001930:  R_AARCH64_CALL26	hrtimer_init
    1934: 90000008     	adrp	x8, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001934:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x3d08
    1938: 91000108     	add	x8, x8, #0x0
		0000000000001938:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x3d08
    193c: 91086269     	add	x9, x19, #0x218
    1940: f9014e68     	str	x8, [x19, #0x298]
    1944: b26b7be8     	mov	x8, #0xfffffffe00000    // =4503599625273344
    1948: f9010a68     	str	x8, [x19, #0x210]
    194c: f9010e69     	str	x9, [x19, #0x218]
    1950: f9011269     	str	x9, [x19, #0x220]
    1954: 90000009     	adrp	x9, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001954:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x3d5c
    1958: 91000129     	add	x9, x9, #0x0
		0000000000001958:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x3d5c
    195c: f9011669     	str	x9, [x19, #0x228]
    1960: 9108e269     	add	x9, x19, #0x238
    1964: f9011a68     	str	x8, [x19, #0x230]
    1968: f9011e69     	str	x9, [x19, #0x238]
    196c: f9012269     	str	x9, [x19, #0x240]
    1970: 90000009     	adrp	x9, 0x1000 <aw22xxx_read_chipid+0x17c>
		0000000000001970:  R_AARCH64_ADR_PREL_PG_HI21	.data+0x370
    1974: b9400129     	ldr	w9, [x9]
		0000000000001974:  R_AARCH64_LDST32_ABS_LO12_NC	.data+0x370
    1978: 71002d3f     	cmp	w9, #0xb
    197c: 90000009     	adrp	x9, 0x1000 <aw22xxx_read_chipid+0x17c>
		000000000000197c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x3df0
    1980: 91000129     	add	x9, x9, #0x0
		0000000000001980:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x3df0
    1984: f9012669     	str	x9, [x19, #0x248]
    1988: 54000101     	b.ne	0x19a8 <aw22xxx_fw_init+0x98>
    198c: f9012a68     	str	x8, [x19, #0x250]
    1990: 91096268     	add	x8, x19, #0x258
    1994: f9012e68     	str	x8, [x19, #0x258]
    1998: f9013268     	str	x8, [x19, #0x260]
    199c: 90000008     	adrp	x8, 0x1000 <aw22xxx_read_chipid+0x17c>
		000000000000199c:  R_AARCH64_ADR_PREL_PG_HI21	.text+0x3ed8
    19a0: 91000108     	add	x8, x8, #0x0
		00000000000019a0:  R_AARCH64_ADD_ABS_LO12_NC	.text+0x3ed8
    19a4: f9013668     	str	x8, [x19, #0x268]
    19a8: 90000000     	adrp	x0, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000019a8:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0x42c
    19ac: 91000000     	add	x0, x0, #0x0
		00000000000019ac:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0x42c
    19b0: 90000001     	adrp	x1, 0x1000 <aw22xxx_read_chipid+0x17c>
		00000000000019b0:  R_AARCH64_ADR_PREL_PG_HI21	.rodata.str1.1+0xda2
    19b4: 91000021     	add	x1, x1, #0x0
		00000000000019b4:  R_AARCH64_ADD_ABS_LO12_NC	.rodata.str1.1+0xda2
    19b8: 94000000     	bl	0x19b8 <aw22xxx_fw_init+0xa8>
		00000000000019b8:  R_AARCH64_CALL26	_printk
    19bc: 52994001     	mov	w1, #0xca00             // =51712
    19c0: 9109c260     	add	x0, x19, #0x270
    19c4: aa1f03e2     	mov	x2, xzr
    19c8: 72a77341     	movk	w1, #0x3b9a, lsl #16
    19cc: 52800023     	mov	w3, #0x1                // =1
    19d0: 94000000     	bl	0x19d0 <aw22xxx_fw_init+0xc0>
		00000000000019d0:  R_AARCH64_CALL26	hrtimer_start_range_ns
    19d4: f9400bf3     	ldr	x19, [sp, #0x10]
    19d8: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    19dc: d50323bf     	autiasp
    19e0: d65f03c0     	ret
