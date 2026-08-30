void tp_free_tp_firmware_data(void)
{
  __int64 v0; // x19
  __int64 result; // x0

  v0 = tpd_cdev;
  result = *(_QWORD *)(tpd_cdev + 0xc58);
  if ( result )
  {
    if ( *(_QWORD *)(result + 8) )
    {
      vfree(*(_QWORD *)(result + 8));
      *(_QWORD *)(*(_QWORD *)(v0 + 0xc58) + 8LL) = 0;
      **(_QWORD **)(v0 + 0xc58) = 0;
      result = *(_QWORD *)(v0 + 0xc58);
    }
    kfree((void *)result);
    *(_QWORD *)(v0 + 0xc58) = 0;
  }
  *(_DWORD *)(v0 + 0x448) = 0;
}
