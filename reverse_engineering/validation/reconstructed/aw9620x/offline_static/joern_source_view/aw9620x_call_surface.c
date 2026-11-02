/* SPDX-License-Identifier: GPL-2.0-only */
/* Joern-only direct-call surface derived from canonical Ghidra calls.jsonl. */
/* This file is evidence scaffolding, not candidate implementation source. */
void __const_udelay(void);
void __fortify_panic(void);
void __kmalloc_noprof(void);
void __mutex_init(void);
void __stack_chk_fail(void);
void _dev_err(void);
void _dev_printk(void);
void _printk(void);
void aw9620x_aot_cail_set(void);
void aw9620x_awrw_data_analysis(void);
void aw9620x_awrw_get(void);
void aw9620x_awrw_set(void);
void aw9620x_baseline_get(void);
void aw9620x_check_isp_go_reg(void);
void aw9620x_chip_info_get(void);
void aw9620x_cycle_write_firmware(void);
void aw9620x_deltavalid_get(void);
void aw9620x_diff_get(void);
void aw9620x_en_active(void);
void aw9620x_flash_update(void);
void aw9620x_fw_update(void);
void aw9620x_get_bin_checksum(void);
void aw9620x_get_err_info(void);
void aw9620x_i2c_probe(void);
void aw9620x_i2c_read(void);
void aw9620x_i2c_remove(void);
void aw9620x_i2c_shutdown(void);
void aw9620x_i2c_write(void);
void aw9620x_i2c_write_bits(void);
void aw9620x_initial_get(void);
void aw9620x_input_init(void);
void aw9620x_irq(void);
void aw9620x_irq_handle_func(void);
void aw9620x_irq_init(void);
void aw9620x_load_def_reg_bin(void);
void aw9620x_load_frimware_work(void);
void aw9620x_lpf_get(void);
void aw9620x_mode_operation_get(void);
void aw9620x_mode_operation_set(void);
void aw9620x_old_boot_nvr_modify(void);
void aw9620x_parasitic_data_get(void);
void aw9620x_raw_get(void);
void aw9620x_read_ack_irq(void);
void aw9620x_read_chipid(void);
void aw9620x_read_init_over_irq(void);
void aw9620x_recover_fun(void);
void aw9620x_reg_get(void);
void aw9620x_reg_read_all_val(void);
void aw9620x_reg_read_val(void);
void aw9620x_reg_set(void);
void aw9620x_reg_update_boot_work(void);
void aw9620x_reg_update_bt_set(void);
void aw9620x_reg_update_fw_set(void);
void aw9620x_reg_write_to_flash_once(void);
void aw9620x_reg_write_val_to_flash(void);
void aw9620x_send_once_cmd(void);
void aw9620x_send_stop_cmd(void);
void aw9620x_sensy_config_get(void);
void aw9620x_sensy_config_set(void);
void aw9620x_set_brightness(void);
void aw9620x_soft_reset(void);
void aw9620x_soft_rst_set(void);
void aw9620x_update(void);
void aw9620x_update_bt_to_flash(void);
void aw9620x_update_firmware(void);
void aw9620x_update_fw_get(void);
void aw9620x_update_fw_set(void);
void aw9620x_update_fw_to_flash(void);
void aw9620x_update_reg_set(void);
void aw9620x_update_work(void);
void aw9620x_valid_get(void);
void aw_check_data_version(void);
void aw_check_dsp_reg_num_v1(void);
void aw_check_register_num_v1(void);
void aw_check_soc_app_num_v1(void);
void aw_check_sum(void);
void aw_get_multi_bin_header_1_0_0(void);
void aw_get_single_bin_header_1_0_0(void);
void aw_parse_bin_header_1_0_0(void);
void aw_parse_each_of_multi_bins_1_0_0(void);
void aw_parsing_bin_file(void);
void cleanup_module(void);
void devm_gpio_request_one(void);
void devm_kfree(void);
void devm_kmalloc(void);
void devm_led_classdev_register_ext(void);
void devm_pinctrl_get(void);
void devm_pinctrl_put(void);
void devm_request_threaded_irq(void);
void disable_irq(void);
void dri_to_soc_pack_send(void);
void enable_irq(void);
void get_pack_checksum(void);
void gpio_to_desc(void);
void gpiod_to_irq(void);
void i2c_del_driver(void);
void i2c_register_driver(void);
void i2c_transfer(void);
void init_module(void);
void init_timer_key(void);
void input_allocate_device(void);
void input_event(void);
void input_free_device(void);
void input_register_device(void);
void input_set_abs_params(void);
void input_unregister_device(void);
void kfree(void);
void kstrtoint(void);
void kstrtouint(void);
void memcpy(void);
void memset(void);
void msleep(void);
void mutex_lock(void);
void mutex_unlock(void);
void of_find_property(void);
void of_get_named_gpio(void);
void of_property_read_variable_u32_array(void);
void pinctrl_lookup_state(void);
void pinctrl_select_state(void);
void queue_delayed_work_on(void);
void regulator_count_voltages(void);
void regulator_disable(void);
void regulator_enable(void);
void regulator_get(void);
void regulator_get_voltage(void);
void regulator_put(void);
void regulator_set_voltage(void);
void release_firmware(void);
void request_firmware(void);
void snprintf(void);
void soc_to_dri_pack_parse(void);
void soc_to_dri_pack_recv(void);
void sscanf(void);
void strcmp(void);
void strlen(void);
void sysfs_create_group(void);
void sysfs_remove_group(void);
void usleep_range_state(void);

