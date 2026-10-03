int syna_tcm_set_post_reset_callback(
    struct tcm_dev *tcm, tcm_post_reset_callback_fn callback,
    void *callback_data)
{
  if (tcm)
  {
    tcm->post_reset_callback = callback;
    tcm->post_reset_context = callback_data;
    return 0;
  }
  else
  {
    printk("\x01" "3[error] %s: Invalid tcm device handle\n",
           "syna_tcm_set_post_reset_callback");
    return -241;
  }
}
