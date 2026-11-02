# Pre-candidate evidence: `vibrator_timer_func`

Stock target: `vibrator_timer_func@001096b4`, 52 bytes, KCFI type `0xe3cff753`.

The stock decompilation shows one unconditional 32-bit clear, one `queue_work_on(32, ...)`, and a zero return. `vibrator_init` registers the function as the callback for the hrtimer at `parent+0x330`; `vibrator_work_routine` independently confirms the work item at `parent+0x428` and state at `parent+0x40`. The callback signature is reconstructed as `enum hrtimer_restart(struct hrtimer *)`; the candidate KCFI gate is the deciding ABI check.

`aw_remove` cancels the embedded work item before canceling this hrtimer. That observed ordering is recorded as a separate lifetime concern and is not changed by this reconstruction.

The packet records the identity, call signature, state effects, control flow, L3 review, an unexecuted oracle draft, lock/lifetime contract, and bus/register ledger. Static validation is pending.
