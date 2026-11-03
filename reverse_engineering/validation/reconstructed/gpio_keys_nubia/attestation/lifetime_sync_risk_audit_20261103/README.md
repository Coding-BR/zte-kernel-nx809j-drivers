# gpio_keys_nubia — static lifetime and synchronization review

Date: 2026-11-03. This second-pass static audit is bound to candidate SHA-256 `95e2b7d8352c3039e154f56f32da8f45e3a513b3706d3ebcb2269886424f14cc` and stock SHA-256 `8cb89f5068195396a5db5fba1c51f2cf6056884dbb00f7ee8af5041ccd6f32b3`.

## Result

The detach and probe-error resource order is statically sound on the pinned target kernel: managed IRQ release synchronizes in-flight handlers, then the registered quiesce action drains the timer or delayed work, while the managed input device remains alive until later in devres unwind. No use-after-free in this teardown chain was identified.

Two stock-inherited synchronization risks remain open. The event reporter shares a global state cache across call paths that do not share one lock, and the suspend flag is read in IRQ context while PM code writes it without a common lock. Neither race was reproduced. The platform shutdown callback also calls suspend without draining asynchronous sources; this is a shutdown-window observation, not a detach use-after-free finding.

## Evidence binding

- The current candidate, source file and reconstruction map match the canonical Docker curated snapshot by SHA-256.
- The tracked current-candidate assembly review compares 24/24 stock identities, including instructions, relocations, sections and symbol sizes. The full comparison and manifests are hash-bound in `current_candidate_assembly_review_20261102/`.
- The existing canonical Docker audit records two clean reproducible builds and `static_verified`. No source changed in this audit, so no new build was needed.
- Target-kernel lifecycle APIs were read from the pinned Docker source commit `3356b35306d35d5a480e3b63df1a9f065b5d9f55`.
- Stock Ghidra decompilation, P-Code and AArch64 assembly were reviewed for probe, open, close, GPIO work/IRQ, IRQ-only timer/IRQ, quiesce, suspend, resume and shutdown.

## Teardown order

The stock probe allocates the managed input device before setting up button resources. For each button, it initializes the selected timer or delayed work, registers `gpio_keys_quiesce_key` as a devm action, and then requests the main and optional wake IRQs. On detach or probe unwind, the pinned kernel releases devres in reverse order. The IRQ actions therefore run before the quiesce action; `free_irq()` synchronizes active handlers. Quiesce then calls `cancel_delayed_work_sync()` for GPIO-backed buttons or `timer_delete_sync()` for IRQ-only buttons. GPIO resources and the input device are released later. Device sysfs groups are removed before devres teardown.

The GPIO work function uses a per-button report mutex. The IRQ-only ISR and timer use the same per-button spinlock around the pressed-state/timer path. These protections, combined with the teardown order, cover the principal asynchronous lifetime paths in the inspected stock code.

## Open findings

1. `gpio_keys_gpio_report_event` reads and writes the stock global `nb_key_is_need_report.stat_rec` when the secondary GPIO path is active (`gpion >= 0`). It is called by the delayed worker, `gpio_keys_open` and `gpio_keys_resume`. The worker holds a mutex embedded in that button, while the other callers do not take that same per-button mutex; separate buttons also have separate mutexes. Concurrent state checks can therefore race and suppress or duplicate an event transition. This is a conditional, stock-inherited risk; the active NX809J key population and runtime effect were not established here.
2. `gpio_keys_gpio_isr` reads the per-button `suspended` byte in IRQ context. Suspend and resume write it in PM context without a shared lock or an explicit one-copy/barrier pair in the stock body. A stale observation could affect the immediate wake-event path during a transition. This is not evidence of torn-byte access or a reproduced failure.
3. `gpio_keys_shutdown` delegates to suspend but does not itself drain the timer or work item. The device remains allocated during the shutdown callback, so this does not contradict the safe devres detach order; pending asynchronous activity during the interval before poweroff remains unmeasured.

## Status

The driver remains `STAGE5_STATIC_PARTIAL` and **INCOMPLETE**. The assembly comparison does not prove C-level equivalence. Distinct independent review, security review and GPIO hardware validation remain open. No module was loaded, no GPIO was triggered, and no source or binary was changed in this review.
