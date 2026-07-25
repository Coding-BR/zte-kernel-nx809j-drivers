int syna_testing_pt0a_zte(struct syna_tcm *tcm)
{
  static struct lock_class_key __key;
  struct {
    struct testing_limit low;
    struct testing_limit high;
  } limits;
  struct tcm_buffer result = { 0 };
  struct testing_item *item;
  struct device *managed;
  const char *status;
  const s16 *samples;
  void *result_data;
  char *data_buf;
  u32 length;
  u32 row;
  u32 col;
  int ret;

  limits.low.size = 0;
  limits.low.data_length = 0;
  limits.high.size = 0;
  limits.high.data_length = 0;

  data_buf = (char *)_kmalloc_cache_noprof(init_timer_key, 3520, 4096);
  if (data_buf) {
    if (likely((*((u8 *)tcm + 0x582) & 1) != 0)) {
      item = syna_tcm_get_testing_0A00();
      if (item) {
        item->image_cols = tcm->tcm_dev->num_of_image_cols;
        item->image_rows = tcm->tcm_dev->num_of_image_rows;
        result.data = NULL;
        result.buf_size = 0;
        result.data_length = 0;
        result.lock_depth = 0;
        _mutex_init(result.mutex, "(struct mutex *)ptr",
                    &__key);

        limits.high.data = pt0a_hi_limits;
        limits.high.size = 3200;
        limits.low.data = pt0a_lo_limits;
        limits.low.size = 3200;
        barrier();
        item->result_data = &result;
        item->limit_primary = &limits.high;
        item->limit_secondary = &limits.low;

        ret = item->run(tcm->tcm_dev, item, false);
        if (ret < 0) {
          printk("\0013[error] %s: Fail to run test, %s\n",
                 "syna_testing_pt0a_zte", item->name);
          status = "Fail";
        } else {
          status = item->result ? "Pass" : "Fail";
        }

        length = scnprintf(data_buf, 4096, "\n%s (version.%d): %s\n\n",
                           item->name, item->version, status);
        if (result.data_length && item->image_rows) {
          samples = (const s16 *)result.data;
          for (row = 0; row < item->image_rows; row++) {
            for (col = 0; col < item->image_cols; col++) {
              length += scnprintf(
                data_buf + length, 4096ULL - length, "%d ",
                samples[col + row * tcm->tcm_dev->num_of_image_cols]);
            }
            length += scnprintf(data_buf + length, 4096ULL - length,
                                "\n");
          }
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
                           "Invalid testing item id:%d\n", 0x0a00);
      }
    } else {
      length = scnprintf(data_buf, 4096, "Device is NOT connected\n");
      barrier_data(length);
    }
  } else {
    printk("\0013[error] %s: alloc data_buf failed",
           "syna_testing_pt0a_zte");
    length = -ENOMEM;
  }
  return length;
}
