void tpd_resume_work(struct work_struct *work)
{
  long long cdev;
  int (*resume)(void *pdev);
  void *pdev;

  (void)work;
  cdev = tpd_cdev;
  resume = *(int (**)(void *))(cdev + 0xe08);
  if (!resume)
    return;

  pdev = *(void **)(cdev + 0xdd8);
  resume(pdev);
  *(unsigned int *)(cdev + 0x4a8) = 0;
}
