int syna_tcm_set_report_dispatcher(
    struct tcm_dev *tcm, u8 report_code,
    tcm_report_dispatcher_fn callback, void *callback_data)
{
  if (tcm)
  {
    if (report_code < 0x10)
      printk("\x01" "4[warn ] %s: The given code 0x%X may not belongs to report\n",
             "syna_tcm_set_report_dispatcher", report_code);
    tcm->report_dispatchers[report_code].callback = callback;
    tcm->report_dispatchers[report_code].callback_data = callback_data;
    printk("\x01" "6[info ] %s: Dispatcher for report 0x%02X is registered\n",
           "syna_tcm_set_report_dispatcher", report_code);
    return 0;
  }
  else
  {
    printk("\x01" "3[error] %s: Invalid tcm device handle\n",
           "syna_tcm_set_report_dispatcher");
    return -241;
  }
}
