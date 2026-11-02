int syna_testing_pt01_zte(struct syna_tcm *tcm)
{
  static struct lock_class_key __key;
  struct testing_limit limit = { 0 };
  struct tcm_buffer result = { 0 };
  struct testing_item *item;
  struct device *managed;
  const char *status;
  void *result_data;
  char *data_buf;
  u32 length;
  u32 index;
  int ret;

  data_buf = (char *)_kmalloc_cache_noprof(init_timer_key, 3520, 4096);
  if (data_buf) {
    item = syna_tcm_get_testing_0100();
    if (item) {
      result.data = NULL;
      result.buf_size = 0;
      result.data_length = 0;
      result.lock_depth = 0;
      _mutex_init(result.mutex, "(struct mutex *)ptr", &__key);

      item->result_data = &result;
      limit.data = pt01_limits;
      item->limit_primary = &limit;
      limit.size = 16;

      ret = item->run(tcm->tcm_dev, item, false);
      if (ret < 0) {
        printk("\0013[error] %s: Fail to run test, %s\n",
               "syna_testing_pt01_zte", item->name);
        status = "Fail";
      } else {
        status = item->result ? "Pass" : "Fail";
      }

      length = scnprintf(data_buf, 4096, "\n%s (version.%d): %s\n\n",
                         item->name, item->version, status);
      if (result.data_length) {
        index = 0;
        do {
          length += scnprintf(data_buf + length, 4096ULL - length,
                              "x%02X ",
                              ((const u8 *)result.data)[(int)index]);
          index++;
        } while (index < result.data_length);
        length += scnprintf(data_buf + length, 4096ULL - length, "\n");
      }

      tpd_copy_to_tp_firmware_data(data_buf);
      if (result.lock_depth)
        printk("\0013[error] %s: Buffer still in used, %d references\n",
               "syna_tcm_buf_release", result.lock_depth);

      result_data = result.data;
      managed = syna_request_managed_device();
      if (managed) {
        if (result_data)
          devm_kfree(managed, result_data);
      } else {
        printk("\0013[error] %s: Invalid managed device\n",
               "syna_pal_mem_free");
      }

      result.buf_size = 0;
      result.data_length = 0;
      result.lock_depth = 0;
      kfree(data_buf);
    } else {
      length = scnprintf(data_buf, 4096,
                         "Invalid testing item id:%d\n", 0x0100);
    }
  } else {
    printk("\0013[error] %s: alloc data_buf failed",
           "syna_testing_pt01_zte");
    length = -ENOMEM;
  }
  return length;
}
