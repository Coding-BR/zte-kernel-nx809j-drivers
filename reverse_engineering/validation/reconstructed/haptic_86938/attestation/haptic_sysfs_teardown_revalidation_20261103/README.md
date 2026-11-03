# Haptic sysfs and Richtap teardown revalidation

## Result

For candidate SHA-256 `116f401d4f5d708f93d4c9cce26f516d1e0c0ac4a37c44aace2b0d6d453da051`, the previously reported sysfs callback and Richtap ioctl requeue windows are **statically closed by the current teardown ordering**. This is a scope-limited source review; it does not establish runtime or hardware behavior and does not complete the driver reconstruction.

## Evidence chain

The candidate is the same `116f401d4f5d708f93d4c9cce26f516d1e0c0ac4a37c44aace2b0d6d453da051` module in the repository and canonical Docker output. Two clean Docker builds in the NX809J environment produced this identical hash. No reconstruction source changed during this review, so a rebuild was unnecessary. The pinned kernel source is commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`, target release `6.12.23-android16-5-gf1bdb13583da-ab13761046-4k`.

The stock-derived `vibrator_init` and `aw8693x_creat_node` attach both sysfs groups to the LED child device kobject at state `+0xf8`. `aw_remove` first closes file-operation admission through `haptic_lifetime_block_file_access`, then unregisters the LED child before work cancellation or state release. That helper marks the sidecar as dying, deregisters the misc device, and waits for active file operations. The ioctl wrapper counts each admitted operation and rejects later ioctls from already-open descriptors.

The pinned target kernel implements `led_classdev_unregister` by flushing LED brightness work and calling `device_unregister`. `device_del` removes the kobject, sysfs removal reaches `kernfs_remove`, and kernfs deactivates the subtree and waits for active operations. Thus callbacks already executing in either sysfs group drain before `aw_remove` proceeds to cancel and free their state; the removal also prevents new sysfs callbacks from starting.

The prior stock-based reports remain useful as evidence of the original teardown hazard. This revalidation applies to the current candidate hash and supersedes their open-risk disposition for these two paths.

## Limits

No runtime unbind, concurrent sysfs/ioctl stress, lockdep, KCSAN, or NX809J hardware test was performed. Independent review remains pending, and the full `haptic_86938` driver remains incomplete. Machine-readable hashes and evidence paths are in [sysfs_teardown_revalidation.json](sysfs_teardown_revalidation.json).