int syna_tcm_get_touch_data(const unsigned char *report_data,
                            unsigned int report_size,
                            unsigned int bit_offset,
                            unsigned int bit_count,
                            unsigned int *value)
{
  unsigned int byte_offset;
  unsigned int byte_value;
  unsigned int bits_available;
  unsigned int bits_remaining;
  unsigned int bits_to_take;
  unsigned int result;

  if (bit_count == 0 || bit_count > 32) {
    printk("\0013[error] %s: Invalid number of bits %d\n", __func__,
           bit_count);
    return -241;
  }

  if (!report_data) {
    printk("\0013[error] %s: Invalid report data\n", __func__);
    return -241;
  }

  if (bit_offset + bit_count > report_size * 8) {
    *value = 0;
    return 0;
  }

  byte_offset = bit_offset >> 3;
  bits_available = 8 - (bit_offset & 7);
  byte_value = report_data[byte_offset];
  if (bits_available > bit_count)
    bits_available = bit_count;

  result = (byte_value >> (bit_offset & 7)) &
           (0xffU >> (8 - bits_available));
  bits_remaining = bit_count - bits_available;

  while (bits_remaining) {
    byte_offset++;
    bits_to_take = bits_remaining > 8 ? 8 : bits_remaining;
    result |= (report_data[byte_offset] &
               (0xffU >> (8 - bits_to_take)))
              << (bit_count - bits_remaining);
    bits_remaining -= bits_to_take;
  }

  *value = result;
  return 0;
}
