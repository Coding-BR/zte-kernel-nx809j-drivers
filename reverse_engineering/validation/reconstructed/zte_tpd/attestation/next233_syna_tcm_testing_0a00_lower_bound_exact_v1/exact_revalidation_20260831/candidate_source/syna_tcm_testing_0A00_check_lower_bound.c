bool __fastcall syna_tcm_testing_0A00_check_lower_bound(void *data,
                                                       void *limit,
                                                       int column,
                                                       int row)
{
  __int16 *a1 = data;
  __int16 *a2 = limit;
  int v4; // w19
  int v5; // w20

  v4 = *a1;
  v5 = *a2;
  if ( v4 < v5 )
    printk(unk_34372, "syna_tcm_testing_0A00_check_lower_bound",
           (unsigned int)row, (unsigned int)column, v4, v5);
  return v4 >= v5;
}