void aw9620x_aot_cail_set(void)
{
    kstrtouint();
    aw9620x_i2c_read();
    aw9620x_i2c_write();
    _dev_printk();
    __stack_chk_fail();
}

void aw9620x_awrw_data_analysis(void)
{
    strlen();
    _dev_printk();
    sscanf();
    _dev_printk();
    _dev_printk();
    __stack_chk_fail();
}

void aw9620x_awrw_get(void)
{
    snprintf();
    snprintf();
    devm_kfree();
    _dev_printk();
}

void aw9620x_awrw_set(void)
{
    sscanf();
    _dev_printk();
    devm_kfree();
    devm_kmalloc();
    aw9620x_awrw_data_analysis();
    i2c_transfer();
    _dev_printk();
    usleep_range_state();
    _dev_printk();
    aw9620x_awrw_data_analysis();
    i2c_transfer();
    _dev_printk();
    usleep_range_state();
    devm_kfree();
    _dev_printk();
    memset();
    _dev_printk();
    __stack_chk_fail();
    __fortify_panic();
}

void aw9620x_baseline_get(void)
{
    aw9620x_i2c_read();
    snprintf();
    __stack_chk_fail();
}

void aw9620x_check_isp_go_reg(void)
{
    aw9620x_i2c_read();
    __const_udelay();
    _dev_printk();
    __stack_chk_fail();
}

void aw9620x_chip_info_get(void)
{
    snprintf();
    aw9620x_i2c_read();
    snprintf();
    aw9620x_i2c_read();
    snprintf();
    snprintf();
    aw9620x_i2c_read();
    snprintf();
    snprintf();
    snprintf();
    snprintf();
    snprintf();
    __stack_chk_fail();
}

void aw9620x_cycle_write_firmware(void)
{
    _dev_printk();
    _dev_printk();
    _dev_printk();
    __kmalloc_noprof();
    memset();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    memcpy();
    aw9620x_send_once_cmd();
    kfree();
    _dev_printk();
    _dev_printk();
    memcpy();
    aw9620x_send_once_cmd();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    kfree();
    __fortify_panic();
    __fortify_panic();
    __fortify_panic();
    __kmalloc_noprof();
    _dev_printk();
}

void aw9620x_deltavalid_get(void)
{
    aw9620x_i2c_read();
    snprintf();
    __stack_chk_fail();
}

