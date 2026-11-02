
/input/aw9620x.ko:	file format elf64-littleaarch64

Disassembly of section .text:

0000000000001b90 <aw9620x_reg_write_val_to_flash>:
    1b90: d503233f     	paciasp
    1b94: a9bc7bfd     	stp	x29, x30, [sp, #-0x40]!
    1b98: f9000bf7     	str	x23, [sp, #0x10]
    1b9c: a90257f6     	stp	x22, x21, [sp, #0x20]
    1ba0: a9034ff4     	stp	x20, x19, [sp, #0x30]
    1ba4: 910003fd     	mov	x29, sp
    1ba8: 2a0103f5     	mov	w21, w1
    1bac: f9401801     	ldr	x1, [x0, #0x30]
    1bb0: aa0303f6     	mov	x22, x3
    1bb4: 2a0203f4     	mov	w20, w2
    1bb8: aa0003f3     	mov	x19, x0
    1bbc: 529e0237     	mov	w23, #0xf011            // =61457
    1bc0: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001bc0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2c9b
    1bc4: 91000000     	add	x0, x0, #0x0
		0000000000001bc4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2c9b
    1bc8: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001bc8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xebd
    1bcc: 91000042     	add	x2, x2, #0x0
		0000000000001bcc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xebd
    1bd0: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001bd0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x234c
    1bd4: 91000063     	add	x3, x3, #0x0
		0000000000001bd4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x234c
    1bd8: 528094e4     	mov	w4, #0x4a7              // =1191
    1bdc: 72a78017     	movk	w23, #0x3c00, lsl #16
    1be0: 94000000     	bl	0x1be0 <aw9620x_reg_write_val_to_flash+0x50>
		0000000000001be0:  R_AARCH64_CALL26	_dev_printk
    1be4: 394002d6     	ldrb	w22, [x22]
    1be8: 321906e2     	orr	w2, w23, #0x180
    1bec: aa1303e0     	mov	x0, x19
    1bf0: 529fe401     	mov	w1, #0xff20             // =65312
    1bf4: 97ffff07     	bl	0x1810 <aw9620x_i2c_write>
		0000000000001bf4:  R_AARCH64_CALL26	aw9620x_i2c_write
    1bf8: 350004c0     	cbnz	w0, 0x1c90 <aw9620x_reg_write_val_to_flash+0x100>
    1bfc: aa1303e0     	mov	x0, x19
    1c00: 52890401     	mov	w1, #0x4820             // =18464
    1c04: 528000c2     	mov	w2, #0x6                // =6
    1c08: 97ffff02     	bl	0x1810 <aw9620x_i2c_write>
		0000000000001c08:  R_AARCH64_CALL26	aw9620x_i2c_write
    1c0c: 35000460     	cbnz	w0, 0x1c98 <aw9620x_reg_write_val_to_flash+0x108>
    1c10: 350000f6     	cbnz	w22, 0x1c2c <aw9620x_reg_write_val_to_flash+0x9c>
    1c14: 528f2aa2     	mov	w2, #0x7955             // =31061
    1c18: aa1303e0     	mov	x0, x19
    1c1c: 5288f281     	mov	w1, #0x4794             // =18324
    1c20: 72ab4c62     	movk	w2, #0x5a63, lsl #16
    1c24: 97fffefb     	bl	0x1810 <aw9620x_i2c_write>
		0000000000001c24:  R_AARCH64_CALL26	aw9620x_i2c_write
    1c28: 35000600     	cbnz	w0, 0x1ce8 <aw9620x_reg_write_val_to_flash+0x158>
    1c2c: aa1303e0     	mov	x0, x19
    1c30: 2a1503e1     	mov	w1, w21
    1c34: 2a1403e2     	mov	w2, w20
    1c38: 94000b42     	bl	0x4940 <aw9620x_reg_write_to_flash_once>
		0000000000001c38:  R_AARCH64_CALL26	aw9620x_reg_write_to_flash_once
    1c3c: 35000320     	cbnz	w0, 0x1ca0 <aw9620x_reg_write_val_to_flash+0x110>
    1c40: aa1303e0     	mov	x0, x19
    1c44: 52890401     	mov	w1, #0x4820             // =18464
    1c48: 52800082     	mov	w2, #0x4                // =4
    1c4c: 97fffef1     	bl	0x1810 <aw9620x_i2c_write>
		0000000000001c4c:  R_AARCH64_CALL26	aw9620x_i2c_write
    1c50: 350003a0     	cbnz	w0, 0x1cc4 <aw9620x_reg_write_val_to_flash+0x134>
    1c54: 529e0222     	mov	w2, #0xf011             // =61457
    1c58: aa1303e0     	mov	x0, x19
    1c5c: 529fe401     	mov	w1, #0xff20             // =65312
    1c60: 72a78002     	movk	w2, #0x3c00, lsl #16
    1c64: 97fffeeb     	bl	0x1810 <aw9620x_i2c_write>
		0000000000001c64:  R_AARCH64_CALL26	aw9620x_i2c_write
    1c68: 34000660     	cbz	w0, 0x1d34 <aw9620x_reg_write_val_to_flash+0x1a4>
    1c6c: f9401a61     	ldr	x1, [x19, #0x30]
    1c70: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001c70:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    1c74: 91000000     	add	x0, x0, #0x0
		0000000000001c74:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    1c78: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001c78:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x17d8
    1c7c: 91000042     	add	x2, x2, #0x0
		0000000000001c7c:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x17d8
    1c80: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001c80:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x234c
    1c84: 91000063     	add	x3, x3, #0x0
		0000000000001c84:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x234c
    1c88: 528097c4     	mov	w4, #0x4be              // =1214
    1c8c: 14000028     	b	0x1d2c <aw9620x_reg_write_val_to_flash+0x19c>
    1c90: 528088c4     	mov	w4, #0x446              // =1094
    1c94: 14000016     	b	0x1cec <aw9620x_reg_write_val_to_flash+0x15c>
    1c98: 528089a4     	mov	w4, #0x44d              // =1101
    1c9c: 14000014     	b	0x1cec <aw9620x_reg_write_val_to_flash+0x15c>
    1ca0: f9401a61     	ldr	x1, [x19, #0x30]
    1ca4: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001ca4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    1ca8: 91000000     	add	x0, x0, #0x0
		0000000000001ca8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    1cac: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001cac:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0xfd
    1cb0: 91000042     	add	x2, x2, #0x0
		0000000000001cb0:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0xfd
    1cb4: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001cb4:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x234c
    1cb8: 91000063     	add	x3, x3, #0x0
		0000000000001cb8:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x234c
    1cbc: 52809624     	mov	w4, #0x4b1              // =1201
    1cc0: 1400001b     	b	0x1d2c <aw9620x_reg_write_val_to_flash+0x19c>
    1cc4: f9401a61     	ldr	x1, [x19, #0x30]
    1cc8: 90000000     	adrp	x0, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001cc8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    1ccc: 91000000     	add	x0, x0, #0x0
		0000000000001ccc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    1cd0: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001cd0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2b26
    1cd4: 91000042     	add	x2, x2, #0x0
		0000000000001cd4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2b26
    1cd8: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001cd8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x234c
    1cdc: 91000063     	add	x3, x3, #0x0
		0000000000001cdc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x234c
    1ce0: 52809704     	mov	w4, #0x4b8              // =1208
    1ce4: 14000012     	b	0x1d2c <aw9620x_reg_write_val_to_flash+0x19c>
    1ce8: 52808aa4     	mov	w4, #0x455              // =1109
    1cec: f9401a61     	ldr	x1, [x19, #0x30]
    1cf0: 90000014     	adrp	x20, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001cf0:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x1ea0
    1cf4: 91000294     	add	x20, x20, #0x0
		0000000000001cf4:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x1ea0
    1cf8: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001cf8:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x17d8
    1cfc: 91000042     	add	x2, x2, #0x0
		0000000000001cfc:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x17d8
    1d00: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001d00:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x3800
    1d04: 91000063     	add	x3, x3, #0x0
		0000000000001d04:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x3800
    1d08: aa1403e0     	mov	x0, x20
    1d0c: 94000000     	bl	0x1d0c <aw9620x_reg_write_val_to_flash+0x17c>
		0000000000001d0c:  R_AARCH64_CALL26	_dev_printk
    1d10: f9401a61     	ldr	x1, [x19, #0x30]
    1d14: 90000002     	adrp	x2, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001d14:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x2069
    1d18: 91000042     	add	x2, x2, #0x0
		0000000000001d18:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x2069
    1d1c: 90000003     	adrp	x3, 0x1000 <aw9620x_flash_update+0x2a8>
		0000000000001d1c:  R_AARCH64_ADR_PREL_PG_HI21	aw9620x_rodata_str_base+0x234c
    1d20: 91000063     	add	x3, x3, #0x0
		0000000000001d20:  R_AARCH64_ADD_ABS_LO12_NC	aw9620x_rodata_str_base+0x234c
    1d24: aa1403e0     	mov	x0, x20
    1d28: 52809564     	mov	w4, #0x4ab              // =1195
    1d2c: 94000000     	bl	0x1d2c <aw9620x_reg_write_val_to_flash+0x19c>
		0000000000001d2c:  R_AARCH64_CALL26	_dev_printk
    1d30: 12800000     	mov	w0, #-0x1               // =-1
    1d34: a9434ff4     	ldp	x20, x19, [sp, #0x30]
    1d38: f9400bf7     	ldr	x23, [sp, #0x10]
    1d3c: a94257f6     	ldp	x22, x21, [sp, #0x20]
    1d40: a8c47bfd     	ldp	x29, x30, [sp], #0x40
    1d44: d50323bf     	autiasp
    1d48: d65f03c0     	ret
