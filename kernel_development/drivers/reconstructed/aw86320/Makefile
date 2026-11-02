obj-m += aw86320.o

aw86320-y := aw86320_fn_00_aw86320_play_atsin0.o \
    aw86320_fn_01_aw86320_play_mode.o \
    aw86320_fn_02_aw86320_play_stop.o \
    aw86320_fn_03_aw86320_timecheck_work_init.o \
    aw86320_fn_04_haptic_i2c_write.o \
    aw86320_fn_05_haptic_i2c_read.o \
    aw86320_fn_06_aw86320_timecheck_work_handle.o \
    aw86320_fn_07_haptic_i2c_writes.o \
    aw86320_fn_08_aw_i2c_probe.o \
    aw86320_fn_09_aw_remove.o \
    aw86320_fn_10_aw_shutdown.o \
    aw86320_fn_11_irq_handle.o \
    aw86320_fn_12_create_pump_proc_entry.o \
    aw86320_fn_13_aw86320_misc_para_init.o \
    aw86320_fn_14_aw86320_interrupt_setup.o \
    aw86320_fn_15_ram_work_init.o \
    aw86320_fn_16_enableMicroPump.o \
    aw86320_fn_17_get_ic_id.o \
    aw86320_fn_18_enable_show.o \
    aw86320_fn_19_enable_store.o \
    aw86320_fn_20__inline_copy_from_user.o \
    aw86320_fn_21_speed_show.o \
    aw86320_fn_22_speed_store.o \
    aw86320_fn_23_freq_show.o \
    aw86320_fn_24_freq_store.o \
    aw86320_fn_25_reg_show.o \
    aw86320_fn_26_reg_store.o \
    aw86320_fn_27_ram_update_store.o \
    aw86320_fn_28_ram_load.o \
    aw86320_fn_29_haptic_i2c_write_bits.o \
    aw86320_fn_30_duration_show.o \
    aw86320_fn_31_duration_store.o \
    aw86320_fn_32_ram_work_routine.o \
    aw86320_fn_33_aw_i2c_suspend.o \
    aw86320_fn_34_aw_i2c_resume.o \
    aw86320_init_exact.o \
    aw86320_exit_exact.o \
    aw86320_sections.o \
    aw86320_metadata.o

AFLAGS_aw86320_sections.o := -g0 -I$(src)

$(foreach n,$(filter-out aw86320_text_prefix aw86320_sections,$(basename $(notdir $(wildcard $(src)/aw86320_fn_*.S)))),\
  $(eval AFLAGS_$(n).o := -g0 -I$(src)))

AFLAGS_aw86320_init_exact.o := -g0 -I$(src)
AFLAGS_aw86320_exit_exact.o := -g0 -I$(src)