void aw9620x_diff_get(void)
{
    aw9620x_i2c_read();
    snprintf();
    __stack_chk_fail();
}

void aw9620x_en_active(void)
{
    _dev_printk();
    aw9620x_i2c_write();
    _dev_printk();
    aw9620x_i2c_write();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    enable_irq();
}

void aw9620x_flash_update(void)
{
    _dev_printk();
    _dev_printk();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    _dev_printk();
    _dev_printk();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_reg_write_to_flash_once();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    _dev_printk();
    _dev_printk();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    _dev_printk();
    aw9620x_reg_read_val();
    aw9620x_i2c_write();
    _dev_printk();
    _dev_printk();
    aw9620x_reg_write_val_to_flash();
    _dev_printk();
    aw9620x_get_bin_checksum();
    _dev_printk();
    aw9620x_reg_write_val_to_flash();
    _dev_printk();
    _dev_printk();
    aw9620x_i2c_write();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_check_isp_go_reg();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    __stack_chk_fail();
}

void aw9620x_fw_update(void)
{
    _dev_printk();
    _dev_printk();
    aw9620x_i2c_read();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    aw9620x_i2c_write();
    aw9620x_i2c_read();
    usleep_range_state();
    aw9620x_i2c_read();
    _dev_printk();
    aw9620x_i2c_write();
    msleep();
    aw9620x_read_ack_irq();
    aw9620x_i2c_read();
    aw9620x_i2c_read();
    aw9620x_reg_read_all_val();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    aw9620x_i2c_write();
    aw9620x_i2c_read();
    aw9620x_i2c_write();
    aw9620x_i2c_read();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    aw9620x_send_once_cmd();
    _dev_printk();
    aw9620x_send_once_cmd();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    aw9620x_send_once_cmd();
    aw9620x_reg_read_all_val();
    aw9620x_reg_read_all_val();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    aw9620x_send_once_cmd();
    _dev_printk();
    _dev_printk();
    aw9620x_cycle_write_firmware();
    _dev_printk();
    aw9620x_send_stop_cmd();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    __stack_chk_fail();
}

void aw9620x_get_bin_checksum(void)
{
}

void aw9620x_get_err_info(void)
{
    aw9620x_i2c_write();
    aw9620x_i2c_read();
    aw9620x_i2c_read();
    aw9620x_i2c_read();
    _dev_printk();
    aw9620x_i2c_write();
    __stack_chk_fail();
}

void aw9620x_i2c_probe(void)
{
    _printk();
    _dev_printk();
    devm_kmalloc();
    _dev_printk();
    __mutex_init();
    __mutex_init();
    of_property_read_variable_u32_array();
    _dev_printk();
    of_get_named_gpio();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    of_property_read_variable_u32_array();
    _dev_printk();
    of_find_property();
    _dev_printk();
    _dev_printk();
    devm_pinctrl_get();
    pinctrl_lookup_state();
    pinctrl_lookup_state();
    pinctrl_lookup_state();
    _dev_printk();
    pinctrl_lookup_state();
    pinctrl_lookup_state();
    pinctrl_lookup_state();
    pinctrl_select_state();
    _dev_printk();
    _dev_printk();
    devm_pinctrl_put();
    _dev_printk();
    snprintf();
    _dev_printk();
    regulator_get();
    _dev_printk();
    regulator_count_voltages();
    regulator_set_voltage();
    _dev_printk();
    regulator_enable();
    _dev_printk();
    _dev_printk();
    regulator_get_voltage();
    _dev_printk();
    __const_udelay();
    regulator_get_voltage();
    _dev_printk();
    __const_udelay();
    regulator_get_voltage();
    _dev_printk();
    __const_udelay();
    regulator_get_voltage();
    _dev_printk();
    __const_udelay();
    regulator_get_voltage();
    _dev_printk();
    __const_udelay();
    regulator_get_voltage();
    _dev_printk();
    __const_udelay();
    regulator_get_voltage();
    _dev_printk();
    __const_udelay();
    regulator_get_voltage();
    _dev_printk();
    __const_udelay();
    regulator_get_voltage();
    _dev_printk();
    __const_udelay();
    regulator_get_voltage();
    _dev_printk();
    msleep();
    devm_led_classdev_register_ext();
    _dev_err();
    sysfs_create_group();
    _dev_printk();
    aw9620x_input_init();
    aw9620x_irq_init();
    aw9620x_old_boot_nvr_modify();
    _dev_printk();
    _dev_printk();
    regulator_put();
    _dev_printk();
    _dev_printk();
    input_unregister_device();
    input_free_device();
    input_free_device();
    input_free_device();
    input_free_device();
    input_free_device();
    input_free_device();
    input_free_device();
    input_free_device();
    sysfs_remove_group();
    regulator_disable();
    regulator_put();
    _dev_printk();
    aw9620x_read_chipid();
    _dev_printk();
    _dev_printk();
    aw9620x_update();
    _dev_printk();
    aw9620x_recover_fun();
    aw9620x_soft_reset();
    aw9620x_read_init_over_irq();
    __const_udelay();
    _dev_printk();
    _dev_printk();
    aw9620x_get_err_info();
    _dev_printk();
    __stack_chk_fail();
}

