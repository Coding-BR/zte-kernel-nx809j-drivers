bool __fastcall syna_tcm_testing_0500_check_upper_bound(
        void *data,
        void *limit,
        int column,
        int row)
{
  unsigned __int16 *a1 = data;
  unsigned __int16 *a2 = limit;
  unsigned int v4; // w19
  unsigned int v5; // w20

  v4 = *a1;
  v5 = *a2;
  if ( v4 > v5 )
    printk(unk_3C643, "syna_tcm_testing_0500_check_upper_bound",
           (unsigned int)row, (unsigned int)column, v4, v5);
  return v4 <= v5;
}
