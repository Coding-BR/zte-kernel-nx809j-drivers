.section .text,"ax",@progbits
.align 2
.global zte_ir_remove
.type zte_ir_remove, %function
    .word 0x509a2353
zte_ir_remove:
    .inst 0xd503233f
    .inst 0xa9bd7bfd
    .inst 0xf9000bf5
    .inst 0xa9024ff4
    .inst 0x910003fd
    .inst 0x52871415
    .inst 0xf9404c13
    .inst 0x72a00035
    .inst 0x8b150260
    .inst 0x91404e74
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _raw_spin_lock_irq
    .inst 0x8b150260
    .inst 0xf9044a9f
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, _raw_spin_unlock_irq
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, device_list_lock
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, device_list_lock
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_lock
    .inst 0xf9447288
    .inst 0x91404e69
    .inst 0x91236120
    .inst 0xf940010a
    .inst 0xeb00015f
    .inst 0x54000481
    .inst 0xf9400009
    .inst 0xf940052a
    .inst 0xeb00015f
    .inst 0x54000401
    .inst 0xf9000528
    .inst 0xf9000109
    .inst 0xd2802008
    .inst 0x52800449
    .inst 0xb9400261
    .inst 0xf2fbd5a8
    .inst 0xf9046e88
    .inst 0xaa090108
    .inst 0xf9047288
    .inst 0x90000008
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, zte_ir_class
    .inst 0xf9400100
    .reloc .-4, R_AARCH64_LDST64_ABS_LO12_NC, zte_ir_class
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, device_destroy
    .inst 0xb9400268
    .inst 0x5280002a
    .inst 0xd3464d09
    .inst 0x9ac82148
    .inst 0x14000011
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, minors
    .inst 0x9100014a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, minors
    .inst 0x8b090d49
    .inst 0xf828113f
    .inst 0xaa1303e0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, kfree
    .inst 0x90000000
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, device_list_lock
    .inst 0x91000000
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, device_list_lock
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, mutex_unlock
    .inst 0xa9424ff4
    .inst 0xf9400bf5
    .inst 0xa8c37bfd
    .inst 0xd50323bf
    .inst 0xd65f03c0
    .inst 0x94000000
    .reloc .-4, R_AARCH64_CALL26, __list_del_entry_valid_or_report
    .inst 0x17ffffe2
    .inst 0x9000000a
    .reloc .-4, R_AARCH64_ADR_PREL_PG_HI21, minors
    .inst 0x9100014a
    .reloc .-4, R_AARCH64_ADD_ABS_LO12_NC, minors
    .inst 0x8b090d49
    .inst 0xf9800131
    .inst 0xc85f7d2a
    .inst 0x8a28014a
    .inst 0xc80b7d2a
    .inst 0x35ffffab
    .inst 0x17ffffec
.size zte_ir_remove, .-zte_ir_remove
