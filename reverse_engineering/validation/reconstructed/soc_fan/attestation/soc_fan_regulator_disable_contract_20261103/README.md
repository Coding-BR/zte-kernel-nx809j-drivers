# soc_fan regulator disable contract review

This supplemental static review reopens the regulator teardown limitation against the current NX809J kernel source and stock Ghidra evidence. The candidate source and module still match the curated Docker snapshot (`b17527a9…` and `65ee4afb…`), and the prior canonical Docker report records two reproducible build cycles.

The target kernel's `regulator_disable()` error is ambiguous to a consumer: it may return before dropping the handle count, or later after that count has already been decremented. A forced disable can interrupt other consumers. The existing bounded teardown loop is retained; no generic driver-side retry or force-disable change is justified. The target source tree contains one `soc,fan` node in the qwjujube overlay, but source presence alone does not prove runtime overlay selection.

The reconstruction map remains `candidate_hardening_deviation` / `NOT_ESTABLISHED_HARDENED_DEVIATION`; this does not claim `static_verified`, runtime behavior, or hardware validation.