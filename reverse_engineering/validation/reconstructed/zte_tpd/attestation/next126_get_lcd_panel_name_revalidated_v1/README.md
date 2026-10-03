# Next126: `get_lcd_panel_name`

`010_get_lcd_panel_name` is `PASS_OFFLINE_EXACT`: it returns the immutable
`Unknown_lcd` literal through the exact 12-byte, three-instruction AArch64 body.
Build, KCFI, Joern and a two-cycle ASan/UBSan harness passed. No physical NX809J
test was performed.
