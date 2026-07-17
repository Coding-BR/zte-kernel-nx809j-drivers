void zte_touch_remove(struct platform_device *pdev)
{
  __int64 v0; // x0

  (void)pdev;
  v0 = printk(unk_38656, "zte_touch_remove", 2903);
  zte_touch_deinit(v0);
}
