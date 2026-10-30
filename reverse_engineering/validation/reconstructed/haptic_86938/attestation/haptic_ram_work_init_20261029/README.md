# Haptic `ram_work_init` reconstruction

Target: stock `ram_work_init@0010887c`, 120 bytes. The routine initializes the
embedded delayed-work object at offset `0x3c0`, binds `ram_work_routine`, sets
up its timer through `INIT_DELAYED_WORK`, then queues it on CPU `0x20` with a
delay of 2000 jiffies. The call graph shows a direct call from `aw_i2c_probe`.

KCFI is not required: the stock entry has no valid type preamble. The nearby
scanner overlap belongs to `haptic_init`, not this function. This target is
under static validation; scheduling and lifetime behavior have not been tested
on hardware.

## Validation checkpoint

The source file existed in the reconstruction tree but was not included in the module `Makefile`, and the map left its `source_file` empty. I added the object to the build and bound this map entry to the existing source.

The pinned Docker image compiled the isolated object twice from clean state. Both outputs were 10,488 bytes with SHA-256 `d9a723d9eea43064ff516eb270e1f744cf2a59defd8febd35853dc0e499a8d7b`. The stock/object comparison passed all 30 instructions, the 120-byte function size, section, and relocation checks. The strict Joern scoped-source gate and `usages` slice also passed.

The first full module build did not pass: Kbuild reached modpost and reported the then-missing local symbol `ram_work_routine`. That helper has since been reconstructed and its object matches stock, but the updated full module build now stops at the next missing local callback, `ram_load`. The object-level result therefore does not establish a linkable module or whole-driver equivalence. This function remains `candidate_under_static_validation`; promotion is not authorized.

Evidence is in `object_validation_v1/` and the failed module audit is preserved in `docker_preflight_v1/driver_audit.json` and `.md`.
