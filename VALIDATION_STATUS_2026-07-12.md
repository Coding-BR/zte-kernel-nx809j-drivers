# Validation status

The repository now contains the clean reconstructed-driver export from the local engineering workspace.

Six drivers have static gates 0-7 completed: `zte_ir`, `zte_imem_info`, `zte_stats_info`, `zte_ramdisk_reboot`, `zte_misc` and `zte_reboot_ext`. `zte_sensor_sensitivity` has matching KMI, KCFI and Ghidra surfaces but still needs its host behavior harness. The other five directories are legacy artifacts and are not claimed as reconstructed.

Gates 8, 9 and 10 remain incomplete for every driver: independent review, supervised hardware validation and final promotion. The previous dynamic-load report was not used as proof because it lacked hash-backed evidence and contradicted the current cycle validator.

See `reverse_engineering/validation/reconstructed/<driver>/` for the evidence copied from the local workspace.