void aw9620x_i2c_read(void)
{
    i2c_transfer();
    _dev_printk();
    usleep_range_state();
    _dev_printk();
    __stack_chk_fail();
}

void aw9620x_i2c_remove(void)
{
    input_unregister_device();
    input_free_device();
    input_unregister_device();
    input_free_device();
    input_unregister_device();
    input_free_device();
    input_unregister_device();
    input_free_device();
    input_unregister_device();
    input_free_device();
    input_unregister_device();
    input_free_device();
    input_unregister_device();
    input_free_device();
    input_unregister_device();
    input_free_device();
    sysfs_remove_group();
    regulator_disable();
    regulator_put();
}

void aw9620x_i2c_shutdown(void)
{
    _printk();
    disable_irq();
    aw9620x_i2c_read();
    aw9620x_i2c_write();
    __stack_chk_fail();
}

void aw9620x_i2c_write(void)
{
    i2c_transfer();
    _dev_printk();
    usleep_range_state();
    i2c_transfer();
    _dev_printk();
    usleep_range_state();
    i2c_transfer();
    _dev_printk();
    usleep_range_state();
    i2c_transfer();
    _dev_printk();
    usleep_range_state();
    i2c_transfer();
    _dev_printk();
    usleep_range_state();
    i2c_transfer();
    _dev_printk();
    usleep_range_state();
    _dev_printk();
    __stack_chk_fail();
}

void aw9620x_i2c_write_bits(void)
{
    aw9620x_i2c_read();
    aw9620x_i2c_write();
    __stack_chk_fail();
}

void aw9620x_initial_get(void)
{
    aw9620x_i2c_read();
    snprintf();
    __stack_chk_fail();
}

void aw9620x_input_init(void)
{
    devm_kmalloc();
    snprintf();
    input_allocate_device();
    input_set_abs_params();
    input_register_device();
    _dev_printk();
    input_free_device();
    _dev_printk();
    _dev_printk();
}

void aw9620x_irq(void)
{
    aw9620x_irq_handle_func();
}

void aw9620x_irq_handle_func(void)
{
    aw9620x_i2c_read();
    aw9620x_i2c_read();
    input_event();
    input_event();
    input_event();
    input_event();
    input_event();
    input_event();
    input_event();
    input_event();
    _dev_printk();
    _dev_printk();
    __stack_chk_fail();
}

void aw9620x_irq_init(void)
{
    _dev_printk();
    snprintf();
    _dev_printk();
    gpio_to_desc();
    gpiod_to_irq();
    _dev_printk();
    devm_gpio_request_one();
    _dev_printk();
    devm_request_threaded_irq();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    disable_irq();
    __stack_chk_fail();
}

