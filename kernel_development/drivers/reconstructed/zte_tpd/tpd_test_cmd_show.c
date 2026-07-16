int tpd_test_cmd_show(struct ztp_device *cdev, char *a2)
{
  (void)cdev;
  printk(unk_34878, "tpd_test_cmd_show");
  return snprintf(a2, 0x1000u, "%d,%d,%d,%d", 0, 16, 37, 0);
}
