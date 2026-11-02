__int64 __fastcall ghost_check_area(__int64 point)
{
  unsigned int mode;
  int edge_area;
  unsigned short y;
  unsigned short max_x;
  unsigned int x;
  const char *log;

  mode = *(_DWORD *)(tpd_cdev + 16);
  x = *(unsigned __int16 *)(point + 24);
  if ((mode | 2U) == 3U) {
    y = *(unsigned __int16 *)(point + 28);
    edge_area = *(_DWORD *)(tpd_cdev + 1180);
    if (edge_area <= (int)y &&
        (int)y <= (int)(unsigned int)(*(unsigned __int16 *)(tpd_cdev + 1092) - edge_area) &&
        edge_area <= (int)x) {
      max_x = *(unsigned __int16 *)(tpd_cdev + 1090);
      if ((int)x <= (int)(unsigned int)(max_x - edge_area))
        goto check_corner;
    }
    goto edge_ignore;
  }

  edge_area = *(_DWORD *)(tpd_cdev + 1180);
  if (edge_area > (int)x)
    goto edge_ignore;
  max_x = *(unsigned __int16 *)(tpd_cdev + 1090);
  if ((int)x > (int)(unsigned int)(max_x - edge_area))
    goto edge_ignore;
  y = *(unsigned __int16 *)(point + 28);
  goto check_corner;

edge_ignore:
  log = "\0015tpd: in ghost ignore edge area";
  goto print_ignore;

check_corner:
  if ((int)mode < 2) {
    if (mode != 0U) {
      if (mode != 1U)
        return 1;
      goto check_horizontal_corner;
    }
    if ((int)y <=
        (int)(unsigned int)(*(unsigned __int16 *)(tpd_cdev + 1092) - *(_DWORD *)(tpd_cdev + 1188)))
      return 1;
    goto check_vertical_corner;
  }

  if (mode == 2U) {
    if ((int)*(_DWORD *)(tpd_cdev + 1188) <= (int)y)
      return 1;
    goto check_vertical_corner;
  }
  if (mode != 3U)
    return 1;

check_horizontal_corner:
  if ((int)*(_DWORD *)(tpd_cdev + 1188) <= (int)x &&
      (int)x <= (int)(unsigned int)(max_x - *(_DWORD *)(tpd_cdev + 1188))) {
    if ((int)*(_DWORD *)(tpd_cdev + 1184) <= (int)y &&
        (int)y <= (int)(unsigned int)(*(unsigned __int16 *)(tpd_cdev + 1092) -
                                      *(_DWORD *)(tpd_cdev + 1184)))
      return 1;
  }
  log = "\0015tpd: in ghost_ignore_corner_area";
  goto print_ignore;

check_vertical_corner:
  if ((int)*(_DWORD *)(tpd_cdev + 1184) <= (int)x &&
      (int)x <= (int)(unsigned int)(max_x - *(_DWORD *)(tpd_cdev + 1184)))
    return 1;
  log = "\0015tpd: in ghost_ignore_corner_area";

print_ignore:
  printk(log);
  return 0;
}
