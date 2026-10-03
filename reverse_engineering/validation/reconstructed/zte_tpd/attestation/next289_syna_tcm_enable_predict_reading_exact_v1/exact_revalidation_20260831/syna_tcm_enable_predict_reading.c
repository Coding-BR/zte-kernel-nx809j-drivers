int syna_tcm_enable_predict_reading(struct tcm_dev *tcm, bool enable)
{
  if (tcm)
  {
    tcm->predict_reading_enabled = enable & 1;
    tcm->predict_reading_offset = 0;
    printk("\x01" "6[info ] %s: Predicted reading is %s\n",
           "syna_tcm_enable_predict_reading",
           enable ? "enabled" : "disabled");
    return 0;
  }
  else
  {
    printk("\x01" "3[error] %s: Invalid tcm device handle\n",
           "syna_tcm_enable_predict_reading");
    return -241;
  }
}
