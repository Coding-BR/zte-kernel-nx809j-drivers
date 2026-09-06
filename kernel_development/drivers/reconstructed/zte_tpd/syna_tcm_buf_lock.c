void __fastcall syna_tcm_buf_lock(__int64 a1)
{
  if ( *(_BYTE *)(a1 + 64) )
    printk("\1" "3[error] %s: Buffer access out-of balance, %d\n",
           "syna_tcm_buf_lock", *(unsigned __int8 *)(a1 + 64));
  mutex_lock(a1 + 16);
  ++*(_BYTE *)(a1 + 64);
}
