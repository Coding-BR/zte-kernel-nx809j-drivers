int syna_tcm_clear_data_duplicator(struct tcm_dev *tcm)
{
  if (tcm)
  {
    memset(tcm->data_duplicators, 0, sizeof(tcm->data_duplicators));
    return 0;
  }
  else
  {
    printk("\x01" "3[error] %s: Invalid tcm device handle\n",
           "syna_tcm_clear_data_duplicator");
    return -241;
  }
}
