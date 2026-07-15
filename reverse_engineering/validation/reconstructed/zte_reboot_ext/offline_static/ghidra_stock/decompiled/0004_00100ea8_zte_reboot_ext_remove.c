
void zte_reboot_ext_remove(long param_1)

{
  atomic_notifier_chain_unregister(&panic_notifier_list,*(long *)(param_1 + 0xa8) + 0x68);
  unregister_kretprobe(panic_probe);
  _printk(&DAT_00101b39);
  return;
}