void aw9620x_load_def_reg_bin(void)
{
    _dev_printk();
    snprintf();
    _dev_printk();
    request_firmware();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    __kmalloc_noprof();
    kfree();
    release_firmware();
    _dev_printk();
    memcpy();
    release_firmware();
    aw_parsing_bin_file();
    _dev_printk();
    _dev_printk();
    strcmp();
    aw9620x_en_active();
    kfree();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    aw9620x_i2c_write();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    kfree();
    _dev_printk();
    __fortify_panic();
    __stack_chk_fail();
}

void aw9620x_load_frimware_work(void)
{
    _dev_printk();
    snprintf();
    _dev_printk();
    request_firmware();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    __kmalloc_noprof();
    kfree();
    release_firmware();
    _dev_printk();
    memcpy();
    release_firmware();
    aw_parsing_bin_file();
    _dev_printk();
    _dev_printk();
    aw9620x_update_firmware();
    aw9620x_update_fw_to_flash();
    _dev_printk();
    kfree();
    _dev_printk();
    _dev_printk();
    kfree();
    _dev_printk();
    __fortify_panic();
    __stack_chk_fail();
}

void aw9620x_lpf_get(void)
{
    aw9620x_i2c_read();
    snprintf();
    __stack_chk_fail();
}

void aw9620x_mode_operation_get(void)
{
    aw9620x_i2c_read();
    snprintf();
    __stack_chk_fail();
}

void aw9620x_mode_operation_set(void)
{
    kstrtouint();
    aw9620x_i2c_write();
    aw9620x_load_def_reg_bin();
    aw9620x_i2c_read();
    aw9620x_i2c_write();
    aw9620x_i2c_read();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    aw9620x_i2c_write();
    _dev_printk();
    input_event();
    aw9620x_i2c_write();
    aw9620x_i2c_write_bits();
    input_event();
    _dev_printk();
    input_event();
    aw9620x_i2c_write();
    __stack_chk_fail();
}

void aw9620x_old_boot_nvr_modify(void)
{
    _dev_printk();
    _dev_printk();
    aw9620x_i2c_write();
    _dev_printk();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_read();
    _dev_printk();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    usleep_range_state();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    msleep();
    _dev_printk();
    __stack_chk_fail();
}

void aw9620x_parasitic_data_get(void)
{
    aw9620x_i2c_read();
    _dev_printk();
    snprintf();
    __stack_chk_fail();
}

void aw9620x_raw_get(void)
{
    aw9620x_i2c_read();
    snprintf();
    __stack_chk_fail();
}

void aw9620x_read_ack_irq(void)
{
    aw9620x_i2c_read();
    _dev_printk();
    _dev_printk();
    usleep_range_state();
    _dev_printk();
    _dev_printk();
    __stack_chk_fail();
}

void aw9620x_read_chipid(void)
{
    _dev_printk();
    aw9620x_i2c_read();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    __stack_chk_fail();
}

void aw9620x_read_init_over_irq(void)
{
    _dev_printk();
    aw9620x_i2c_read();
    _dev_printk();
    usleep_range_state();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    __stack_chk_fail();
}

void aw9620x_recover_fun(void)
{
    _dev_printk();
    aw9620x_i2c_write();
    aw9620x_i2c_read();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    __stack_chk_fail();
}

void aw9620x_reg_get(void)
{
    snprintf();
    aw9620x_i2c_read();
    snprintf();
    __stack_chk_fail();
}

void aw9620x_reg_read_all_val(void)
{
    _dev_printk();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_reg_read_val();
    _dev_printk();
    aw9620x_i2c_write();
    _dev_printk();
}

void aw9620x_reg_read_val(void)
{
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_check_isp_go_reg();
    aw9620x_i2c_read();
    _dev_printk();
}

void aw9620x_reg_set(void)
{
    sscanf();
    aw9620x_i2c_write();
    __stack_chk_fail();
}

