ssize_t tpfwupgrade_store(struct file *file, const char __user *buffer, size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;

  (void)file;
  (void)offset;
  __int64 v3; // x19
  __int64 v4; // x20
  __int64 v6; // x0
  __int64 v7; // x0
  _QWORD *v12; // x8
  __int64 v13; // x9
  int (__fastcall *v14)(struct ztp_device *, char *, int); // x8
  unsigned int v15; // [xsp+4h] [xbp-Ch] BYREF

  v3 = a3;
  v4 = tpd_cdev;
  v15 = 0;
  if ( (unsigned int)kstrtouint_from_user(a2, a3, 10, &v15) )
  {
    v3 = -22;
  }
  else
  {
    printk("\0015tpd: %s val %d.\n", "tpfwupgrade_store", v15);
    mutex_lock(v4 + 0xc60);
    v6 = *(_QWORD *)(v4 + 0xc58);
    if ( v15 >= 0xB )
    {
      if ( v6 )
      {
        if ( *(_QWORD *)(v6 + 8) )
        {
          vfree(*(_QWORD *)(v6 + 8));
          v6 = *(_QWORD *)(v4 + 0xc58);
        }
        kfree(v6);
      }
      *(_DWORD *)(v4 + 0x448) = 0;
      v7 = _kmalloc_cache_noprof(remove_proc_entry, 3520, 24);
      *(_QWORD *)(v4 + 0xc58) = v7;
      if ( v7 )
      {
        *(_QWORD *)(*(_QWORD *)(v4 + 0xc58) + 8LL) = vmalloc(v15 + 24LL);
        v12 = *(_QWORD **)(v4 + 0xc58);
        if ( v12[1] )
        {
          v13 = v15;
          *v12 = v15;
          memset(*(void **)(*(_QWORD *)(v4 + 0xc58) + 8LL), 0, v13 + 24);
        }
        else
        {
          printk("\0013tpd: alloc tp_firmware->data failed");
          kfree(*(_QWORD *)(v4 + 0xc58));
          v3 = -12;
        }
      }
      else
      {
        printk("\0013tpd:alloc struct firmware failed");
        v3 = -12;
      }
    }
    else if ( v6 )
    {
      v14 = *(int (__fastcall **)(struct ztp_device *, char *, int))(v4 + 0xe18);
      if ( v14 )
      {
        v14((struct ztp_device *)v4, NULL, 0);
        v6 = *(_QWORD *)(v4 + 0xc58);
      }
      if ( *(_QWORD *)(v6 + 8) )
      {
        vfree(*(_QWORD *)(v6 + 8));
        *(_QWORD *)(*(_QWORD *)(v4 + 0xc58) + 8LL) = 0;
        v6 = *(_QWORD *)(v4 + 0xc58);
      }
      kfree(v6);
      *(_QWORD *)(v4 + 0xc58) = 0;
      *(_DWORD *)(v4 + 0x448) = 0;
    }
    mutex_unlock(v4 + 0xc60);
  }
  return v3;
}
