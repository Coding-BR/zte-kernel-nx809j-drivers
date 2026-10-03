int syna_tcm_testing_0002_check_config_id(const unsigned char *firmware_id,
                                          const unsigned char *limit_id,
                                          int limit)
{
  int index;
  int result = 0;

  if (!firmware_id || !limit_id)
    goto out;
  if (limit < 0) {
    result = 1;
    goto out;
  }

  index = 0;
  do {
    if (firmware_id[index] != limit_id[index]) {
    printk("\0013[error] %s: Config ID mismatched, FW: %s (limit: %s)\n",
           "syna_tcm_testing_0002_check_config_id", firmware_id, limit_id);
      goto out;
    }
    index++;
  } while (index <= limit);

  result = 1;
out:
  return result;
}