void aw9620x_reg_update_boot_work(void)
{
    _dev_printk();
    snprintf();
    _dev_printk();
    request_firmware();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    __kmalloc_noprof();
    kfree();
    release_firmware();
    _dev_printk();
    memcpy();
    release_firmware();
    aw_parsing_bin_file();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    aw9620x_flash_update();
    _dev_printk();
    kfree();
    _dev_printk();
    _dev_printk();
    kfree();
    _dev_printk();
    __fortify_panic();
    __stack_chk_fail();
}

void aw9620x_reg_update_bt_set(void)
{
    kstrtouint();
    mutex_lock();
    disable_irq();
    aw9620x_reg_update_boot_work();
    enable_irq();
    mutex_unlock();
    __stack_chk_fail();
}

void aw9620x_reg_update_fw_set(void)
{
    kstrtoint();
    mutex_lock();
    disable_irq();
    aw9620x_load_frimware_work();
    enable_irq();
    mutex_unlock();
    __stack_chk_fail();
}

void aw9620x_reg_write_to_flash_once(void)
{
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_check_isp_go_reg();
    _dev_printk();
}

void aw9620x_reg_write_val_to_flash(void)
{
    _dev_printk();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_reg_write_to_flash_once();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    _dev_printk();
    _dev_printk();
}

void aw9620x_send_once_cmd(void)
{
    _dev_printk();
    dri_to_soc_pack_send();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    _dev_printk();
    _dev_printk();
    msleep();
    aw9620x_read_ack_irq();
    soc_to_dri_pack_parse();
}

void aw9620x_send_stop_cmd(void)
{
    _dev_printk();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_read();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    msleep();
    aw9620x_i2c_read();
    _dev_printk();
    _dev_printk();
    usleep_range_state();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    __stack_chk_fail();
}

void aw9620x_sensy_config_get(void)
{
    snprintf();
}

void aw9620x_sensy_config_set(void)
{
    kstrtouint();
    _dev_printk();
    mutex_lock();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    mutex_unlock();
    _dev_printk();
    __stack_chk_fail();
}

void aw9620x_set_brightness(void)
{
}

void aw9620x_soft_reset(void)
{
    _dev_printk();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    usleep_range_state();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    msleep();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    aw9620x_i2c_write();
    _dev_printk();
    _dev_printk();
    _dev_printk();
}

void aw9620x_soft_rst_set(void)
{
    kstrtouint();
    aw9620x_soft_reset();
    __stack_chk_fail();
}

void aw9620x_update(void)
{
    _dev_printk();
    init_timer_key();
    queue_delayed_work_on();
}

void aw9620x_update_bt_to_flash(void)
{
    _dev_printk();
    _dev_printk();
    aw9620x_flash_update();
    __stack_chk_fail();
}

void aw9620x_update_firmware(void)
{
    _dev_printk();
    aw9620x_fw_update();
}

void aw9620x_update_fw_get(void)
{
    aw9620x_i2c_read();
    snprintf();
    _dev_printk();
    __stack_chk_fail();
}

void aw9620x_update_fw_set(void)
{
    kstrtouint();
    mutex_lock();
    disable_irq();
    aw9620x_load_frimware_work();
    enable_irq();
    mutex_unlock();
    __stack_chk_fail();
}

void aw9620x_update_fw_to_flash(void)
{
    _dev_printk();
    aw9620x_flash_update();
    __stack_chk_fail();
}

void aw9620x_update_reg_set(void)
{
    kstrtouint();
    mutex_lock();
    disable_irq();
    aw9620x_load_def_reg_bin();
    enable_irq();
    mutex_unlock();
    __stack_chk_fail();
}

