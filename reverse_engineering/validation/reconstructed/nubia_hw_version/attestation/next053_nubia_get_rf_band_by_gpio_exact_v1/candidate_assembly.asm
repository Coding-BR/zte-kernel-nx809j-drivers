
/input/nubia_hw_version.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000a9c <nubia_get_rf_band_by_gpio>:
     a9c: aa0003e8     	mov	x8, x0
     aa0: 90000000     	adrp	x0, 0x0 <.text>
		0000000000000aa0:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x3f7
     aa4: 91000000     	add	x0, x0, #0x0
		0000000000000aa4:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x3f7
     aa8: b4000288     	cbz	x8, 0xaf8 <nubia_get_rf_band_by_gpio+0x5c>
     aac: 34000261     	cbz	w1, 0xaf8 <nubia_get_rf_band_by_gpio+0x5c>
     ab0: 90000009     	adrp	x9, 0x0 <.text>
		0000000000000ab0:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio1_v
     ab4: 9000000a     	adrp	x10, 0x0 <.text>
		0000000000000ab4:  R_AARCH64_ADR_PREL_PG_HI21	nubia_rf_gpio2_v
     ab8: 2a0103eb     	mov	w11, w1
     abc: 39400129     	ldrb	w9, [x9]
		0000000000000abc:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio1_v
     ac0: 3940014a     	ldrb	w10, [x10]
		0000000000000ac0:  R_AARCH64_LDST8_ABS_LO12_NC	nubia_rf_gpio2_v
     ac4: 91002100     	add	x0, x8, #0x8
     ac8: 90000008     	adrp	x8, 0x0 <.text>
		0000000000000ac8:  R_AARCH64_ADR_PREL_PG_HI21	nubia_hw_exact_rodata_str_base+0x3f7
     acc: 91000108     	add	x8, x8, #0x0
		0000000000000acc:  R_AARCH64_ADD_ABS_LO12_NC	nubia_hw_exact_rodata_str_base+0x3f7
     ad0: 14000004     	b	0xae0 <nubia_get_rf_band_by_gpio+0x44>
     ad4: f100056b     	subs	x11, x11, #0x1
     ad8: 91005000     	add	x0, x0, #0x14
     adc: 54000100     	b.eq	0xafc <nubia_get_rf_band_by_gpio+0x60>
     ae0: b85f800c     	ldur	w12, [x0, #-0x8]
     ae4: 6b09019f     	cmp	w12, w9
     ae8: 54ffff61     	b.ne	0xad4 <nubia_get_rf_band_by_gpio+0x38>
     aec: b85fc00c     	ldur	w12, [x0, #-0x4]
     af0: 6b0a019f     	cmp	w12, w10
     af4: 54ffff01     	b.ne	0xad4 <nubia_get_rf_band_by_gpio+0x38>
     af8: d65f03c0     	ret
     afc: aa0803e0     	mov	x0, x8
     b00: d65f03c0     	ret
