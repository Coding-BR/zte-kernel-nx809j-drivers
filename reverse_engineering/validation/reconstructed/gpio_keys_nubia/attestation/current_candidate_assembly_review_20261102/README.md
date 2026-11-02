# gpio_keys_nubia current candidate assembly review

Date: 2026-11-02. Current candidate SHA-256: `95e2b7d8352c3039e154f56f32da8f45e3a513b3706d3ebcb2269886424f14cc`; stock SHA-256: `8cb89f5068195396a5db5fba1c51f2cf6056884dbb00f7ee8af5041ccd6f32b3`.

Fresh extraction and comparison passes all 24 mapped functions in instructions, relocations, sections and sizes. The current candidate matches the repository and Docker snapshot; the map and two extraction manifests bind the same stock/candidate pair. The canonical Docker audit records two reproducible builds and `static_verified`.

The driver remains **INCOMPLETE** despite exact function bodies: C-level semantics, a distinct human review, security review and hardware validation remain open.
