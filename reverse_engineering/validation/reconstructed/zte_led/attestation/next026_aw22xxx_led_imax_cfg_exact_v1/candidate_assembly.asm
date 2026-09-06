
/input/zte_led.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000000fec <aw22xxx_led_imax_cfg>:
     fec: d503233f     	paciasp
     ff0: a9be7bfd     	stp	x29, x30, [sp, #-0x20]!
     ff4: a9014ff4     	stp	x20, x19, [sp, #0x10]
     ff8: 910003fd     	mov	x29, sp
     ffc: 52801fe1     	mov	w1, #0xff               // =255
    1000: 2a1f03e2     	mov	w2, wzr
    1004: aa0003f3     	mov	x19, x0
    1008: 94000000     	bl	0x1008 <aw22xxx_led_imax_cfg+0x1c>
		0000000000001008:  R_AARCH64_CALL26	aw22xxx_i2c_write
    100c: aa1303e0     	mov	x0, x19
    1010: 52800161     	mov	w1, #0xb                // =11
    1014: 528000e2     	mov	w2, #0x7                // =7
    1018: 528000f4     	mov	w20, #0x7               // =7
    101c: 94000000     	bl	0x101c <aw22xxx_led_imax_cfg+0x30>
		000000000000101c:  R_AARCH64_CALL26	aw22xxx_i2c_write
    1020: 90000008     	adrp	x8, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001020:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_bss_base+0x61c0
    1024: b9430269     	ldr	w9, [x19, #0x300]
    1028: b902f274     	str	w20, [x19, #0x2f0]
    102c: f9400108     	ldr	x8, [x8]
		000000000000102c:  R_AARCH64_LDST64_ABS_LO12_NC	aw22xxx_exact_bss_base+0x61c0
    1030: 90000000     	adrp	x0, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001030:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x6f4
    1034: 91000000     	add	x0, x0, #0x0
		0000000000001034:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x6f4
    1038: 90000001     	adrp	x1, 0x1000 <aw22xxx_led_imax_cfg+0x14>
		0000000000001038:  R_AARCH64_ADR_PREL_PG_HI21	aw22xxx_exact_rodata_str_base+0x196
    103c: 91000021     	add	x1, x1, #0x0
		000000000000103c:  R_AARCH64_ADD_ABS_LO12_NC	aw22xxx_exact_rodata_str_base+0x196
    1040: 528000e3     	mov	w3, #0x7                // =7
    1044: f8697902     	ldr	x2, [x8, x9, lsl #3]
    1048: 94000000     	bl	0x1048 <aw22xxx_led_imax_cfg+0x5c>
		0000000000001048:  R_AARCH64_CALL26	_printk
    104c: a9414ff4     	ldp	x20, x19, [sp, #0x10]
    1050: a8c27bfd     	ldp	x29, x30, [sp], #0x20
    1054: d50323bf     	autiasp
    1058: d65f03c0     	ret
