int syna_tcm_set_custom_gesture_callback(
    struct tcm_dev *tcm, tcm_custom_touch_callback_fn callback,
    void *callback_data)
{
  if (tcm)
  {
    tcm->custom_gesture_callback = callback;
    tcm->custom_gesture_callback_data = callback_data;
    return 0;
  }
  else
  {
    printk("\x01" "3[error] %s: Invalid tcm device handle\n",
           "syna_tcm_set_custom_gesture_callback");
    return -241;
  }
}
