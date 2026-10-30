int tpd_init_tpinfo(struct ztp_device *cdev)
{
  u8 *device = (u8 *)cdev;
  void **id_info;
  register const u64 *name asm("x8");
  register u64 name_prefix asm("x10");
  register u32 value asm("w9");
  register int result asm("w0");
  u32 chip_id;
  u32 revision;

  id_info = *(void ***)(device + 0xdb8);
  printk("\0016[info ] %s: enter\n", "tpd_init_tpinfo");
  name = (const u64 *)"synaptics_3910V";
  asm volatile("" : "+r"(name));
  asm volatile("mov %w0, #1" : "=r"(value));
  asm volatile("ldp %0, %1, [%1]" : "=r"(name_prefix), "+r"(name) :: "memory");
  *(u32 *)(device + 0xcf0) = value;
  asm volatile("mov %w0, #4" : "=r"(value) :: "memory");
  asm volatile("mov %w0, wzr" : "=r"(result) :: "memory");
  *(u64 *)(device + 0xd18) = name_prefix;
  *(u64 *)(device + 0xd20) = (unsigned long)name;
  chip_id = *(u32 *)((u8 *)*id_info + 0xc);
  asm volatile("" ::: "memory");
  *(u32 *)(device + 0xd14) = value;
  *(u32 *)(device + 0xd00) = chip_id;
  revision = *(u16 *)((u8 *)*id_info + 0xc6);
  asm volatile("rev16 %w0, %w0" : "+r"(revision));
  *(u32 *)(device + 0xd04) = revision;
  return result;
}
