int tpd_test_cmd_store(struct ztp_device *cdev)
{
  unsigned long a1 = (unsigned long)cdev;
  __int64 v3; // x19
  int v5; // w20
  const char *v6; // x0

  v3 = *(_QWORD *)(a1 + 0xdb8);
  if ( *(_DWORD *)(v3 + 0x57c) == 1 )
  {
    printk(unk_34878, "tpd_test_cmd_store");
    v5 = syna_testing_pt01_zte((struct syna_tcm *)v3);
    if ( v5 < 0 )
    {
      v6 = unk_3458E;
    }
    else
    {
      v5 = syna_testing_pt05_zte((struct syna_tcm *)v3);
      if ( v5 < 0 )
      {
        v6 = unk_3C89A;
      }
      else
      {
        v5 = syna_testing_pt0a_zte((struct syna_tcm *)v3);
        if ( v5 >= 0 )
          goto LABEL_6;
        v6 = unk_3A6C6;
      }
    }
  }
  else
  {
    v5 = 0;
    v6 = unk_3B5E0;
  }
  printk(v6, "tpd_test_cmd_store");
LABEL_6:
  syna_spi_hw_reset(*(struct syna_hw_interface **)(v3 + 0x270));
  printk(unk_38B8E, "tpd_test_cmd_store");
  return v5;
}
