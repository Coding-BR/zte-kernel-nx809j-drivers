void syna_tcm_clear_command_processing(struct tcm_dev *tcm)
{
  tcm_lifecycle_fn terminate;

  if ( !tcm )
    return;

  terminate = tcm->terminate;
  if ( !terminate )
    return;

  if ( *(_DWORD *)((char *)terminate - 4) != -1686231200 )
    __break(0x8228u);
  terminate(tcm);
}
