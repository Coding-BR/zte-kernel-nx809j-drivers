# Target kernel API evidence

The following source was read from the canonical source volume `nubia_sm8850_kernel_src_nx809j_oout_20261030` inside `nubia-sm8850-kernel-builder:latest`.

- Kernel source revision: `3356b35306d35d5a480e3b63df1a9f065b5d9f55`
- `kernel/workqueue.c` SHA-256: `192be8175ff7fed8445758f98a18fc67e88245801ee75f84378af82fda3dd46e`
- `drivers/char/misc.c` SHA-256: `0e6017b294d6dbd395c383de3d17a9171ef898de65fc52bbc98e883295b4922a`
- `kernel/module/main.c` SHA-256: `59ac8a6ba1bedda5311205a834a4210d2f4f37f37d67afac8f872f5b1a5f3354`
- Target `Module.symvers` SHA-256: `28083216e6811ec80cee75c23da0c33168eb1206e008cd2cc469fe4592f0ac83`

## Delayed work with a null queue

At `kernel/workqueue.c:2497`, `__queue_delayed_work` contains:

```c
WARN_ON_ONCE(!wq);
...
dwork->wq = wq;
dwork->cpu = cpu;
timer->expires = jiffies + delay;
...
add_timer_on(timer, cpu); /* or add_timer_global(timer) */
```

The timer callback later calls `__queue_work(dwork->cpu, dwork->wq, &dwork->work)`. The warning alone does not establish a specific crash; the relevant static fact is that the null queue is retained and used by the later callback. The candidate prevents this path by failing initialization when `alloc_workqueue` returns null.

## Misc-device registration failure

At `drivers/char/misc.c:225`, `misc_register` returns errors for minor allocation or `device_create_with_groups`. On device creation failure it frees the allocated minor and returns before adding the device to `misc_list`. On success it adds the device and returns zero. The candidate's helper propagates that return value and releases its separately allocated name on failure.

## Workqueue cleanup import

The target `Module.symvers` entry is:

```text
0xc3325950  destroy_workqueue  vmlinux  EXPORT_SYMBOL_GPL
```

The module is GPL v2. The canonical Docker `MODPOST` resolved this exact target symbol and generated a loadable AArch64 relocatable module. The import is a deliberate, documented difference from stock and is the sole remaining strict import-set mismatch.

## Unload policy check

At `kernel/module/main.c:781`, the target rejects ordinary unload when `mod->init` exists but `mod->exit` does not, unless force-unload is requested. No `module_exit` was added in this failure-unwind batch, so the stock unload policy is unchanged.