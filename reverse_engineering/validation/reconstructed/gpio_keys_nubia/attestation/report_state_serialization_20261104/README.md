# gpio_keys_nubia global report-state serialization

Date: 2026-11-04. This static hardening candidate addresses the global
`nb_key_is_need_report.stat_rec` race identified in
`lifetime_sync_risk_audit_20261103/`.

## Result

The canonical Docker validator completed two clean builds with identical
`gpio_keys_nubia.ko` SHA-256
`8ce42c5e81d2b472db89c69a137a8d54bfca01e90dc34f3b3dfd3346fdcf56f8`
(240,272 bytes). Build, target KMI/imports, runtime section content/layout,
modinfo, and map gates passed (`static_verified`). No hardware test ran.

Fresh AArch64 comparison checked all 24 stock identities: 23 remain exact and
the public `gpio_keys_gpio_report_event` entry is the one intentional
hardening deviation. The renamed helper preserves the stock reporter body and
passes a separate strict body comparison (404 bytes, 101 instructions). The
new C wrapper is 68 bytes. The open and worker call sites now have explicit
relocations to that wrapper; resume already used relocations. The candidate
has 25 text functions because of the additional helper.

KCFI matches for `gpio_keys_open`, `gpio_keys_gpio_work_func`, and
`gpio_keys_resume` (3/3). The new wrapper has type ID `0xdd3ea6e8`; its four
incoming candidate references are all direct `R_AARCH64_CALL26` calls, so no
indirect callsite guard is involved. This classification does not establish
semantic or hardware equivalence.

## Finding and change

The stock reporter is called from the debounce worker, input open, and resume.
The worker's report mutex is per button, so it does not serialize the global
state cache against open/resume or against another button. The public
`gpio_keys_gpio_report_event()` entry now takes one module-wide mutex and calls
the preserved stock assembly body, then releases the mutex. Static call-site
review found these calls in sleepable work or process/PM paths, so a mutex is
appropriate. The lock does not change `struct gpio_button_data` layout. The
open and worker assembly call sites originally used fixed branch immediates;
the first candidate assembly check caught that they bypassed the wrapper after
the reporter symbol moved. Both call sites now use explicit
`R_AARCH64_CALL26` relocations to the serialized public entry.

The old function-level exact promotion remains preserved as historical
evidence. The current public entry is a declared hardening deviation and is not
claimed stock-exact. The renamed assembly body retains the stock reporter
instructions and relocations; the wrapper and its new call relocations are the
intended changes. The first candidate check found fixed branch immediates in
open/worker bypassing the wrapper; those call sites were corrected before the
final builds and comparison.

## Validation

Full results and hash bindings are in `hardening_attestation.json`. The final
Docker report is `docker_validation_final.json`; the fresh stock/candidate
function comparison is `assembly_comparison_final.json`, and the preserved
body check is `assembly_comparison_preserved_body.json`. KCFI and direct-call
evidence are in `kcfi_comparison.json` and `candidate_direct_refs.json`.

The separate `suspended` flag observation in IRQ context and the shutdown
window remain open stock-inherited questions. Independent review and dynamic
NX809J validation remain pending. No module was loaded and no GPIO was
triggered.
