void tpd_suspend_work(struct work_struct *work)
{
  int (*suspend)(void *pdev);
  void *pdev;

  (void)work;
  suspend = *(int (**)(void *))(tpd_cdev + 0xe10);
  if (!suspend)
    return;

  pdev = *(void **)(tpd_cdev + 0xdd8);
  suspend(pdev);
}
