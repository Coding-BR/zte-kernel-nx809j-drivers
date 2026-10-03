int syna_tcm_set_data_duplicator(
    struct tcm_dev *tcm, u8 report_code,
    tcm_data_duplicator_fn callback, void *callback_data)
{
  if (tcm)
  {
    tcm->data_duplicators[report_code].callback = callback;
    tcm->data_duplicators[report_code].callback_data = callback_data;
    return 0;
  }
  else
  {
    printk("\x01" "3[error] %s: Invalid tcm device handle\n",
           "syna_tcm_set_data_duplicator");
    return -241;
  }
}