void aw9620x_update_work(void)
{
    mutex_lock();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    aw9620x_reg_read_all_val();
    _dev_printk();
    aw9620x_load_frimware_work();
    aw9620x_load_def_reg_bin();
    _dev_printk();
    _dev_printk();
    aw9620x_i2c_write();
    _dev_printk();
    aw9620x_en_active();
    aw9620x_reg_update_boot_work();
    _dev_printk();
    aw9620x_load_frimware_work();
    aw9620x_recover_fun();
    aw9620x_soft_reset();
    aw9620x_read_chipid();
    aw9620x_read_init_over_irq();
    _dev_printk();
    mutex_unlock();
    _dev_printk();
    _dev_printk();
    aw9620x_reg_update_boot_work();
    _dev_printk();
    aw9620x_soft_reset();
    aw9620x_read_chipid();
    _dev_printk();
    aw9620x_read_init_over_irq();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    aw9620x_get_err_info();
    _dev_printk();
    __stack_chk_fail();
}

void aw9620x_valid_get(void)
{
    aw9620x_i2c_read();
    snprintf();
    __stack_chk_fail();
}

void aw_check_data_version(void)
{
    _printk();
    _printk();
}

void aw_check_dsp_reg_num_v1(void)
{
    _printk();
    _printk();
    _printk();
    _printk();
    _printk();
}

void aw_check_register_num_v1(void)
{
    _printk();
    _printk();
    _printk();
    _printk();
    _printk();
}

void aw_check_soc_app_num_v1(void)
{
    _printk();
    _printk();
    _printk();
    _printk();
    _printk();
}

void aw_check_sum(void)
{
    _printk();
    _printk();
    _printk();
    _printk();
    _printk();
}

void aw_get_multi_bin_header_1_0_0(void)
{
    _printk();
    aw_get_single_bin_header_1_0_0();
    _printk();
    aw_parse_each_of_multi_bins_1_0_0();
}

void aw_get_single_bin_header_1_0_0(void)
{
    _printk();
    _printk();
}

void aw_parse_bin_header_1_0_0(void)
{
    _printk();
    _printk();
    _printk();
    _printk();
    aw_get_single_bin_header_1_0_0();
    _printk();
    _printk();
    aw_get_multi_bin_header_1_0_0();
    _printk();
}

void aw_parse_each_of_multi_bins_1_0_0(void)
{
    _printk();
    aw_parse_bin_header_1_0_0();
}

void aw_parsing_bin_file(void)
{
    _printk();
    _printk();
    _printk();
    aw_parse_bin_header_1_0_0();
    _printk();
    _printk();
    _printk();
    aw_check_sum();
    _printk();
    aw_check_register_num_v1();
    aw_check_dsp_reg_num_v1();
    aw_check_soc_app_num_v1();
    _printk();
    _printk();
}

void cleanup_module(void)
{
    i2c_del_driver();
}

void dri_to_soc_pack_send(void)
{
    __kmalloc_noprof();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    _dev_printk();
    memcpy();
    i2c_transfer();
    kfree();
    _dev_printk();
    _dev_printk();
    i2c_transfer();
    _dev_printk();
    i2c_transfer();
    _dev_printk();
    i2c_transfer();
    _dev_printk();
    i2c_transfer();
    _dev_printk();
    i2c_transfer();
    _dev_printk();
    kfree();
    _dev_printk();
    __stack_chk_fail();
    __fortify_panic();
}

void get_pack_checksum(void)
{
    _dev_printk();
    _dev_printk();
}

void init_module(void)
{
    _printk();
    i2c_register_driver();
    _printk();
}

void soc_to_dri_pack_parse(void)
{
    __kmalloc_noprof();
    _dev_printk();
    soc_to_dri_pack_recv();
    _dev_printk();
    _dev_printk();
    kfree();
    _dev_printk();
    kfree();
    _dev_printk();
    __stack_chk_fail();
}

void soc_to_dri_pack_recv(void)
{
    _dev_printk();
    i2c_transfer();
    _dev_printk();
    i2c_transfer();
    _dev_printk();
    i2c_transfer();
    _dev_printk();
    i2c_transfer();
    _dev_printk();
    i2c_transfer();
    _dev_printk();
    i2c_transfer();
    _dev_printk();
    _dev_printk();
    __stack_chk_fail();
}
