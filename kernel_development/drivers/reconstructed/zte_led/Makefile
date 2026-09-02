obj-m += zte_led.o
zte_led-y := aw22xxx_exact_bases.o aw22xxx_fw_loaded_exact.o aw22xxx_set_breath_data_exact.o zte_led_main.o
ccflags-y += -DZTE_LED_SET_BREATH_DATA_EXACT_ISLAND
AFLAGS_aw22xxx_exact_bases.o := -g0 -I$(src)
AFLAGS_aw22xxx_fw_loaded_exact.o := -g0 -I$(src)
AFLAGS_aw22xxx_set_breath_data_exact.o := -g0 -I$(src)
