# soc_fan managed GPIO/IRQ lifetime review

This review follows probe success and failure through the NX809J target kernel's device-managed resource teardown. It binds the exact candidate source/module and stock module, plus hashes for the target kernel implementation files inspected inside the canonical Docker source volume.

The context/state allocations are zero-initialized before timer setup. GPIO is registered as a managed resource before the managed IRQ. The target kernel releases devres entries in reverse acquisition order; the IRQ release calls `free_irq`, which synchronizes active handlers before returning. Probe-failure and detach paths both reach devres cleanup. The `dev_id` context and its state stay allocated through IRQ drain. No use-after-free or cancellation of an uninitialized hrtimer was demonstrated.

No source change or status promotion is justified. The existing two-cycle Docker report is still bound to the unchanged source/module; this documentation-only review did not rebuild. Runtime IRQ stress and hardware behavior remain unverified.
