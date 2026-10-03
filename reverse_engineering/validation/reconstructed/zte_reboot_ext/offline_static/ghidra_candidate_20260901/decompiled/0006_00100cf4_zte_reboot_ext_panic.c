
undefined8 zte_reboot_ext_panic(long param_1)

{
  saved_nvmem_buf = get_ss_panic_buf_byte();
  save_panic_buf_data_to_nvmem(param_1 + -0x68);
  return 1;
}

