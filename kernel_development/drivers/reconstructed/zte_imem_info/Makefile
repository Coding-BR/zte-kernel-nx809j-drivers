obj-m += zte_imem_info.o
asflags-y += -fdebug-prefix-map=$(src)=/zte_imem_info
zte_imem_info-objs := zte_imem_info_ddr_id_read_proc_exact.o zte_imem_info_core.o
CFLAGS_zte_imem_info_core.o += -DZTE_IMEM_INFO_DDR_ID_READ_EXACT_ISLAND

$(obj)/zte_imem_info_core.o: $(src)/zte_imem_info.c
	$(call if_changed_dep,cc_o_c)
