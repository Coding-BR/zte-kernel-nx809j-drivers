void syna_tcm_v1_terminate(struct tcm_dev *tcm)
{
  __int64 raw = (__int64)(unsigned long)tcm;

  if ( !tcm )
  {
    printk(unk_3365A, "syna_tcm_v1_terminate");
    return;
  }

  if ( *(_DWORD *)(raw + 504) != 1 )
    return;

  printk(unk_3B33C, "syna_tcm_v1_terminate",
         *(unsigned __int8 *)(raw + 508));
  *(_DWORD *)(raw + 504) = 2;
  if ( !completion_done(raw + 544) )
    complete(raw + 544);
}
