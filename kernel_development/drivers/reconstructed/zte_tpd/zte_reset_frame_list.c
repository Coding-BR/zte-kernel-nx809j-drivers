void zte_reset_frame_list(struct syna_tcm *tcm)
{
  __int64 a1 = (__int64)tcm;
  void *v2; // x0

  mutex_lock(a1 + 1136);
  v2 = *(void **)(a1 + 1120);
  *(_QWORD *)(a1 + 1084) = 0;
  memset(v2, 0, 0x32000u);
  mutex_unlock(a1 + 1136);
  printk(unk_365BE, "zte_reset_frame_list");
}
