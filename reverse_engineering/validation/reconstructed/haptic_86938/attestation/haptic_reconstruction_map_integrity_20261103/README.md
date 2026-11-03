# Haptic reconstruction map integrity repair — 2026-11-03

The tracked `reconstruction_map.json` contained one trailing comma in the evidence array for `aw8693x_get_vbat` (line 291 before the repair). Strict parsing failed at line 292, so tools that load the map with Python's standard `json` module could not consume it. No mapping data or driver source was changed.

The comma was removed and the corrected map was copied to the canonical Docker curated snapshot. Both copies parse as strict JSON and contain 160 function mappings. Their SHA-256 is `c070a4e9f5292f9b42cbd049de188428695a71dc5a2455afdc1dd5d94f4f22d7`.

The repository and curated candidate module remain byte-identical at SHA-256 `7e99600da7ce2a265ada7f25bbcb0157ddaf310b66a0523333058ffaab99f3e8` (6,720,000 bytes). Only reconstruction metadata changed, so a kernel rebuild was not applicable. This repair restores strict parser compatibility; it does not alter or promote the driver's reconstruction status.

Machine-readable hashes and validation scope are in `map_integrity_repair.json`.
