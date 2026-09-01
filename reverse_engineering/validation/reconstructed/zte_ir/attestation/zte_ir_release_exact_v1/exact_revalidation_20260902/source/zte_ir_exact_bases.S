.section .data,"aw",@progbits
.align 3
.global zte_ir_exact_data_base
.type zte_ir_exact_data_base, %object
zte_ir_exact_data_base:

.global device_list_lock
.set device_list_lock, zte_ir_exact_data_base
.global device_list
.set device_list, zte_ir_exact_data_base + 0x30

.section .rodata.str1.1,"a",@progbits
.align 1
.global zte_ir_exact_rodata_str_base
zte_ir_exact_rodata_str_base:
.incbin "exact_stock_sections/stock_rodata_str.bin"

.section .note.GNU-stack,"",@progbits
