void tpd_proc_deinit(void)
{
  struct proc_dir_entry *proc_dir;

  proc_dir = READ_ONCE(tpd_proc_dir);
  if ( !proc_dir )
  {
    printk(unk_3CE70, "tpd_proc_deinit");
    return;
  }

  WRITE_ONCE(tpd_proc_dir, NULL);
  proc_remove(proc_dir);
}
